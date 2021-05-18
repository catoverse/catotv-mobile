import 'package:feed/app/app.locator.dart';
import 'package:feed/core/mixins/snackbar_helper.dart';
import 'package:feed/core/models/user/user.dart';
import 'package:feed/core/services/profile_service/profile_service.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:feed/core/utils/videoplayer.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends ReactiveViewModel with SnackbarHelper {
  final UserService _userService = locator<UserService>();
  final VideoPlayerUtils _videoPlayerUtils = locator<VideoPlayerUtils>();
  final ProfileService _profileService = locator<ProfileService>();

  User? get currentUser => _userService.currentUser;

  bool showNav() => _videoPlayerUtils.isFullScreen ? false : true;

  int _index = 0;
  int get index => _index;

  void changeTab(int index) {
    _index = index;

    if (_index > 0) _videoPlayerUtils.setPlayValue(status: false);

    if (_index == 0) _videoPlayerUtils.setPlayValue(status: true);

    print("$_index value and ${_videoPlayerUtils.isPlaying}");

    notifyListeners();
  }

  void init() async {
    await _profileService.init();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_videoPlayerUtils];
}
