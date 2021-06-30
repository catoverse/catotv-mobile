import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/feed_service.dart';
import 'package:feed/ui/base/base_feedmodel.dart';
import 'package:stacked/stacked.dart';

class FeedViewModel extends BaseFeedModel {
  final FeedService _feedService = locator<FeedService>();

  int skip = 0;

  List<Video> _videos = [];

  @override
  Future getVideos() async {
    setBusy(true);

    var newVideos = await _feedService.fetchVideos(skip: skip);

    setBusy(false);

    _videos = newVideos;
    skip += newVideos.length;

    notifyListeners();
  }

  @override
  List<Video> get videos => _videos;

  Future<void> refresh() async => await getVideos();
}
