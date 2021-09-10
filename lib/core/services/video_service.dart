import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/core/constants/keys.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/explode_service.dart';
import 'package:feed/core/services/hive_service/hive_service.dart';
import 'package:feed/core/services/user_service.dart';
import 'package:feed/remote/api/api_service.dart';

class VideoService {
  final _log = getLogger("VideoService");
  final _apiService = locator<APIService>();
  final _explodeService = locator<ExplodeService>();
  final _userService = locator<UserService>();
  final _hiveService = locator<HiveService>();

  /// #1. Fetch the [watchId] from videoUrl
  /// #2. See if there's link available in API with [getStreamLink]
  ///     #1. If link exists - use it
  ///     #2. Fetch the [streamUrl] with Explode
  ///     #3. Post the url to the API
  Future<String> getStream(String videoUrl) async {
    // TODO: Log custom property : VideoFetched
    var watchId = convertUrlToId(videoUrl)!;
    var streamUrl = await _apiService.getVideoStream(watchId);

    if (streamUrl is Failure) {
      _log.v("Getting video from explode");
      return getUrlFromAPI(videoUrl);
    }

    _log.v("Getting video from API");
    return streamUrl;
  }

  Future<String> getUrlFromAPI(String url) async {
    var streamUrl = await _explodeService.getStreamUrl(url);
    var watchId = convertUrlToId(url)!;

    await _apiService.postVideoStream(watchId, streamUrl);
    return streamUrl;
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

  Future<List<Video>> getBookmarkedVideos() async {
    final result = await _hiveService.fetchList<Video>(boxName: BOOKMARKED_VIDEO_ID_KEY);
    return result.success ?? [];
  }

  Future<void> addBookmarks(List<Video> videos) async {
    await _hiveService.insertList<Video>(items: videos, boxName: BOOKMARKED_VIDEO_ID_KEY);
    await _apiService.addBookmarks(_userService.currentUser.id, videos.map((e) => e.id).toList());
  }
}
