import 'package:feed/ui/global/bottom_sheet.dart';
import 'package:feed/core/enums/bottom_sheet.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app.locator.dart';

void setupBottomSheetUi() {
  final bottomSheetService = locator<BottomSheetService>();

  final builders = {
    BottomSheetType.threeButton: (context, sheetRequest, completer) =>
        ThreeButtonBottomSheet(request: sheetRequest, completer: completer),
    BottomSheetType.floating: (context, sheetRequest, completer) =>
        FloatingBoxBottomSheet(request: sheetRequest, completer: completer),
    BottomSheetType.constraint: (context, sheetRequest, completer) =>
        ConstraintBottomSheet(request: sheetRequest, completer: completer),
  };

  bottomSheetService.setCustomSheetBuilders(builders);
}

void setupSnackbarConfig() {
  final _snackbarService = locator<SnackbarService>();
  _snackbarService.registerSnackbarConfig(SnackbarConfig(
      backgroundColor: AppColors.canvasDark,
      titleColor: AppColors.background,
      borderRadius: 6,
      messageColor: Colors.white54));
}

setupStacked() {
  setupBottomSheetUi();
  setupSnackbarConfig();
}
