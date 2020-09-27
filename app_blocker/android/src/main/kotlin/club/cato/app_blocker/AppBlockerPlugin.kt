package club.cato.app_blocker

import android.app.Activity
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.net.Uri
import android.os.Build
import android.provider.Settings
import android.util.Log
import androidx.annotation.NonNull
import androidx.localbroadcastmanager.content.LocalBroadcastManager
import club.cato.app_blocker.service.AppBlockerService
import club.cato.app_blocker.service.ServiceStarter
import club.cato.app_blocker.service.utils.PermissionChecker
import club.cato.app_blocker.service.utils.PrefManager
import club.cato.app_blocker.service.worker.WorkerStarter
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry
import io.flutter.plugin.common.PluginRegistry.Registrar


/** AppBlockerPlugin */
class AppBlockerPlugin: BroadcastReceiver(), MethodCallHandler, FlutterPlugin, ActivityAware, PluginRegistry.NewIntentListener {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel
  private lateinit var applicationContext: Context

  private fun onAttachedToEngine(context: Context, binaryMessenger: BinaryMessenger) {
    applicationContext = context
    channel = MethodChannel(binaryMessenger, "club.cato/app_blocker")
    channel.setMethodCallHandler(this)

    val backgroundCallbackChannel = MethodChannel(binaryMessenger, "club.cato/app_blocker_background")
    backgroundCallbackChannel.setMethodCallHandler(this)
    AppBlockerService.setBackgroundChannel(backgroundCallbackChannel)

    val intentFilter = IntentFilter()
    intentFilter.addAction(APP_BLOCKED_EVENT)
    val manager = LocalBroadcastManager.getInstance(applicationContext)
    manager.registerReceiver(this, intentFilter)
  }

  override fun onAttachedToEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    onAttachedToEngine(binding.applicationContext, binding.binaryMessenger);
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    // unregister any resource held here like LocalBroadcastReceiver
    LocalBroadcastManager.getInstance(binding.applicationContext).unregisterReceiver(this)
  }

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    binding.addOnNewIntentListener(this)
    mainActivity = binding.activity
  }

  override fun onDetachedFromActivityForConfigChanges() {
    mainActivity = null
  }

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    binding.addOnNewIntentListener(this)
    mainActivity = binding.activity
  }

  override fun onDetachedFromActivity() {
    mainActivity = null
  }


  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    if("AppBlockerService#start" == call.method) {
      var setupCallbackHandle: Long = 0
      var backgroundMessageHandle: Long = 0;
      try {
        val callbacks = call.arguments as Map<String, Long>
        setupCallbackHandle = callbacks["setupHandle"] ?: 0
        backgroundMessageHandle = callbacks["backgroundHandle"] ?: 0
      } catch (e: Exception) {
        e.printStackTrace()
      }
      AppBlockerService.setBackgroundSetupHandle(mainActivity!!, setupCallbackHandle)
      AppBlockerService.startBackgroundIsolate(mainActivity!!, setupCallbackHandle)
      AppBlockerService.setBackgroundMessageHandle(mainActivity!!, backgroundMessageHandle)
      result.success(true)

    } else if("AppBlockerService#initialized" == call.method) {
      AppBlockerService.onInitialized()
      result.success(true)
    } else if("configure" == call.method) {
      // Start services
      restartAppBlocker()
      result.success(true)
    }else if("enableAppBlocker" == call.method) {
      result.success(enableAppBlocker())
    } else if("disableAppBlocker" == call.method) {
      result.success(disableAppBlocker())
    } else if("setTime" == call.method) {
      val startTime = call.argument<String>("startTime")
      val endTime = call.argument<String>("endTime")
      if(startTime == null || endTime == null) {
        result.success(false);
      } else {
        result.success(setRestrictionTime(startTime, endTime))
      }
    } else if("getTime" == call.method) {
      val time = PrefManager.getRestrictionTime(applicationContext);
      result.success(mapOf(
        "startTime" to time.first,
        "endTime" to time.second
      ))
    } else if("setWeekDays" == call.method) {
      try {
        val weekdays = call.arguments as List<String>
        result.success(setRestrictionWeekDays(weekdays))
      } catch (e: Exception) {
        result.success(false)
      }
    } else if("getWeekDays" == call.method) {
        val weekDays = PrefManager.getRestrictionWeekDays(applicationContext).map { e -> try { e.toInt() } catch (ex: Exception) { -1 } }.toMutableList()
        weekDays.removeAll { e -> e == -1 }
        result.success(weekDays)
    } else if("updateBlockedPackages" == call.method) {
      try {
        val packages = call.arguments as List<String>
        result.success(updateBlockedPackages(packages))
      } catch (e: Exception) {
        result.success(false)
      }
    } else if("getBlockedPackages" == call.method) {
      result.success(getBlockedPackages())
    } else if("bringAppToForeground" == call.method) {
      val intent = getLauncherIntentFromAppContext(applicationContext)
      intent?.let {
        it.addFlags(Intent.FLAG_ACTIVITY_REORDER_TO_FRONT)
        applicationContext.startActivity(it)
      }
      result.success(null)
    } else if("isAppUsagePermissionGranted" == call.method) {
      result.success(PermissionChecker.checkUsageAccessPermission(applicationContext))
    } else if ("openAppUsageSettings" == call.method) {
      val intent = Intent()
      intent.action = Settings.ACTION_USAGE_ACCESS_SETTINGS
      try {
        mainActivity?.startActivity(intent)
      } catch (e: Exception) {
        e.printStackTrace()
      }
      result.success(null)
    } else if("isBatteryOptimizationBypass" == call.method) {
      result.success(PermissionChecker.checkBatteryOptimizationPermission(applicationContext))
    } else if("openBatteryOptimization" == call.method) {
      if (Build.VERSION.SDK_INT < Build.VERSION_CODES.M) {
        result.success(null)
        return
      }
      val intent = Intent()
      intent.action = Settings.ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS
      intent.data = Uri.fromParts("package", applicationContext.packageName, null)
      try {
        mainActivity?.startActivity(intent)
      } catch (e: Exception) {
        e.printStackTrace()
      }
      result.success(null)
    } else if("isEnabled" == call.method) {
      result.success(PrefManager.isAppBlockerEnabled(applicationContext));
    } else if("isOverlayPermissionGranted" == call.method) {
      if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
        result.success(Settings.canDrawOverlays(applicationContext))
      } else {
        result.success(true)
      }
    } else if("requestOverlayPermission" == call.method) {
      if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
        val intent = Intent()
        intent.action = Settings.ACTION_MANAGE_OVERLAY_PERMISSION
        if(Build.VERSION.SDK_INT < 30) {
          intent.data = Uri.fromParts("package", applicationContext.packageName, null)
        }
        try {
          mainActivity?.startActivity(intent)
        } catch (e: Exception) {
          e.printStackTrace()
        }
      }
    } else {
      result.notImplemented()
    }
  }

  override fun onReceive(context: Context, intent: Intent) {
//    Log.d("🙏", "message captured")
    sendMessageFromIntent("onResume", intent)
  }

  override fun onNewIntent(intent: Intent): Boolean {
    val res: Boolean = sendMessageFromIntent("onResume", intent)
    if (res && mainActivity != null) {
      mainActivity!!.intent = intent
    }
    return res
  }

  private fun sendMessageFromIntent(method: String, intent: Intent): Boolean {
    if (APP_BLOCKED_EVENT.equals(intent.action)
            || APP_BLOCKED_EVENT.equals(intent.getStringExtra("app_blocked_event"))) {
      val blockedAppPackage = intent.extras?.getString(APP_BLOCKED_VALUE) ?: return false
      channel.invokeMethod(method, blockedAppPackage)
//      Log.d("🙏", "captured message sent")
      return true
    }
//    Log.d("🙏", "captured message failed")
    return false
  }

  private fun disableAppBlocker(): Boolean {
    if(!::applicationContext.isInitialized) return false
    PrefManager.setAppBlockEnabled(applicationContext, false)
    WorkerStarter.stopServiceCheckerWorker()
    ServiceStarter.stopService(applicationContext)
    return true
  }

  private fun enableAppBlocker(): Boolean {
    if(!::applicationContext.isInitialized) return false
//    Log.d("🙏", "AppBlocker State Passed")
    PrefManager.setAppBlockEnabled(applicationContext, true)
    ServiceStarter.startService(applicationContext)
    WorkerStarter.startServiceCheckerWorker()
    return true
  }

  private fun setRestrictionTime(startTime: String, endTime: String): Boolean {
    if(!::applicationContext.isInitialized) return false
    PrefManager.setRestrictionTime(applicationContext, startTime, endTime)
    restartAppBlocker()
    return true
  }

  private fun setRestrictionWeekDays(weekDays: List<String>): Boolean {
    if(!::applicationContext.isInitialized) return false
    PrefManager.setRestrictionWeekDays(applicationContext, weekDays)
    restartAppBlocker()
    return true
  }

  private fun updateBlockedPackages(packages: List<String>): Boolean {
    if(!::applicationContext.isInitialized) return false

    PrefManager.updateBlockedPackages(applicationContext, packages)
    restartAppBlocker()
    return true
  }

  private fun getBlockedPackages(): List<String> {
    if(!::applicationContext.isInitialized) return listOf()
    return PrefManager.getAllBlackListedPackages(applicationContext).toList()
  }

  private fun restartAppBlocker() {
    // close first
    ServiceStarter.stopService(applicationContext)
    WorkerStarter.stopServiceCheckerWorker()
    ServiceStarter.startService(applicationContext)
    WorkerStarter.startServiceCheckerWorker()
  }

  companion object {

    const val APP_BLOCKED_EVENT = "app_blocked_event"
    const val APP_BLOCKED_VALUE = "app_blocked_package"
    var mainActivity: Activity? = null

    @JvmStatic
    fun registerWith(registrar: Registrar) {
      val instance = AppBlockerPlugin()
      mainActivity = registrar.activity()
      registrar.addNewIntentListener(instance)
      instance.onAttachedToEngine(registrar.context(), registrar.messenger())
    }

    fun getLauncherIntentFromAppContext(context: Context): Intent? {

      val appPackage = context.applicationContext.packageName
      return context.packageManager.getLaunchIntentForPackage(appPackage)
    }
  }
}
