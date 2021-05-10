import 'dart:io';

import 'package:feed/app/app.locator.dart';
import 'package:feed/app/strings.dart';
import 'package:stacked_services/stacked_services.dart';

mixin WillPopHelper {
  final SnackbarService _snackbarService = locator<SnackbarService>();

  Future<bool> onWillPop() async {
    await _snackbarService.showCustomSnackBar(
        title: AppStrings.confirmExitInfo,
        duration: Duration(seconds: 5),
        message: AppStrings.confirmExitMessage,
        onMainButtonTapped: () {
          exit(0);
        },
        mainButtonTitle: "Yes");

    return false;
  }
}
