import 'package:feed/app/app.locator.dart';
import 'package:feed/core/constants/strings.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/feed_service.dart';
import 'package:feed/core/services/life_cycle_service.dart';
import 'package:feed/core/services/notification_service.dart';
import 'package:feed/ui/base/feedmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked_services/stacked_services.dart';

class FeedViewModel extends BaseFeedModel {
  final FeedService _feedService = locator<FeedService>();
  final _dialogService = locator<DialogService>();
  final _notificationService = locator<NotificationService>();
  final _lifeCycleService = locator<LifeCycleService>();

  int skip = 0;

  List<Video> _videos = [];

  void requestNotification() async {
    var shouldAsk = await _notificationService.shouldAskForNotification();

    if (shouldAsk) {
      var response = await _dialogService.showConfirmationDialog(
        title: kNotificationPermissionsTitle,
        description: kNotificationPermissionDescription,
        barrierDismissible: true,
      );

      var userAllowed = response != null && response.confirmed;

      await _notificationService.saveNotificationPromptResponse(userAllowed);

      if (userAllowed) {
        await _notificationService.requestNotifications();
      }
    }
  }

  @override
  Future getData() async {
    setBusy(true);
    logSessionStart();

    _lifeCycleService.getStream().listen((event) {
      if (event == AppLifecycleState.paused) logSessionEnd();
    });
    
    var newVideos = await _feedService.fetchVideos(skip: skip);

    setBusy(false);

    _videos = newVideos;
    skip += newVideos.length;

    Future.delayed(const Duration(seconds: 2), requestNotification);

    notifyListeners();
  }

  @override
  List<Video> get videos => _videos;

  @override
  Future<void> refresh() => getData();

  @override
  getVideo(String videoId) {
    throw UnimplementedError();
  }
}
