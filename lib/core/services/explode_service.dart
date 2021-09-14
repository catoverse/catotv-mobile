import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/core/services/video_service.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class ExplodeService {
  final _explode = locator<YoutubeExplode>();
  final _log = getLogger("ExplodeService");

  Future<String> getStreamUrl(String url) async {
    var watchId = VideoService.convertUrlToId(url)!;
    var defaultQuality = VideoQuality.medium480;

    try {
      var manifest = await _explode.videos.streamsClient.getManifest(watchId);

      late Uri videoUri = manifest.muxed.first.url;

      for (var m in manifest.muxed) {
        if (defaultQuality == m.videoQuality) {
          videoUri = m.url;
        }
      }

      _log.v("Fetched video from explode successfully");

      return videoUri.toString();
    } catch (e) {
      _log.e("Failed to fetch video from explode: ${e.toString()}");
      return "";
    }
  }
}
