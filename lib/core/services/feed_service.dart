import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/topic_service.dart';
import 'package:feed/core/services/user_service.dart';
import 'package:feed/core/services/video_service.dart';
import 'package:feed/remote/api/api_service.dart';

class FeedService {
  final _log = getLogger("Feed Service");
  final _apiService = locator<APIService>();
  final _userService = locator<UserService>();
  final _topicService = locator<TopicService>();
  final _videoService = locator<VideoService>();

  /// Fetches videos from graphql api
  ///
  /// If there are no videos returned, it gives you videos
  Future<List<Video>> fetchVideos({int skip = 0, int limit = 10}) async {
    _log.i("Fetching videos from $skip");

    String userId = _userService.currentUser.id;
    var selectedTopics = await _topicService.getSelectedTopics(userId);

    var list = await _apiService.getVideos(skip, limit, selectedTopics);
    List<String> _bookmarks = [];

    final bookmaredVideos = await _videoService.getBookmarkedVideos();

    _bookmarks = bookmaredVideos.map((Video video) => video.id).toList();

    if (_bookmarks.isEmpty) {
      final userProfileResult =
          await _apiService.geFullUserProfile(userId: userId);
      if (userProfileResult is! Failure) {
        _bookmarks =
            UserProfile.fromJson(userProfileResult as Map<String, dynamic>)
                .bookmarks;
      }
    }

    List<Video> apiVideos = [];

    if (list is List) {
      _log.v("Videos with length ${list.length} fetched successfully");

      for (var json in list) {
        var isYoutubeVideo = VideoService.convertUrlToId(json["video_url"]);

        if (isYoutubeVideo != null) apiVideos.add(Video.fromJson(json));
      }
      apiVideos = apiVideos
          .map((Video video) =>
              video.copyWith(bookmarked: _bookmarks.contains(video.id)))
          .toList();

      return apiVideos;
    }

    _log.e("Fetching videos failed with error :$list");
    return apiVideos;
  }

  /// Fetches video with given [id]
  Future<Video> fetchVideoById(String id) async {
    var result = await _apiService.getVideoById(id);
    return Video.fromJson(result);
  }

  /// Fetches all the top [Video] from API
  Future<List<Video>> fetchTopVideos() async {
    List<Video> apiVideos = [];

    final list = await _apiService.getTopVideos();

    if (list is List) {
      for (var json in list) {
        final isYoutubeVideo = VideoService.convertUrlToId(json["video_url"]);

        if (isYoutubeVideo != null) {
          apiVideos.add(Video.fromJson(json));
        }
      }
    }

    return apiVideos;
  }
}
