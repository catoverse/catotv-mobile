import 'package:feed/app/app.locator.dart';
import 'package:feed/core/services/feed_service/feed_service.dart';
import 'package:stacked/stacked.dart';

class FeedViewModel extends FutureViewModel {
  final FeedService _feedService = locator<FeedService>();
  // final DynamicLinksService _dynamicLinksService =
  //     locator<DynamicLinksService>();

  @override
  Future futureToRun() async {
    var res = await _feedService.fetchVideos();

    if (res is bool && res) {
      return _feedService.videos;
    }
  }

  Future shareVideo(int index) async {
    // String url = await _dynamicLinksService.shareVideo(videos[index]);
    // Share.share("Checkout ${videos[index].title} at $url");
  }
}
