import 'package:stacked/stacked.dart';

class LoginViewModel extends FormViewModel {
  Future performLogin() async {
    // var loginStatus = await _userService.loginUser();

    // if (loginStatus is User) {
    //   return _navigationService.navigateTo(Routes.homeView);
    // } else {
    //   return _snackbarService.showSnackbar(
    //       title: "OOPS!", message: "Something went wrong try again!");
    // }
    setBusy(true);

    await Future.delayed(Duration(seconds: 1));

    setBusy(false);
  }

  Future performGoogleLogin() async {}

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }
}
