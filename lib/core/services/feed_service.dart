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

  /// Fetches videos from graphql api
  ///
  /// If there are no videos returned, it gives you videos
  Future<List<Video>> fetchVideos({int skip = 0, int limit = 10}) async {
    _log.i("Fetching videos from $skip");

    String userId = _userService.currentUser.id;
    var selectedTopics = await _topicService.getSelectedTopics(userId);

    var list = await _apiService.getVideos(skip, limit, selectedTopics);
    final userProfileResult =
        await _apiService.geFulltUserProfile(userId: userId);
    List<String>? _bookmarks;

    if (userProfileResult is! Failure) {
      _bookmarks =
          UserProfile.fromJson(userProfileResult as Map<String, dynamic>)
              .bookmarks;
    }

    List<Video> apiVideos = [];

    if (list is List) {
      _log.v("Videos with length ${list.length} fetched successfully");

      for (var json in list) {
        var isYoutubeVideo = VideoService.convertUrlToId(json["video_url"]);

        if (isYoutubeVideo != null) apiVideos.add(Video.fromJson(json));
      }
      if (_bookmarks != null) {
        apiVideos = apiVideos
            .map((e) => e.copyWith(bookmarked: _bookmarks!.contains(e.id)))
            .toList();
      }

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
}
