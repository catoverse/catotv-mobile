part of 'app_redirect_setting_bloc.dart';

@freezed
abstract class AppRedirectSettingState with _$AppRedirectSettingState {
  const factory AppRedirectSettingState({bool isEnabled}) = _AppRedirectSettingState;
  factory AppRedirectSettingState.initial() => AppRedirectSettingState(isEnabled: false);
}
