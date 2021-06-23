import 'package:feed/app/app.router.dart';
import 'package:feed/ui/base/auth_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../helpers/test_helpers.dart';

class ViewModel extends AuthenticationViewModel {}

AuthenticationViewModel _getModel() => ViewModel();

void main() {
  group('StartupViewmodel Test -', () {
    setUp(() => registerServices());
    tearDown(() => unregisterServices());

    group('loginWithGoogle -', () {
      test("when user clicks back, login should not be done", () async {
        getAndRegisterUserService(loginError: true);
        var _snackbarService = getAndRegisterSnackbarService();
        var model = _getModel();
        await model.loginWithGoogle();
        verify(_snackbarService.showSnackbar(
            title: "Aww, Sorry",
            message: "Something went wrong from our side."));
      });

      test(
          "when login is successful and no profile exists, redirect to topic selection",
          () async {
        getAndRegisterUserService(hasProfile: false);
        var _navigationService = getAndRegisterNavigationService();
        var model = _getModel();
        await model.loginWithGoogle();
        verify(_navigationService.replaceWith(Routes.topicSelectionView));
      });

      test("when login is successful and profile exists, redirect to home",
          () async {
        var _navigationService = getAndRegisterNavigationService();
        var model = _getModel();
        await model.loginWithGoogle();
        verify(_navigationService.replaceWith(Routes.homeView));
      });
    });
  });
}
