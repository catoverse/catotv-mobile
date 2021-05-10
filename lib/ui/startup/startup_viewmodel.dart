import 'package:feed/app/app.logger.dart';
import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/core/models/result/failure.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartUpViewModel extends BaseViewModel {
  final log = getLogger('StartUpViewModel');
  final UserService _userService = locator<UserService>();
  final APIService _apiService = locator<APIService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();

  Future<void> runStartupLogic() async {
    var isLoggedIn = await _userService.hasLoggedInUser();
    var forceUpdateRequired = await _apiService.checkUpdateRequired();

    if (isLoggedIn is Failure || forceUpdateRequired is Failure) {
      log.v(isLoggedIn);
      _snackbarService.showSnackbar(message: "Internal Error please try again");
      return;
    }

    if (forceUpdateRequired is bool && forceUpdateRequired) {
      log.v('The app needs to be updated, So redirect to update app screen');
      return _navigationService.navigateTo(Routes.updateView);
    }

    if (isLoggedIn) {
      log.v('We have a user session on disk. Sync the user profile ...');

      final currentUser = _userService.currentUser;
      log.v('User sync complete. User profile: $currentUser');

      _navigationService.navigateTo(Routes.homeView);
    } else {
      log.v('No user on disk, navigate to the LoginView');
      _navigationService.navigateTo(Routes.onboardingView);
    }
  }
}
