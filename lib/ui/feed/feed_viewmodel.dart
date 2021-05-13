import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/video/video.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:feed/ui/feed/player.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FeedViewModel extends FutureViewModel {
  final APIService _apiService = locator<APIService>();
  final UserService _userService = locator<UserService>();
  final NavigationService _navigationService = locator<NavigationService>();

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

  String getThumbnail(String youtubeURL) {
    String id = YoutubePlayer.convertUrlToId(youtubeURL)!;

    return "http://img.youtube.com/vi/" + id + "/hqdefault.jpg";
  }

  playVideo(Video video) {
    return _navigationService.navigateToView(VideoPlayer(video: video));
  }
}
