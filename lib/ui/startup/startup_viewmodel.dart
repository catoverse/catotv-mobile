import 'package:feed/app/app.logger.dart';
import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/core/enums/connectivity_status.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:feed/remote/connectivity/connectivity_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartUpViewModel extends StreamViewModel<ConnectivityStatus> {
  final _log = getLogger('StartUpViewModel');
  final UserService _userService = locator<UserService>();
  final APIService _apiService = locator<APIService>();
  final ConnectivityService _connectivityService =
      locator<ConnectivityService>();
  final NavigationService _navigationService = locator<NavigationService>();

  bool get isOffline => data == ConnectivityStatus.Offline;

  Future<void> runStartupLogic() async {
    bool isLoggedIn = _userService.hasLoggedInUser();
    var forceUpdateRequired = await _apiService.checkUpdateRequired();

    if (forceUpdateRequired is bool && forceUpdateRequired) {
      _log.v('The app needs to be updated, navigate to update screen');
      _navigationService.replaceWith(Routes.updateView);
    }

    if (isLoggedIn) {
      _log.v('We have a user session on disk. Sync the user profile ...');

      bool isProfileStored = await _userService.populateCurrentUser();

      if (!isProfileStored) redirectToLogin();

      final currentUser = _userService.currentUser;
      _log.v('User sync complete. User profile: $currentUser');

      _navigationService.replaceWith(Routes.homeView);
    } else
      return redirectToLogin();
  }

  void redirectToLogin() {
    _log.v('No user on disk, navigate to the onboarding');
    _navigationService.replaceWith(Routes.onboardingView);
  }

  @override
  void onData(ConnectivityStatus? data) {
    if (data == ConnectivityStatus.Offline) return;

    if (data == ConnectivityStatus.WiFi || data == ConnectivityStatus.Cellular)
      runStartupLogic();

    super.onData(data);
  }

  @override
  Stream<ConnectivityStatus> get stream => _connectivityService.connectivity;
}
