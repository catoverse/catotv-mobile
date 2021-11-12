import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/core/services/notification_service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:stacked_services/stacked_services.dart';

class FcmService {
  final _fcm = FirebaseMessaging.instance;
  final _navigationService = locator<NavigationService>();
  final _log = getLogger("FcmService");

  setupFCM() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      _log.v(message);

      final title = message.data["title"];
      final body = message.data["body"];
      final videoId = message.data["videoId"];
      final image = message.data["image"];

      await locator<NotificationService>().showVideoNotification(videoId: videoId, title: title, body: body, image: image);
    });

    _fcm.subscribeToTopic("video_delights");
    _log.v("Subscribed to video_delights");

    await _handleForegroundInteraction();
  }

  _handleForegroundInteraction() async {
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _log.v(message);

      if (message.data["redirect"] == "video") {
        String videoId = message.data["videoId"];
        _navigationService.navigateTo(Routes.singleFeedView, arguments: SingleFeedViewArguments(videoId: videoId));
      }
    });
  }
}
