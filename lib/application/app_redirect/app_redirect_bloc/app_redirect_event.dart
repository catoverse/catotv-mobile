part of 'app_redirect_bloc.dart';

@freezed
abstract class AppRedirectEvent with _$AppRedirectEvent {
    const factory AppRedirectEvent.initialize() = _Initialize;
    const factory AppRedirectEvent.changeStep(int currentStep) = _ChangeStep;
    const factory AppRedirectEvent.addOrRemoveWeekDay(int weekDay) = _AddOrRemoveWeekDay;
    const factory AppRedirectEvent.updateTime(String startTime, String endTime) = _UpdateTime;
    // const factory AppRedirectEvent.updateWeekDays(List<int> weekDays) = _UpdateWeekDays;
}
