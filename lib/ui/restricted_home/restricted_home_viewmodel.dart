import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/core/enums/bottom_sheet.dart';
import 'package:feed/core/mixins/snackbar_helper.dart';
import 'package:feed/core/models/result/failure.dart';
import 'package:feed/core/models/video/video.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:feed/ui/restricted_home/feed_data.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class RestrictedHomeViewModel extends BaseViewModel with SnackbarHelper {
  final BottomSheetService _bottomSheetService = locator<BottomSheetService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final UserService _userService = locator<UserService>();

  List<Video> videos = feedData.map((e) => Video.fromJson(e)).toList();

  //TODO: How to fix repeated code
  int currentVideo = 0;

  late YoutubePlayerController _controller;
  YoutubePlayerController get controller => _controller;

  bool isPlaying = true;

  void initPlayer() async {
    setBusy(true);

    String youtubeURL = videos[currentVideo].video_url;

    _controller = YoutubePlayerController(
        initialVideoId: _getYoutubeID(youtubeURL),
        flags: YoutubePlayerFlags(
            hideControls: false, hideThumbnail: false, disableDragSeek: true));

    setBusy(false);
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

  void playNextVideo() async {
    if (currentVideo == videos.length - 1) return showConstraint();

    currentVideo = (currentVideo + 1) % videos.length;
    String youtubeURL = videos[currentVideo].video_url;
    _controller.load(_getYoutubeID(youtubeURL));

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

  final _log = getLogger("Restricted Home");

  Future showConstraint() async {
    var sheetResponse = await _bottomSheetService.showCustomSheet(
        variant: BottomSheetType.Constraint,
        title: 'You need an account to continue',
        description:
            'We’re currently in early access mode, you can’t enter unless you have an invite.',
        mainButtonTitle: 'Continue with Google',
        secondaryButtonTitle: 'Request Invite');

    if (sheetResponse?.responseData is ThreeButtonResponseData) {
      ThreeButtonResponseData responseData = sheetResponse?.responseData;
      _log.v(responseData);

      switch (responseData) {
        case ThreeButtonResponseData.Primary:
          await loginWithGoogle();
          break;
        case ThreeButtonResponseData.Secondary:
          _navigationService.navigateTo(Routes.inviteView);
          break;
        default:
      }
    }
  }

  loginWithGoogle() async {
    setBusy(true);
    var user = await _userService.loginWithGoogle();

    if (user is Failure) {
    } else {
      _log.i("user: $user");
    }

    setBusy(false);
    _navigationService.navigateTo(Routes.homeView);
  }
}
