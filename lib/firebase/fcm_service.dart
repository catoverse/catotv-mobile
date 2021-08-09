import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/app/app.router.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:stacked_services/stacked_services.dart';

class FcmService {
  final _fcm = FirebaseMessaging.instance;
  final _navigationService = locator<NavigationService>();
  final _log = getLogger("FcmService");

  setupFCM() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      _log.v(message);
      //TODO: Implement in-app notifications
    });

    _fcm.subscribeToTopic("video_delights");

    await _handleForegroundInteraction();
  }

  _handleForegroundInteraction() async {
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      _log.v(event);

      if (event.data["redirect"] == "video") {
        String videoId = event.data["videoId"];
        _navigationService.navigateTo(Routes.singleFeedView,
            arguments: SingleFeedViewArguments(videoId: videoId));
      }
    });
  }
}
