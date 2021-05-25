import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/video/video.dart';
import 'package:feed/firebase/dynamic_links.dart';
import 'package:feed/core/services/feed_service/feed_service.dart';
import 'package:stacked/stacked.dart';
import 'package:share/share.dart';

class FeedViewModel extends FutureViewModel {
  final FeedService _feedService = locator<FeedService>();
  final DynamicLinksService _dynamicLinksService =
      locator<DynamicLinksService>();

  List<Video> get videos => _feedService.videos;

  int _currentPlayingIndex = 0;
  late Function callback;

  int get currentPlayingIndex => _currentPlayingIndex;

  updateCurrentPlayingIndex(int currentPlayingIndex) {
    _currentPlayingIndex = currentPlayingIndex;
    notifyListeners();
  }

  @override
  Future futureToRun() async {
    var res = await _feedService.fetchVideos();

    if (res is bool && res) {
      return _feedService.videos;
    }
  }

  updateCallBack(Function call) {
    callback = call;
    notifyListeners();
  }

  @override
  void onData(data) {
    callback();
    super.onData(data);
  }

  Future shareVideo(int index) async {
    String url = await _dynamicLinksService.shareVideo(videos[index]);
    Share.share("Checkout ${videos[index].title} at $url");
  }
}
