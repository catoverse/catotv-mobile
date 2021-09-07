import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/feed_service.dart';
import 'package:feed/core/services/video_service.dart';
import 'package:feed/ui/base/feedmodel.dart';

class FeedViewModel extends BaseFeedModel {
  final FeedService _feedService = locator<FeedService>();
  final VideoService _videoService = locator<VideoService>();

  int skip = 0;

  List<Video> _videos = [];
  List<String> bookmarks = [];

  @override
  Future getVideos() async {
    setBusy(true);

    var newVideos = await _feedService.fetchVideos(skip: skip);
    bookmarks = await _videoService.getBookmarks();

    setBusy(false);

    _videos = newVideos;
    skip += newVideos.length;

    notifyListeners();
  }

  @override
  List<Video> get videos => _videos;

  @override
  Future<void> refresh() => getVideos();

  @override
  getVideo(String videoId) {
    throw UnimplementedError();
  }
}
