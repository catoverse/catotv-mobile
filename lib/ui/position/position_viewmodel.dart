import 'dart:developer';

import 'package:feed/app/app.locator.dart';
import 'package:feed/core/mixins/snackbar_helper.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';

class PositionViewModel extends BaseViewModel with SnackbarHelper {
  final _apiService = locator<APIService>();
  final _authService = locator<FirebaseAuthenticationService>();

  void getData() async {
    setBusy(true);

    final getWaitlist =
        await _apiService.addUserToWailist(_authService.currentUser!.email!);

    log(getWaitlist.toString());

    _authService.logout();
    setBusy(false);
  }

  String refferalCode = '';

  void onTapCopy() async {
    await Clipboard.setData(ClipboardData(text: refferalCode));
    copiedToClipboardSnackbar();
  }
}
