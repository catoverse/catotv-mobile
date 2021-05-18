import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/video/video.dart';
import 'package:feed/core/services/profile_service/profile_service.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:feed/core/services/videofeed_service/videofeed_service.dart';
import 'package:feed/core/utils/videoplayer.dart';
import 'package:stacked/stacked.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FeedViewModel extends ReactiveViewModel {
  final VideoFeedService _videoFeedService = locator<VideoFeedService>();
  final UserService _userService = locator<UserService>();
  final VideoPlayerUtils _fullScreenHelper = locator<VideoPlayerUtils>();
  final ProfileService _profileService = locator<ProfileService>();

  late YoutubePlayerController _controller;
  YoutubePlayerController get controller => _controller;

  List<Video> videos = [];
  int currentVideo = 0;

  bool isPlaying = true;

  late DateTime videoStartTime;

  void initPlayer() async {
    setBusy(true);

    var res = await _videoFeedService.fetchVideos(_userService.currentUser.id);

    if (res is bool && res) {
      videos = _videoFeedService.videos;

      String youtubeURL = videos[currentVideo].video_url;

      _controller = YoutubePlayerController(
          initialVideoId: _getYoutubeID(youtubeURL),
          flags: YoutubePlayerFlags(
              hideControls: false,
              hideThumbnail: false,
              disableDragSeek: true));

      _fullScreenHelper.showScreenStatus.listen((v) {
        if (!v) _controller.pause();
      });
    }

    setBusy(false);
  }

  void playNextVideo() async {
    if (currentVideo == videos.length - 1) return;

    currentVideo = (currentVideo + 1) % videos.length;
    String youtubeURL = videos[currentVideo].video_url;
    _controller.load(_getYoutubeID(youtubeURL));

    await updateProfile();

    notifyListeners();
  }

  void playPreviousVideo() {
    if (currentVideo == 0) return;

    currentVideo--;
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

  String fetchThumbnail(String youtubeURL) {
    return "https://img.youtube.com/vi/" +
        _getYoutubeID(youtubeURL) +
        "/hqdefault.jpg";
  }

  void onEnterFullScreen() {
    _fullScreenHelper.setFullScreen(status: true);
  }

  void onExitFullScreen() {
    _fullScreenHelper.setFullScreen(status: false);
  }

  void playPauseVideo() {
    PlayerState playerState = _controller.value.playerState;

    switch (playerState) {
      case PlayerState.playing:
        _controller.pause();
        isPlaying = false;
        break;
      case PlayerState.paused:
        _controller.play();
        isPlaying = true;
        break;
      default:
    }

    notifyListeners();
  }

  onVideoStarted() {
    videoStartTime = DateTime.now();
  }

  onVideoEnded(YoutubeMetaData metaData) async {
    playNextVideo();
  }

  updateProfile() async {
    print("Updating video watch time");
    Duration watchTime = DateTime.now().difference(videoStartTime);
    await _profileService.updateWatchTime(watchTime);
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices =>
      [_fullScreenHelper, _profileService];
}
