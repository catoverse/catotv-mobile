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
}
