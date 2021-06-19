import 'dart:io';

import 'package:feed/app/app.locator.dart';
import 'package:feed/core/constants/strings.dart';
import 'package:stacked_services/stacked_services.dart';

mixin SnackbarHelper {
  final SnackbarService _snackbarService = locator<SnackbarService>();

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
}
