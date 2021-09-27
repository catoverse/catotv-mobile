import 'dart:io';

import 'package:feed/app/app.locator.dart';
import 'package:feed/core/constants/strings.dart';
import 'package:stacked_services/stacked_services.dart';

mixin SnackbarHelper {
  final _snackbarService = locator<SnackbarService>();
  final _dialogService = locator<DialogService>();

  Future<bool> showExitSnackbar() async {
    _snackbarService.showSnackbar(
      title: confirmExitTitle,
      duration: const Duration(seconds: 5),
      message: confirmExitDescription,
      mainButtonTitle: "Yes",
      onMainButtonTapped: () {
        exit(0);
      },
    );

    return false;
  }

  Future<bool> showExitDialog() async {
    var response = await _dialogService.showConfirmationDialog(
        title: confirmExitTitle,
        description: confirmExitDescription,
        cancelTitle: "No",
        confirmationTitle: "Yes");

    if (response != null && response.confirmed) {
      exit(0);
    }

    return false;
  }

  void copiedToClipboardSnackbar() {
    _snackbarService.showSnackbar(
      message: kTextCopiedToClipboardMessage,
    );
  }
}
