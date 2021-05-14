import 'package:feed/app/app.locator.dart';
import 'package:feed/core/mixins/snackbar_helper.dart';
import 'package:feed/core/models/user/user.dart';
import 'package:feed/core/services/profile_service/profile_service.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:feed/core/utils/full_screen.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends ReactiveViewModel with SnackbarHelper {
  final UserService _userService = locator<UserService>();
  final FullScreenHelper _fullScreenHelper = locator<FullScreenHelper>();
  final ProfileService _profileService = locator<ProfileService>();

  User? get currentUser => _userService.currentUser;

  bool showNav() => _fullScreenHelper.isFullScreen ? false : true;

  int _index = 0;
  int get index => _index;

  void changeTab(int index) {
    _index = index;
    notifyListeners();
  }

  void init() async {
    await _profileService.init();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_fullScreenHelper];
}
