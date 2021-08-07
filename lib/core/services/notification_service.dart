import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/core/constants/keys.dart';

class NotificationService {
  final _notificationsPlugin = AwesomeNotifications();
  final _log = getLogger("NotificationService");

  Future<void> init() async {
    _log.i("Init Notifications");

    await _notificationsPlugin.initialize("resource://drawable/app_icon", [
      NotificationChannel(
        channelKey: kVideoNotificationChannel,
        channelName: 'Cato Delights',
        channelDescription:
            'Notification channel for sending video notifications',
      )
    ]);

    _notificationsPlugin.isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        _notificationsPlugin.requestPermissionToSendNotifications();
      }
    });

    _notificationsPlugin.actionStream.listen((event) {
      //TODO: Navigate to single video view
    });
  }

  showVideoNotification({
    required String videoId,
    required String title,
    required String body,
    required String image,
  }) async {
    await _notificationsPlugin.createNotification(
      content: NotificationContent(
          id: 10,
          channelKey: kVideoNotificationChannel,
          title: title,
          body: body,
          displayOnForeground: true,
          hideLargeIconOnExpand: true,
          payload: {"videoId": videoId},
          bigPicture: image,
          notificationLayout: NotificationLayout.BigPicture),
    );
  }
}
