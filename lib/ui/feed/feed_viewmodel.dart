// import 'package:feed/app/app.locator.dart';
// import 'package:feed/core/models/video/video.dart';

import 'package:feed/ui/base/feed_viewmodel.dart';

class BaseFeedViewModel extends FeedViewModel {
  // final DynamicLinksService _dynamicLinksService =
  //     locator<DynamicLinksService>();

  Future shareVideo(int index) async {
    // String url = await _dynamicLinksService.shareVideo(videos[index]);
    // Share.share("Checkout ${videos[index].title} at $url");
  }
}
