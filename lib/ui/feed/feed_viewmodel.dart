import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/video/video.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:stacked/stacked.dart';

class FeedViewModel extends FutureViewModel {
  final APIService _apiService = locator<APIService>();
  final UserService _userService = locator<UserService>();

  List<Video> videos = [];

  @override
  Future futureToRun() async {
    var list = await _apiService.fetchVideosForUser(
        userID: _userService.currentUser!.id);

    if (list is List) {
      for (var jsonItem in list) {
        videos.add(Video.fromJson(jsonItem));
      }
    }
  }
}
