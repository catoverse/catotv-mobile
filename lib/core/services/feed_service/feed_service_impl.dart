import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/feed_service/feed_service.dart';
import 'package:feed/core/services/topic_service/topic_service.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:feed/core/services/youtube_service/youtube_service.dart';
import 'package:feed/remote/api/api_service.dart';

class FeedServiceImpl implements FeedService {
  final APIService _apiService = locator<APIService>();
  final UserService _userService = locator<UserService>();
  final TopicService _topicService = locator<TopicService>();

  @override
  List<Video> videos = [];

  @override
  Future<List<Video>> fetchVideos({int skip = 0, int limit = 10}) async {
    String userId = _userService.currentUser.id;
    var selectedTopics = await _topicService.getSelectedTopics(userId);

    var list = await _apiService.fetchVideos(skip, limit, selectedTopics);

    List<Video> apiVideos = [];

    if (list is List) {
      list.forEach((jsonItem) {
        var isYoutubeVideo =
            YoutubeService.convertUrlToId(jsonItem["video_url"]);

        if (isYoutubeVideo != null) apiVideos.add(Video.fromJson(jsonItem));
      });
      return apiVideos;
    }

    return videos;
  }

  @override
  Future<Video> fetchVideoById(String id) {
    // TODO: implement fetchVideoById
    throw UnimplementedError();
  }
}
