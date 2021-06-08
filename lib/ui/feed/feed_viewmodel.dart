// import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/core/models/video/video.dart';
import 'package:feed/core/services/youtube_service/youtube_service.dart';
import 'package:feed/ui/restricted_home/data/feed_data.dart';
import 'package:stacked/stacked.dart';

class FeedViewModel extends FutureViewModel<List<Video>> {
  final YoutubeService _youtubeUtils = locator<YoutubeService>();
  final _log = getLogger("FeedViewModel");
  // final DynamicLinksService _dynamicLinksService =
  //     locator<DynamicLinksService>();

  Future shareVideo(int index) async {
    // String url = await _dynamicLinksService.shareVideo(videos[index]);
    // Share.share("Checkout ${videos[index].title} at $url");
  }

  @override
  Future<List<Video>> futureToRun() async {
    var started = DateTime.now();

    _log.v("Getting videos from Fake API");

    await Future.delayed(Duration(seconds: 1));

    List<Video> ytVideos =
        feedData.map((json) => Video.fromJson(json)).toList();

    _log.v("Fetched videos from Fake API");

    List<Video> videos = [];

    _log.v("Getting videos from Explode API");

    for (var video in ytVideos) {
      var videoStarted = DateTime.now();
      String streamUrl = await _youtubeUtils.getStream(video.youtubeUrl);
      _log.v(
          "It took ${DateTime.now().difference(videoStarted).inSeconds} seconds for $video");
      videos.add(video.copyWith(videoUrl: streamUrl));
    }

    _log.v("It took ${DateTime.now().difference(started).inSeconds} seconds");

    return videos;
  }
}
