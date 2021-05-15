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
        variant: BottomSheetType.ThreeButton,
        title: 'You need an account to continue',
        description:
            'We’re currently in early access mode, you can’t enter unless you have an invite.',
        mainButtonTitle: 'Request Invite',
        secondaryButtonTitle: 'I already have an invite code',
        additionalButtonTitle: 'Existing user? Sign in to continue');

    if (sheetResponse?.responseData is ThreeButtonResponseData) {
      ThreeButtonResponseData responseData = sheetResponse?.responseData;
      _log.v(responseData);

      switch (responseData) {
        case ThreeButtonResponseData.Primary:
          break;
        case ThreeButtonResponseData.Secondary:
          //TODO: navigate to enter invite code
          break;
        case ThreeButtonResponseData.Teritary:
          await loginWithGoogle();
          break;
        default:
      }
    }
  }

  loginWithGoogle() async {
    var user = await _userService.loginWithGoogle();

    if (user is Failure) {
    } else {
      _log.i("user: $user");
    }
  }
}
