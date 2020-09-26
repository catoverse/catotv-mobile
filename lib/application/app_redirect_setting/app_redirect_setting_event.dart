part of 'app_redirect_setting_bloc.dart';

@freezed
abstract class AppRedirectSettingEvent with _$AppRedirectSettingEvent{
  const factory AppRedirectSettingEvent.toggleAppRedirect() = _Toggle;
  const factory AppRedirectSettingEvent.initialize() = _Init;
}
