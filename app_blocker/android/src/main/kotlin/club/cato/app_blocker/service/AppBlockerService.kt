package club.cato.app_blocker.service

import android.app.ActivityManager
import android.app.ActivityManager.RunningAppProcessInfo
import android.app.KeyguardManager
import android.app.Service
import android.content.*
import android.os.IBinder
import android.os.Process
import android.util.Log
import androidx.core.app.NotificationManagerCompat
import androidx.localbroadcastmanager.content.LocalBroadcastManager
import club.cato.app_blocker.AppBlockerPlugin
import club.cato.app_blocker.service.notification.ServiceNotificationManager
import club.cato.app_blocker.service.observable.AppForegroundObservable
import club.cato.app_blocker.service.observable.PermissionCheckerObservable
import club.cato.app_blocker.service.utils.BlockManager
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.PluginRegistry.PluginRegistrantCallback
import io.flutter.view.FlutterCallbackInformation
import io.flutter.view.FlutterMain
import io.flutter.view.FlutterNativeView
import io.flutter.view.FlutterRunArguments
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.disposables.Disposable
import io.reactivex.schedulers.Schedulers
import java.util.concurrent.atomic.AtomicBoolean


class AppBlockerService : Service() {

    lateinit var serviceNotificationManager: ServiceNotificationManager
    lateinit var appForegroundObservable: AppForegroundObservable
    lateinit var permissionCheckerObservable: PermissionCheckerObservable


    private val allDisposables: CompositeDisposable = CompositeDisposable()
    private var foregroundAppDisposable: Disposable? = null

    private var screenOnOffReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            when (intent?.action) {
                Intent.ACTION_SCREEN_ON -> observeForegroundApplication()
                Intent.ACTION_SCREEN_OFF -> stopForegroundApplicationObserver()
            }
        }
    }

    private var installUninstallReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
        }
    }

    override fun onBind(intent: Intent?): IBinder? {
        return null
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        return START_STICKY
    }

    override fun onCreate() {
        super.onCreate()
        backgroundContext = applicationContext
        FlutterMain.ensureInitializationComplete(backgroundContext, null)

        // If background isolate is not running start it.

        // If background isolate is not running start it.
        if (!isIsolateRunning.get()) {
            val p = backgroundContext.getSharedPreferences(SHARED_PREFERENCES_KEY, 0)
            val callbackHandle: Long = p.getLong(BACKGROUND_SETUP_CALLBACK_HANDLE_KEY, 0)
            startBackgroundIsolate(backgroundContext, callbackHandle)
        }

        permissionCheckerObservable = PermissionCheckerObservable(applicationContext)
        appForegroundObservable = AppForegroundObservable(applicationContext)
        serviceNotificationManager = ServiceNotificationManager(applicationContext)

        initializeAppLockerNotification()

        registerScreenReceiver()

        registerInstallUninstallReceiver()

        observeForegroundApplication()

        observePermissionChecker()
    }

    override fun onDestroy() {
        unregisterScreenReceiver()
        unregisterInstallUninstallReceiver()
        if (allDisposables.isDisposed.not()) {
            allDisposables.dispose()
        }
        ServiceStarter.startService(applicationContext)
        super.onDestroy()
    }

    private fun registerInstallUninstallReceiver() {
        var installUninstallFilter = IntentFilter()
            .apply {
                addAction(Intent.ACTION_PACKAGE_INSTALL)
                addDataScheme("package")
            }

        registerReceiver(installUninstallReceiver, installUninstallFilter)
    }

    private fun unregisterInstallUninstallReceiver() {
        unregisterReceiver(installUninstallReceiver)
    }

    private fun registerScreenReceiver() {
        val screenFilter = IntentFilter()
        screenFilter.addAction(Intent.ACTION_SCREEN_ON)
        screenFilter.addAction(Intent.ACTION_SCREEN_OFF)
        registerReceiver(screenOnOffReceiver, screenFilter)
    }

    private fun unregisterScreenReceiver() {
        unregisterReceiver(screenOnOffReceiver)
    }

    private fun observeForegroundApplication() {
        if (foregroundAppDisposable != null && foregroundAppDisposable?.isDisposed?.not() == true) {
            return
        }

        foregroundAppDisposable = appForegroundObservable
            .get()
            .subscribeOn(Schedulers.io())
            .observeOn(AndroidSchedulers.mainThread())
            .subscribe(
                    { foregroundAppPackage -> onAppForeground(backgroundContext, foregroundAppPackage) },
                    { error -> Log.e("AppBlocker", error.message, error) })
        allDisposables.add(foregroundAppDisposable!!)
    }

    private fun stopForegroundApplicationObserver() {
        if (foregroundAppDisposable != null && foregroundAppDisposable?.isDisposed?.not() == true) {
            foregroundAppDisposable?.dispose()
        }
    }

    private fun observePermissionChecker() {
        allDisposables.add(permissionCheckerObservable
                .get()
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe { isPermissionNeed ->
                    if (isPermissionNeed) {
                        showPermissionNeedNotification()
                    } else {
                        serviceNotificationManager.hidePermissionNotification()
                    }
                })
    }

    private fun initializeAppLockerNotification() {
        AppBlockerPlugin.getLauncherIntentFromAppContext(applicationContext)?.let { intent ->
            val notification = serviceNotificationManager.createNotification(intent)
            NotificationManagerCompat.from(applicationContext)
                    .notify(NOTIFICATION_ID_APPLOCKER_SERVICE, notification)
            startForeground(NOTIFICATION_ID_APPLOCKER_SERVICE, notification)
        }

    }

    private fun showPermissionNeedNotification() {
        AppBlockerPlugin.getLauncherIntentFromAppContext(applicationContext)?.let { intent ->
            val notification = serviceNotificationManager.createPermissionNeedNotification(intent)
            NotificationManagerCompat.from(applicationContext)
                    .notify(NOTIFICATION_ID_APPLOCKER_PERMISSION_NEED, notification)
        }
    }



    companion object {
        private const val NOTIFICATION_ID_APPLOCKER_SERVICE = 1
        private const val NOTIFICATION_ID_APPLOCKER_PERMISSION_NEED = 2
        private const val SHARED_PREFERENCES_KEY = "club.cato.appblocker_background"
        private const val BACKGROUND_SETUP_CALLBACK_HANDLE_KEY = "background_setup_callback"
        private const val BACKGROUND_MESSAGE_CALLBACK_HANDLE_KEY = "background_message_callback"

        private var isIsolateRunning: AtomicBoolean = AtomicBoolean(false)
        /** Background Dart execution context. **/
        private var backgroundFlutterView: FlutterNativeView? = null

        private var backgroundChannel: MethodChannel? = null
        private var backgroundMessageHandle: Long? = null

        private var pluginRegistrantCallback: PluginRegistrantCallback? = null
        const val TAG = "AppBlocker"

        private lateinit var backgroundContext: Context

        private fun onAppForeground(context: Context, foregroundAppPackage: String) {
//            Log.d("🙏", "Service intercepted foreground call $foregroundAppPackage")

            val isBlocked = BlockManager.isBlocked(context, foregroundAppPackage);

            if(!isBlocked) return
            
//            Log.d("🙏", "App Is Blocked")

            if(isApplicationRunning(context)) {
//                Log.d("🙏", "broadcasting message")
                // resume the app
                val intent = Intent(AppBlockerPlugin.APP_BLOCKED_EVENT)
                intent.putExtra(AppBlockerPlugin.APP_BLOCKED_VALUE, foregroundAppPackage)
                LocalBroadcastManager.getInstance(context).sendBroadcast(intent)
            } else {
//                Log.d("🙏", "opening app")

                // start the app
                AppBlockerPlugin.getLauncherIntentFromAppContext(context)?.let { intent ->
                    intent.flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
                    context.startActivity(intent)
                }
            }
        }



        fun startBackgroundIsolate(context: Context?, callbackHandle: Long) {
            FlutterMain.ensureInitializationComplete(context!!, null)
            val appBundlePath: String? = FlutterMain.findAppBundlePath()
            val flutterCallback: FlutterCallbackInformation? = FlutterCallbackInformation.lookupCallbackInformation(callbackHandle)
            if (flutterCallback == null) {
                Log.e(TAG, "Fatal: failed to find callback")
                return
            }

            // Note that we're passing `true` as the second argument to our
            // FlutterNativeView constructor. This specifies the FlutterNativeView
            // as a background view and does not create a drawing surface.
            backgroundFlutterView = FlutterNativeView(context, true)
            if (appBundlePath != null) {
                if (pluginRegistrantCallback == null) {
                    throw RuntimeException("PluginRegistrantCallback is not set.")
                }
                val args = FlutterRunArguments()
                args.bundlePath = appBundlePath
                args.entrypoint = flutterCallback.callbackName
                args.libraryPath = flutterCallback.callbackLibraryPath
                backgroundFlutterView?.runFromBundle(args)
                pluginRegistrantCallback?.registerWith(backgroundFlutterView?.pluginRegistry)
            }
        }

        /**
         * Acknowledge that background message handling on the Dart side is ready. This is called by the
         * Dart side once all background initialization is complete via `FcmDartService#initialized`.
         */
        fun onInitialized() {
            isIsolateRunning.set(true)
        }

        /**
         * Set the method channel that is used for handling background messages. This method is only
         * called when the plugin registers.
         *
         * @param channel Background method channel.
         */
        fun setBackgroundChannel(channel: MethodChannel) {
            backgroundChannel = channel
        }

        /**
         * Set the background message handle for future use. When background messages need to be handled
         * on the Dart side the handler must be retrieved in the background isolate to allow processing of
         * the incoming message. This method is called by the Dart side via `FcmDartService#start`.
         *
         * @param context Registrar context.
         * @param handle Handle representing the Dart side method that will handle background messages.
         */
        fun setBackgroundMessageHandle(context: Context, handle: Long) {
            backgroundMessageHandle = handle

            // Store background message handle in shared preferences so it can be retrieved
            // by other application instances.
            val prefs: SharedPreferences = context.getSharedPreferences(SHARED_PREFERENCES_KEY, 0)
            prefs.edit().putLong(BACKGROUND_MESSAGE_CALLBACK_HANDLE_KEY, handle).apply()
        }

        /**
         * Set the background message setup handle for future use. The Dart side of this plugin has a
         * method that sets up the background method channel. When ready to setup the background channel
         * the Dart side needs to be able to retrieve the setup method. This method is called by the Dart
         * side via `FcmDartService#start`.
         *
         * @param context Registrar context.
         * @param setupBackgroundHandle Handle representing the dart side method that will setup the
         * background method channel.
         */
        fun setBackgroundSetupHandle(context: Context, setupBackgroundHandle: Long) {
            // Store background setup handle in shared preferences so it can be retrieved
            // by other application instances.
            val prefs = context.getSharedPreferences(SHARED_PREFERENCES_KEY, 0)
            prefs.edit().putLong(BACKGROUND_SETUP_CALLBACK_HANDLE_KEY, setupBackgroundHandle).apply()
        }

        /**
         * Retrieve the background message handle. When a background message is received and must be
         * processed on the dart side the handle representing the Dart side handle is retrieved so the
         * appropriate method can be called to process the message on the Dart side. This method is called
         * by FlutterFirebaseMessagingServcie either when a new background message is received or if
         * background messages were queued up while background message handling was being setup.
         *
         * @param context Application context.
         * @return Dart side background message handle.
         */
        fun getBackgroundMessageHandle(context: Context): Long {
            return context
                    .getSharedPreferences(SHARED_PREFERENCES_KEY, 0)
                    .getLong(BACKGROUND_MESSAGE_CALLBACK_HANDLE_KEY, 0)
        }

        /**
         * Set the registrant callback. This is called by the app's Application class if background
         * message handling is enabled.
         *
         * @param callback Application class which implements PluginRegistrantCallback.
         */
        fun setPluginRegistrant(callback: PluginRegistrantCallback) {
            pluginRegistrantCallback = callback
        }

        private fun isApplicationRunning(context: Context): Boolean {
            val keyguardManager = context.getSystemService(KEYGUARD_SERVICE) as KeyguardManager
            if (keyguardManager.isKeyguardLocked) {
                return false
            }

            return AppBlockerPlugin.mainActivity != null
//            val myPid: Int = Process.myPid()
//            val activityManager = context.getSystemService(ACTIVITY_SERVICE) as ActivityManager
//            var list: List<RunningAppProcessInfo>
//            if (activityManager.runningAppProcesses.also { list = it } != null) {
//                for (aList in list) {
//                    var info: RunningAppProcessInfo
//                    if (aList.also { info = it }.pid == myPid) {
//                        Log.d("🙏", "App state is ${info.importance}")
//                        return info.importance == RunningAppProcessInfo.IMPORTANCE_FOREGROUND
//                    }
//                }
//            }
//            return false
        }
    }
}