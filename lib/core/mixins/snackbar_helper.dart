import 'dart:io';

import 'package:feed/app/app.locator.dart';
import 'package:feed/app/strings.dart';
import 'package:stacked_services/stacked_services.dart';

mixin SnackbarHelper {
  final SnackbarService _snackbarService = locator<SnackbarService>();

  Future<bool> showExitSnackbar() async {
    _snackbarService.showSnackbar(
      title: AppStrings.confirmExitInfo,
      duration: Duration(seconds: 5),
      message: AppStrings.confirmExitMessage,
      mainButtonTitle: "Yes",
      onMainButtonTapped: () {
        exit(0);
      },
    );

    return false;
  }
}
