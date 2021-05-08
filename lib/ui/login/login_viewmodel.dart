import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/core/models/user/user.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final UserService _userService = locator<UserService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();

  Future performLogin() async {
    var loginStatus = await _userService.loginUser();

    if (loginStatus is User) {
      return _navigationService.navigateTo(Routes.homeView);
    } else {
      return _snackbarService.showSnackbar(
          title: "OOPS!", message: "Something went wrong try again!");
    }
  }
}
