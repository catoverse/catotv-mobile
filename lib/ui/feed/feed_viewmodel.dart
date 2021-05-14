import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/video/video.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:feed/core/services/videofeed_service/videofeed_service.dart';
import 'package:stacked/stacked.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FeedViewModel extends BaseViewModel {
  final VideoFeedService _videoFeedService = locator<VideoFeedService>();
  final UserService _userService = locator<UserService>();

  late YoutubePlayerController _controller;

  YoutubePlayerController get controller => _controller;

  List<Video> videos = [];
  int currentVideo = 0;

  void initPlayer() async {
    setBusy(true);

    var res = await _videoFeedService.fetchVideos(_userService.currentUser!.id);

    if (res is bool && res) {
      videos = _videoFeedService.videos;

      String youtubeURL = videos[currentVideo].video_url;

      _controller =
          YoutubePlayerController(initialVideoId: _getYoutubeID(youtubeURL));
    }

    setBusy(false);
  }

  void playNextVideo() {
    currentVideo = (currentVideo + 1) % videos.length;
    String youtubeURL = videos[currentVideo].video_url;
    _controller.load(_getYoutubeID(youtubeURL));

    notifyListeners();
  }

  String _getYoutubeID(String youtubeURL) {
    return YoutubePlayer.convertUrlToId(youtubeURL)!;
  }

  String getThumbnail() {
    String youtubeURL = videos[currentVideo].video_url;
    return "https://img.youtube.com/vi/" +
        _getYoutubeID(youtubeURL) +
        "/hqdefault.jpg";
  }
}
