import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class YoutubeService {
  final _log = getLogger("Youtube Utils");
  final YoutubeExplode _youtubeExplode = locator<YoutubeExplode>();

  Future<String> getStream(String youtubeVideoUrl) async {
    String videoID = convertUrlToId(youtubeVideoUrl)!;
    var quality = VideoQuality.medium480;

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

  static String? convertUrlToId(String url, {bool trimWhitespaces = true}) {
    if (!url.contains("http") && (url.length == 11)) return url;
    if (trimWhitespaces) url = url.trim();

    for (var exp in [
      RegExp(
          r"^https:\/\/(?:www\.|m\.)?youtube\.com\/watch\?v=([_\-a-zA-Z0-9]{11}).*$"),
      RegExp(
          r"^https:\/\/(?:www\.|m\.)?youtube(?:-nocookie)?\.com\/embed\/([_\-a-zA-Z0-9]{11}).*$"),
      RegExp(r"^https:\/\/youtu\.be\/([_\-a-zA-Z0-9]{11}).*$")
    ]) {
      Match? match = exp.firstMatch(url);
      if (match != null && match.groupCount >= 1) return match.group(1);
    }

    return null;
  }

  static String getThumbnail(String youtubeUrl) {
    String videoId = convertUrlToId(youtubeUrl)!;

    return "https://i3.ytimg.com/vi_webp/$videoId/sddefault.webp";
  }
}
