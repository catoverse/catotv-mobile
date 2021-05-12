import 'package:feed/app/app.locator.dart';
import 'package:feed/core/mixins/snackbar_helper.dart';
import 'package:feed/core/models/user/user.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel with SnackbarHelper {
  final UserService _userService = locator<UserService>();

  User? get currentUser => _userService.currentUser;

  int _index = 0;
  int get index => _index;

  void changeTab(int index) {
    _index = index;
    notifyListeners();
  }
}
