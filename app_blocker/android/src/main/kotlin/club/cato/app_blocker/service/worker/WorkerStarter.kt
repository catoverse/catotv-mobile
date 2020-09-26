package club.cato.app_blocker.service.worker

import android.util.Log
import androidx.work.ExistingPeriodicWorkPolicy
import androidx.work.PeriodicWorkRequestBuilder
import androidx.work.WorkManager
import java.lang.Exception
import java.util.concurrent.TimeUnit

object WorkerStarter {

    private const val UNIQUE_WORK_SERVICE_CHECKER = "UNIQUE_WORK_SERVICE_CHECKER"

    fun startServiceCheckerWorker() {
         WorkManager.getInstance()
             .enqueueUniquePeriodicWork(
                 UNIQUE_WORK_SERVICE_CHECKER,
                 ExistingPeriodicWorkPolicy.REPLACE,
                 PeriodicWorkRequestBuilder<ServiceCheckerWorker>(16, TimeUnit.MINUTES).build()
             )
    }

    fun stopServiceCheckerWorker() {
        try {
            WorkManager.getInstance().cancelUniqueWork(UNIQUE_WORK_SERVICE_CHECKER)
        } catch (e: Exception) {
            Log.e("Appblocker", e.message, e)
        }
    }
}