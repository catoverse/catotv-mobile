part of 'app_redirect_bloc.dart';

@freezed
abstract class AppRedirectState with _$AppRedirectState {
  const factory AppRedirectState({
    int totalSteps,
    int currentStep,
    List<String> blockedPackages, // List of blockedPackages
    //KtList<String> selectedPackages, // List of selectedPackages
    String startTime, // StartTime
    String endTime, // EndTime
    KtList<int> selectedWeekDays, // SelectedWeekDays
    Failure failure, // Failure
    PermissionState appUsagePermission,
    PermissionState batteryPermission,
    PermissionState overlayPermission,
  }) = _AppRedirectState;

  factory AppRedirectState.initial() => AppRedirectState(
        totalSteps: 2,
        currentStep: 1,
        blockedPackages: null,
        failure: null,
        startTime: null,
        endTime: null,
        selectedWeekDays: listOf(),
        appUsagePermission: PermissionState.NONE,
        batteryPermission: PermissionState.NONE,
        overlayPermission: PermissionState.NONE,
      );
}

enum PermissionState { NONE, GRANTED, NOT_ALLOWED }

extension AppRedirectStateX on AppRedirectState {
  bool isWeekDaySelected(int weekDay) {
    return selectedWeekDays?.contains(weekDay) ?? false;
  }

  String getPermissionButtonText() {
    if (appUsagePermission == PermissionState.NOT_ALLOWED)
      return "Go to Settings";
    if (batteryPermission == PermissionState.NOT_ALLOWED)
      return "Battery Permission";
    if(overlayPermission == PermissionState.NOT_ALLOWED)
      return "Overlay Permission";
    return "Finish";
  }

  String getPermissionText() {
    if (appUsagePermission == PermissionState.NOT_ALLOWED)
      return "Almost done, set App Access. Cato Usage Access Must Be Enabled In Order To Restrict Apps.";

    if (batteryPermission == PermissionState.NOT_ALLOWED)
      return "Cato need to continue run in background to continue block apps.";

    if(overlayPermission == PermissionState.NOT_ALLOWED)
      return "Final step. Cato need overlay permission in order to open cato app from background.";

    return "Done!. Click on Finish and App Redirect will start working.";
  }
}
