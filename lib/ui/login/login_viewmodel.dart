import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/core/mixins/validators.dart';
import 'package:feed/core/models/user/user.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'login_view.form.dart';

class LoginViewModel extends FormViewModel with Validators {
  final _userService = locator<UserService>();
  final _navigationService = locator<NavigationService>();
  final _snackbarService = locator<SnackbarService>();

  bool validateFields() {
    print(emailValue);
    print(passwordValue);

    var a = validateEmail(emailValue ?? "");
    var b = validatePassword(passwordValue ?? "");

    print(a);
    print(b);

    return a.isEmpty && b.isEmpty;
  }

  Future performLogin() async {
    if (!validateFields())
      return _snackbarService.showSnackbar(
          title: "OOPS!", message: "Please check your details and try again");

    setBusy(true);

    var loginStatus = await _userService.loginWithEmailPassword(
        name: "Name", email: emailValue!, password: passwordValue!);

    setBusy(false);

    if (loginStatus is User) {
      return _navigationService.replaceWith(Routes.homeView);
    } else {
      return _snackbarService.showSnackbar(
          title: "OOPS!", message: "Something went wrong try again!");
    }
  }

  Future performGoogleLogin() async {
    setBusy(true);

    var loginStatus = await _userService.loginWithGoogle();

    setBusy(false);

    if (loginStatus is User) {
      return _navigationService.replaceWith(Routes.homeView);
    } else {
      return _snackbarService.showSnackbar(
          title: "OOPS!", message: "Something went wrong try again!");
    }
  }

  @override
  void setFormStatus() {}
}
