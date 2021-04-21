part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.authenticated(User user) = _Authenticated;
  const factory AuthState.sessionLoggedIn(User user) = _SessionLoggedIn;
  const factory AuthState.failure(String message) = _AuthFailure;
}

extension AuthStateX on AuthState {
  String getUserId() {
    return this.maybeMap(orElse: () => null, authenticated: (e) => e.user.id, sessionLoggedIn: (e) => e.user.id);
  }

  String getAvatarLink() {
    return this.maybeMap(orElse: () => '', authenticated: (e) => e.user.photoUrl ?? '', sessionLoggedIn: (e) => e.user.photoUrl ?? '');
  }
}