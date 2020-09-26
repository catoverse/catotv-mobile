package club.cato.app_blocker.service.utils

import android.app.AppOpsManager
import android.content.Context
import android.content.pm.PackageManager.NameNotFoundException
import android.os.Build
import android.os.PowerManager
import android.provider.Settings
import java.lang.Exception

object PermissionChecker {

    fun checkUsageAccessPermission(context: Context): Boolean {
        if (Build.VERSION.SDK_INT <= Build.VERSION_CODES.KITKAT) {
            return true
        }

        return try {
            val packageManager = context.packageManager
            val applicationInfo = packageManager.getApplicationInfo(context.packageName, 0)
            val appOpsManager = context.getSystemService(Context.APP_OPS_SERVICE) as AppOpsManager
            var mode = 0

            mode = appOpsManager.checkOpNoThrow(
                AppOpsManager.OPSTR_GET_USAGE_STATS,
                applicationInfo.uid, applicationInfo.packageName
            )
            mode == AppOpsManager.MODE_ALLOWED

        } catch (e: NameNotFoundException) {
            false
        }

    }

    fun checkBatteryOptimizationPermission(context: Context): Boolean {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.M) return true
        return try {
            val manager = context.getSystemService(Context.POWER_SERVICE) as PowerManager
            manager.isIgnoringBatteryOptimizations(context.packageName)
        } catch (e: Exception) {
            false
        }
    }
}