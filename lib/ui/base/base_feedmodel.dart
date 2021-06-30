import 'package:feed/app/app.locator.dart';
import 'package:feed/core/constants/events.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/video_service.dart';
import 'package:feed/firebase/analytics.dart';
import 'package:feed/firebase/dynamic_links.dart';
import 'package:feed/ui/base/snackbar_helper.dart';
import 'package:share/share.dart';
import 'package:stacked/stacked.dart';

import 'auth.dart';

abstract class BaseFeedModel extends BaseViewModel
    with AuthMixin, SnackbarHelper {
  final _videoService = locator<VideoService>();
  final _analytics = locator<AnalyticsService>();
  final _dynamicLinksService = locator<DynamicLinksService>();

  List<Video> get videos;

  Future<String> getStreamUrl(String videoUrl) async {
    var beforeLoading = DateTime.now();

    String streamUrl = await _videoService.getStream(videoUrl);

    await _analytics.logEvent(VideoLoadingTime, params: {
      "duration": DateTime.now().difference(beforeLoading).inMilliseconds
    });

    return streamUrl;
  }

  Future shareVideo(int index) async {
    var video = videos[index];
    String url = await _dynamicLinksService.shareVideo(video);
    Share.share("Checkout ${video.title} at $url");
  }

  Future getVideos();

  String getThumbnail(String url) => VideoService.getThumbnail(url);
}
