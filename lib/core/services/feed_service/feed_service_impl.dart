import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/video/video.dart';
import 'package:feed/core/services/feed_service/feed_service.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:feed/remote/api/api_service.dart';

class FeedServiceImpl implements FeedService {
  final APIService _apiService = locator<APIService>();
  final UserService _userService = locator<UserService>();

  @override
  List<Video> videos = [];

  ///TODO: Implement [Pagination]
  @override
  Future<bool> fetchVideos() async {
    String userID = _userService.currentUser.id;

    var list = await _apiService.fetchVideosForUser(userID: userID);

    if (list is List) {
      for (var jsonItem in list) {
        videos.add(Video.fromJson(jsonItem));
      }

      return true;
    }

    return false;
  }

  @override
  Future<Video> fetchVideoById(String id) {
    // TODO: implement fetchVideoById
    throw UnimplementedError();
  }
}
