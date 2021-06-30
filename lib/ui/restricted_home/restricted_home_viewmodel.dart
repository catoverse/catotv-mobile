import 'package:feed/ui/base/base_feedmodel.dart';
import 'package:feed/core/models/app_models.dart';
import 'data/feed_data.dart';

class RestrictedHomeViewModel extends BaseFeedModel {
  List<Video> _videos = [];

  @override
  Future getVideos() async {
    feedData.forEach((json) => _videos.add(Video.fromJson(json)));
    notifyListeners();
  }

  @override
  List<Video> get videos => _videos;
}
