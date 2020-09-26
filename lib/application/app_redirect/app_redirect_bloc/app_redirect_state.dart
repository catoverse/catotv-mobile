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
  }) = _AppRedirectState;

  factory AppRedirectState.initial() => AppRedirectState(
        totalSteps: 2,
        currentStep: 1,
        blockedPackages: List(),
        failure: null,
        startTime: null,
        endTime: null,
        selectedWeekDays: listOf(),
        appUsagePermission: PermissionState.NONE,
        batteryPermission: PermissionState.NONE,
      );
}

enum PermissionState { NONE, GRANTED, NOT_ALLOWED }

extension AppRedirectStateX on AppRedirectState {
  bool isWeekDaySelected(int weekDay) {
    return selectedWeekDays?.contains(weekDay) ?? false;
  }

  String getPermissionButtonText() {
    if(appUsagePermission == PermissionState.NOT_ALLOWED) return "Go to Settings";
    if(batteryPermission == PermissionState.NOT_ALLOWED) return "Grant Permission";
    return "Finish";
  }

  String getPermissionText() {
    if(appUsagePermission == PermissionState.NOT_ALLOWED)
    return "Almost done, set App Access. Cato Usage Access Must Be Enabled In Order To Restrict Apps.";

    if(batteryPermission == PermissionState.NOT_ALLOWED)
      return "Last permission. Cato need to continue run in background to continue block apps.";

    return "Done!. Click on Finish and App Redirect will start working.";
  }
}
