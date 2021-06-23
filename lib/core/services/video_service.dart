import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class VideoService {
  final _log = getLogger("VideoService");
  final _apiService = locator<APIService>();
  final _explode = locator<YoutubeExplode>();

  /// #1. Fetch the [watchId] from videoUrl
  /// #2. See if there's link available in API with [getStreamLink]
  ///     #1. If link exists - use it
  ///     #2. Fetch the [streamUrl] with Explode or Maadhav's API
  ///     #3. Post the url to the API
  Future<String> getStream(String videoUrl) async {
    // TODO: Log custom property : VideoFetched
    var watchId = convertUrlToId(videoUrl)!;
    var streamUrl = await _apiService.getVideoStream(watchId);

    if (streamUrl is Failure) {
      _log.v("Getting video from explode");
      return _getUrlFromAPI(videoUrl);
    }

    _log.v("Getting video from API");
    return streamUrl;
  }

  Future<String> _getUrlFromAPI(String url) async {
    var watchId = convertUrlToId(url)!;
    var defaultQuality = VideoQuality.medium480;

    try {
      var manifest = await _explode.videos.streamsClient.getManifest(watchId);

      late Uri videoUri = manifest.muxed.first.url;

      manifest.muxed.forEach((m) {
        if (defaultQuality == m.videoQuality) {
          videoUri = m.url;
        }
      });

      var streamUrl = videoUri.toString();
      await _apiService.postVideoStream(watchId, streamUrl);
      return streamUrl;
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
    String videoId = convertUrlToId(youtubeUrl) ?? "";

    return "https://img.youtube.com/vi/$videoId/hqdefault.jpg";
  }
}
