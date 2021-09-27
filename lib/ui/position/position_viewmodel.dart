import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/core/mixins/snackbar_helper.dart';
import 'package:feed/core/services/share_service.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

class PositionViewModel extends BaseViewModel with SnackbarHelper {
  final _apiService = locator<APIService>();
  final _authService = locator<FirebaseAuthenticationService>();
  final _shareService = locator<ShareService>();
  final _navigationService = locator<NavigationService>();

  void getData() async {
    setBusy(true);

    final getWaitlist =
        await _apiService.addUserToWailist(_authService.currentUser!.email!);

    if (getWaitlist != null) {
      refferalCode = getWaitlist.referralLink.split('=').last;
      _referalLink = getWaitlist.referralLink;
      yourPosition = getWaitlist.currentPriority;
      referralsDone = getWaitlist.totalReferrals;
      isNewUser = getWaitlist.currentPriority == getWaitlist.totalUsers;
    } else {
      somethingWrong = true;
    }

    _authService.logout();
    setBusy(false);
    notifyListeners();
  }

  String refferalCode = '';

  String? _referalLink;
  int? yourPosition;
  int? referralsDone;
  bool isNewUser = true;
  bool somethingWrong = false;

  String get heading => isNewUser
      ? 'Thank You\nYou have been added to waitlist\n'
      : 'You are already on waitlist\n';

  void onTapShare() async {
    if (_referalLink != null) {
      _shareService.share(_referalLink!);
    }
  }

  void onTapBack() {
    _navigationService.replaceWith(Routes.onboardingView);
  }

  void onTapCopy() async {
    await Clipboard.setData(
      ClipboardData(
        text: _referalLink,
      ),
    );
    copiedToClipboardSnackbar();
  }
}
