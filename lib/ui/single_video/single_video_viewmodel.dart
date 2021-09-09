import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/feed_service.dart';
import 'package:feed/ui/base/feedmodel.dart';

class SingleFeedViewModel extends BaseFeedModel {
  final _feedService = locator<FeedService>();
  late String videoId;

  List<Video> _videos = [];

  @override
  getVideo(String videoId) {
    this.videoId = videoId;
    getData();
  }

  @override
  Future getData() async {
    setBusy(true);

    var video = await _feedService.fetchVideoById(videoId);

    _videos.add(video);

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
