import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/core/constants/events.dart';
import 'package:feed/core/enums/bottom_sheet.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/user_service.dart';
import 'package:feed/firebase/analytics.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

mixin AuthMixin on BaseViewModel {
  final _bottomSheetService = locator<BottomSheetService>();
  final _snackbarService = locator<SnackbarService>();
  final _navigationService = locator<NavigationService>();
  final _userService = locator<UserService>();
  final _analytics = locator<AnalyticsService>();
  final _log = getLogger("Authentication ViewModel");

  User get currentUser => _userService.currentUser;

  Future showConstraint({
    String title: 'You need an account to continue',
    String description:
        'We’re currently in early access mode, you can’t enter unless you have an invite.',
    String secondaryRoute = Routes.inviteView,
    String secondaryButton = 'Request an Invite',
    String mainButton = "Continue with Google",
  }) async {
    var sheetResponse = await _bottomSheetService.showCustomSheet(
        variant: BottomSheetType.Constraint,
        title: title,
        description: description,
        mainButtonTitle: mainButton,
        secondaryButtonTitle: secondaryButton);

    if (sheetResponse?.responseData is ThreeButtonResponseData) {
      ThreeButtonResponseData responseData = sheetResponse?.responseData;

      switch (responseData) {
        case ThreeButtonResponseData.Primary:
          await loginWithGoogle();
          break;
        case ThreeButtonResponseData.Secondary:
          _navigationService.replaceWith(secondaryRoute);
          break;
        default:
      }
    }
  }

  loginWithGoogle() async {
    bool isProfileExists = false;

    setBusy(true);

    var loginSuccess = await _userService.loginWithGoogle();

    if (!loginSuccess) {
      setBusy(false);
      _log.e("failed to perform login");
      _snackbarService.showSnackbar(
          title: "Aww, Sorry", message: "Something went wrong from our side.");
      return _analytics.logEvent(LoginFailed);
    }

    _log.i(
        "User Login Successful : Logged in user: ${_userService.currentUser}");
    isProfileExists = await _userService.isUserProfileExists();
    _analytics.logEvent(LoginSuccess);

    setBusy(false);

    if (isProfileExists) {
      _log.i("We have profile for user, redirect to home");
      return _navigationService.replaceWith(Routes.feedView);
    } else {
      _log.i("We don't have profile for user, redirect to select topics");
      return _navigationService.replaceWith(Routes.topicSelectionView);
    }
  }
}
