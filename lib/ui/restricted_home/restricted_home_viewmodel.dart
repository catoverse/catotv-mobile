import 'package:feed/ui/base/feedmodel.dart';
import 'package:feed/core/models/app_models.dart';
import 'data/feed_data.dart';

class RestrictedHomeViewModel extends BaseFeedModel {
  final List<Video> _videos = [];

  @override
  Future getData() async {
    for (var json in feedData) {
      _videos.add(Video.fromJson(json));
    }
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
