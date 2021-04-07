part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = _AuthCheckRequested;
  const factory AuthEvent.signedOut() = _AuthSignedOut;
  const factory AuthEvent.googleLogin() = _AuthGoogleLogin;
  const factory AuthEvent.sessionLogin({String name, String inviteCode}) = _AuthSessionLogin;
}