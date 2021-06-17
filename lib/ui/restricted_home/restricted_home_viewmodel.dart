import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/core/enums/bottom_sheet.dart';
import 'package:feed/core/mixins/snackbar_helper.dart';
import 'package:feed/core/models/result/failure.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RestrictedHomeViewModel extends BaseViewModel with SnackbarHelper {
  final BottomSheetService _bottomSheetService = locator<BottomSheetService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final UserService _userService = locator<UserService>();
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
          _navigationService.replaceWith(Routes.inviteView);
          break;
        default:
      }
    }
  }

  loginWithGoogle() async {
    setBusy(true);
    bool isProfileExists = false;

    var user = await _userService.loginWithGoogle();

    if (user is Failure) {
      return;
    } else {
      _log.i("User Login Successful : Logged in user: $user");
      isProfileExists = await _userService.isUserProfileExists();
    }

    setBusy(false);

    if (isProfileExists) {
      _log.i("We hava a profile for user, redirect to home");
      return _navigationService.replaceWith(Routes.homeView);
    } else {
      _log.i("We don't hava a profile for user, redirect to select topics");
      return _navigationService.replaceWith(Routes.topicSelectionView);
    }
  }
}
