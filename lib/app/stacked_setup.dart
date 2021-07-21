import 'package:feed/ui/global/bottom_sheet.dart';
import 'package:feed/core/enums/bottom_sheet.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app.locator.dart';

void setupBottomSheetUi() {
  final bottomSheetService = locator<BottomSheetService>();

  final builders = {
    BottomSheetType.ThreeButton: (context, sheetRequest, completer) =>
        ThreeButtonBottomSheet(request: sheetRequest, completer: completer),
    BottomSheetType.Floating: (context, sheetRequest, completer) =>
        FloatingBoxBottomSheet(request: sheetRequest, completer: completer),
    BottomSheetType.Constraint: (context, sheetRequest, completer) =>
        ConstraintBottomSheet(request: sheetRequest, completer: completer),
  };

  bottomSheetService.setCustomSheetBuilders(builders);
}
