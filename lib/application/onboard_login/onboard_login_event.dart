part of 'onboard_login_bloc.dart';

@freezed
abstract class OnboardLoginEvent with _$OnboardLoginEvent {
  const factory OnboardLoginEvent.loginWithGoogle() = _OnboardLoginWithGoogle;
  const factory OnboardLoginEvent.loginWithGoogleSuccess() = _OnboardLoginWithGoogleSuccess;
}
