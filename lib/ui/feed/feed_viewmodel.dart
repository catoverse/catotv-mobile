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

  @override
  Future getData() async {
    setBusy(true);

    var newVideos = await _feedService.fetchVideos(skip: skip);

    setBusy(false);

    _videos = newVideos;
    skip += newVideos.length;

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

  @override
  Future<void> addBookmarks(int index) async {
    await _videoService.addBookmarks([videos[index]]);
  }
}
