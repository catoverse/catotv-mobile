// import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/video/video.dart';
import 'package:feed/core/services/fakefeed_service.dart';
import 'package:stacked/stacked.dart';

class FeedViewModel extends ReactiveViewModel {
  final FakeFeedImpl _feedService = locator<FakeFeedImpl>();

  List<Video> get videos => _feedService.videos;

  // final DynamicLinksService _dynamicLinksService =
  //     locator<DynamicLinksService>();

  Future shareVideo(int index) async {
    // String url = await _dynamicLinksService.shareVideo(videos[index]);
    // Share.share("Checkout ${videos[index].title} at $url");
  }

  Future getPosts() async {
    await _feedService.fetchVideos();
    notifyListeners();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_feedService];
}
