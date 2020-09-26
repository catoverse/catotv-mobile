package club.cato.app_blocker.service.notification

import android.app.*
import android.content.Context
import android.content.Intent
import android.os.Build
import androidx.core.app.NotificationCompat
import androidx.core.app.NotificationManagerCompat
import club.cato.app_blocker.R

class ServiceNotificationManager constructor(val context: Context) {

    fun createNotification(intent: Intent): Notification {
        createAppLockerServiceChannel()

        val resultPendingIntent = PendingIntent.getActivity(context, 0, intent, PendingIntent.FLAG_UPDATE_CURRENT)

        val notification = NotificationCompat.Builder(context, CHANNEL_ID_APPLOCKER_SERVICE)
                .setSmallIcon(R.drawable.notification_icon)
                .setContentTitle("guarding your time")
//                .setContentText("by guarding you")
                .setPriority(NotificationCompat.PRIORITY_DEFAULT)
                .setContentIntent(resultPendingIntent)
                .build()

        NotificationManagerCompat.from(context).notify(NOTIFICATION_ID_APPLOCKER_SERVICE, notification)
        return notification
    }

    fun createPermissionNeedNotification(intent: Intent): Notification {
        createAppLockerServiceChannel()

        val resultPendingIntent = PendingIntent.getActivity(context, 0, intent, PendingIntent.FLAG_UPDATE_CURRENT)

        val notification = NotificationCompat.Builder(context, CHANNEL_ID_APPLOCKER_SERVICE)
                .setSmallIcon(R.drawable.notification_icon)
                .setContentTitle("Need Permission")
                .setContentText("to function")
                .setPriority(NotificationCompat.PRIORITY_DEFAULT)
                .setContentIntent(resultPendingIntent)
                .build()

        NotificationManagerCompat.from(context).notify(NOTIFICATION_ID_APPLOCKER_PERMISSION_NEED, notification)
        return notification
    }

    fun hidePermissionNotification() {
        NotificationManagerCompat.from(context).cancel(NOTIFICATION_ID_APPLOCKER_PERMISSION_NEED)
    }

    private fun createAppLockerServiceChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val name = "name"
            val descriptionText = "description"
            val importance = NotificationManager.IMPORTANCE_LOW
            val channel = NotificationChannel(CHANNEL_ID_APPLOCKER_SERVICE, name, importance).apply {
                description = descriptionText
            }
            val notificationManager: NotificationManager =
                    context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            notificationManager.createNotificationChannel(channel)
        }
    }

    companion object {
        private const val CHANNEL_ID_APPLOCKER_SERVICE = "CHANNEL_ID_APPLOCKER_SERVICE"
        private const val NOTIFICATION_ID_APPLOCKER_SERVICE = 1
        private const val NOTIFICATION_ID_APPLOCKER_PERMISSION_NEED = 2
    }
}