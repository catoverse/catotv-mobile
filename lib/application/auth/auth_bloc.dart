import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cato_feed/domain/auth/i_auth_facade.dart';
import 'package:cato_feed/domain/auth/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:cato_feed/domain/auth/auth_failure.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(authCheckRequested: (e) async* {
      var isSignedIn = await _authFacade.isSignedIn();

      if (!isSignedIn) {
        yield AuthState.unauthenticated();
      } else {
        // Login with backend
        var newState = await _loginWithBackend();
        yield newState;
      }
    }, signedOut: (e) async* {
      await _authFacade.signOut();
      yield const AuthState.unauthenticated();
    }, login: (e) async* {
      var googleLoginResult = await _authFacade.signInWithGoogle();

      if (googleLoginResult.hasFailed()) {
        var message = googleLoginResult.failure.map(
            cancelledByUser: (_) => 'Login required to access the app.',
            serverError: (_) => 'Internal error while login.');
        yield AuthState.failure(message);
      } else {
        // Login with backend
        var newState = await _loginWithBackend();
        yield newState;
      }
    });
  }

  Future<AuthState> _loginWithBackend() async {
    // Now get the SignedInUser
    var result = await _authFacade.getSignedInUser();

    if (result.hasFailed()) {
      // Yield Failure
      var message = result.failure.map(
        error: (e) => e.error.toString(),
        exception: (e) => e.exception.toString(),
        message: (e) => e.message,
      );
      return AuthState.failure(message);
    } else {
      // Yield Authenticated
      return AuthState.authenticated(result.data);
    }
  }
}
