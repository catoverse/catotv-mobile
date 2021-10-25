import 'package:feed/app/app.logger.dart';
import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/core/services/update_service.dart';
import 'package:feed/core/services/user_service.dart';
import 'package:feed/firebase/dynamic_links.dart';
import 'package:feed/firebase/fcm_service.dart';
import 'package:feed/remote/connectivity/connectivity_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartUpViewModel extends BaseViewModel {
  final _log = getLogger('StartUpViewModel');
  final _userService = locator<UserService>();
  final _connectivityService = locator<ConnectivityService>();
  final _appUpdateService = locator<AppUpdateService>();
  final _navigationService = locator<NavigationService>();
  final _fcmService = locator<FcmService>();
  final _dynamicLinks = locator<DynamicLinksService>();

  bool? _isConnected;
  bool get isConnected => _isConnected ?? true;

  Future<void> runStartupLogic({bool? connectivityPassed}) async {
    if (connectivityPassed == null) await checkConnectivity();

    if (!_isConnected!) {
      _log.i("No Internet connection, try again");
      return;
    }

    await _dynamicLinks.handleDynamicLinks();
    await _fcmService.setupFCM();

    await _appUpdateService.handleAppUpdate();

    bool isLoggedIn = _userService.hasLoggedInUser;

    if (isLoggedIn) {
      bool isProfileStored = await _userService.syncUser();

      if (!isProfileStored) return redirectToLogin();

      final currentUser = _userService.currentUser;
      _log.v('There is a user logged in with profile: $currentUser');

      _navigationService.replaceWith(Routes.feedView);
    } else {
      return redirectToLogin();
    }
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
