import 'package:feed/app/app.locator.dart';
import 'package:feed/core/services/feed_service.dart';
import 'package:feed/ui/base/feedmodel.dart';
import 'package:feed/core/models/app_models.dart';
import 'data/feed_data.dart';

class RestrictedHomeViewModel extends BaseFeedModel {
  final _feedService = locator<FeedService>();
  List<Video> _videos = [];

  @override
  Future getData() async {
    setBusy(true);

    _videos = await _feedService.fetchTopVideos();

    if(_videos.isEmpty) {
      for (var json in feedData) {
        _videos.add(Video.fromJson(json));
      }
    }
    setBusy(false);
    notifyListeners();
  }

  @override
  List<Video> get videos => _videos;

  @override
  Future<void> refresh() => Future.value();

  @override
  getVideo(String videoId) {
    throw UnimplementedError();
  }

  @override
  Future shareVideo(int index) async {}

  @override
  Future<void> addBookmarks(int index) {
    throw UnimplementedError();
  }
}
