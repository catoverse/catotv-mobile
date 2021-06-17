import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/video/video.dart';
import 'package:feed/firebase/dynamic_links.dart';

import 'package:feed/ui/base/feed_viewmodel.dart';
import 'package:share/share.dart';

class BaseFeedViewModel extends FeedViewModel {
  final DynamicLinksService _dynamicLinksService =
      locator<DynamicLinksService>();

  Future shareVideo(Video video) async {
    String url = await _dynamicLinksService.shareVideo(video);
    Share.share("Checkout ${video.title} at $url");
  }
}
