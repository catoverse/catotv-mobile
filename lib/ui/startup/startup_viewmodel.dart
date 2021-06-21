import 'package:feed/app/app.logger.dart';
import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/core/services/user_service.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:feed/remote/connectivity/connectivity_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartUpViewModel extends BaseViewModel {
  final _log = getLogger('StartUpViewModel');
  final _userService = locator<UserService>();
  final _apiService = locator<APIService>();
  final _connectivityService = locator<ConnectivityService>();
  final _navigationService = locator<NavigationService>();

  bool? _isConnected;
  bool get isConnected => _isConnected ?? true;

  Future<void> runStartupLogic({bool? connectivityPassed}) async {
    if (connectivityPassed == null) await checkConnectivity();

    if (!_isConnected!) {
      _log.v("No Internet connection, try again");
      return;
    }

    var forceUpdateRequired = await _apiService.checkUpdateRequired();

    if (forceUpdateRequired is bool && forceUpdateRequired) {
      _log.v('The app needs to be updated, navigate to update screen');
      _navigationService.replaceWith(Routes.updateView);
      return;
    }

    bool isLoggedIn = _userService.hasLoggedInUser;

    if (isLoggedIn) {
      bool isProfileStored = await _userService.syncUser();

      if (!isProfileStored) return redirectToLogin();

      final currentUser = _userService.currentUser;
      _log.v('There is a user logged in with profile: $currentUser');

      _navigationService.replaceWith(Routes.homeView);
    } else
      return redirectToLogin();
  }

  void redirectToLogin() {
    _log.v('No user on disk, navigate to the onboarding');
    _navigationService.replaceWith(Routes.onboardingView);
  }

  checkConnectivity() async {
    _isConnected = await _connectivityService.isConnected;
    notifyListeners();
  }

  onModelReady() async {
    await checkConnectivity();
    runStartupLogic(connectivityPassed: _isConnected);
  }
}
