package club.cato.app_blocker.service

import android.content.Context
import android.content.Intent
import android.os.Build
import android.util.Log
import androidx.core.content.ContextCompat
import club.cato.app_blocker.service.utils.PrefManager
import java.lang.Exception


object ServiceStarter {

    fun startService(context: Context) {

        if(!PrefManager.isAppBlockerEnabled(context)) return

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            ContextCompat.startForegroundService(context, Intent(context, AppBlockerService::class.java))
        } else {
            context.startService(Intent(context, AppBlockerService::class.java))
        }
    }

    fun stopService(context: Context) {
        try {
            context.stopService(Intent(context, AppBlockerService::class.java))
        } catch (e: Exception) {
            Log.e("Appblocker", e.message, e)
        }
    }
}