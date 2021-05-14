import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/video/video.dart';
import 'package:feed/core/services/videofeed_service/videofeed_service.dart';
import 'package:feed/remote/api/api_service.dart';

class VideoFeedServiceImpl implements VideoFeedService {
  final APIService _apiService = locator<APIService>();

  @override
  List<Video> videos = [];

  @override
  Future<bool> fetchVideos(String userID) async {
    var list = await _apiService.fetchVideosForUser(userID: userID);

    if (list is List) {
      for (var jsonItem in list) {
        videos.add(Video.fromJson(jsonItem));
      }

      return true;
    }

    return false;
  }
}
