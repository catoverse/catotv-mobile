import 'dart:io';

import 'package:feed/app/app.locator.dart';
import 'package:feed/core/constants/strings.dart';
import 'package:stacked_services/stacked_services.dart';

mixin SnackbarHelper {
  final _snackbarService = locator<SnackbarService>();
  final _dialogService = locator<DialogService>();

  Future<bool> showExitSnackbar() async {
    _snackbarService.showSnackbar(
      title: ConfirmExitTitle,
      duration: Duration(seconds: 5),
      message: ConfirmExitDescription,
      mainButtonTitle: "Yes",
      onMainButtonTapped: () {
        exit(0);
      },
    );

    return false;
  }

  Future<bool> showExitDialog() async {
    var response = await _dialogService.showConfirmationDialog(
        title: ConfirmExitTitle,
        description: ConfirmExitDescription,
        cancelTitle: "No",
        confirmationTitle: "Yes");

    if (response != null && response.confirmed) {
      exit(0);
    }

    return false;
  }
}
