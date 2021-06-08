// import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/core/models/video/video.dart';
import 'package:feed/core/utils/youtube.dart';
import 'package:feed/ui/restricted_home/data/feed_data.dart';
import 'package:stacked/stacked.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart' as yt;

class FeedViewModel extends FutureViewModel<List<Video>> {
  final yt.YoutubeExplode _youtubeExplode = locator<yt.YoutubeExplode>();
  final _log = getLogger("FeedViewModel");
  // final DynamicLinksService _dynamicLinksService =
  //     locator<DynamicLinksService>();

  Future shareVideo(int index) async {
    // String url = await _dynamicLinksService.shareVideo(videos[index]);
    // Share.share("Checkout ${videos[index].title} at $url");
  }

  Future<String> getStream(String youtubeVideoUrl) async {
    String videoID = YoutubeUtils.convertUrlToId(youtubeVideoUrl)!;
    var quality = yt.VideoQuality.medium480;

    try {
      var manifest =
          await _youtubeExplode.videos.streamsClient.getManifest(videoID);

      late Uri videoUri = manifest.muxed.first.url;

      manifest.muxed.forEach((m) {
        if (quality == m.videoQuality) {
          videoUri = m.url;
        }
      });

      _log.v("Here's the stream link ${videoUri.toString()}");

      return videoUri.toString();
    } catch (e) {
      return e.toString();
    }
  }

  @override
  Future<List<Video>> futureToRun() async {
    await Future.delayed(Duration(seconds: 1));

    List<Video> ytVideos =
        feedData.map((json) => Video.fromJson(json)).toList();
    List<Video> videos = [];

    for (var video in ytVideos) {
      String streamUrl = await getStream(video.youtubeUrl);
      videos.add(video.copyWith(videoUrl: streamUrl));
    }

    return videos;
  }
}
