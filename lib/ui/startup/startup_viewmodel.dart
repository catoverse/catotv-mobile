import 'package:feed/app/app.logger.dart';
import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartUpViewModel extends BaseViewModel {
  final _log = getLogger('StartUpViewModel');
  final UserService _userService = locator<UserService>();
  final APIService _apiService = locator<APIService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future<void> runStartupLogic() async {
    bool isLoggedIn = _userService.hasLoggedInUser();
    var forceUpdateRequired = await _apiService.checkUpdateRequired();

    if (forceUpdateRequired is bool && forceUpdateRequired) {
      _log.v('The app needs to be updated, So redirect to update app screen');
      _navigationService.replaceWith(Routes.updateView);
    }

    if (isLoggedIn) {
      _log.v('We have a user session on disk. Sync the user profile ...');

      await _userService.populateCurrentUser();
      final currentUser = _userService.currentUser;
      _log.v('User sync complete. User profile: $currentUser');

      _navigationService.replaceWith(Routes.homeView);
    } else {
      _log.v('No user on disk, navigate to the LoginView');
      _navigationService.replaceWith(Routes.onboardingView);
    }
  }
}
