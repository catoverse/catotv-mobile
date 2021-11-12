import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/feed_service.dart';
import 'package:feed/core/services/video_manager_service.dart';
import 'package:feed/ui/base/feedmodel.dart';
import 'package:stacked_services/stacked_services.dart';

class SingleFeedViewModel extends BaseFeedModel {
  final _feedService = locator<FeedService>();
  final VideoManagerService _videoManagerService = locator<VideoManagerService>();
  final NavigationService _navigationService = locator<NavigationService>();
  late String videoId;

  final List<Video> _videos = [];

  @override
  getVideo(String videoId) {
    this.videoId = videoId;
    getData();
  }

  @override
  Future getData() async {
    _videoManagerService.addStream(FeedRouteState.away);
    setBusy(true);

    try {
      final video = await _feedService.fetchVideoById(videoId);

      if (video == null) {
        return _navigationService.back();
      }

      _videos.add(video);
    } catch (_) {}

    setBusy(false);
  }

  @override
  Future<void> refresh() async {}

  @override
  List<Video> get videos => _videos;

  @override
  Future<void> addBookmarks(int index) {
    throw UnimplementedError();
  }
}
