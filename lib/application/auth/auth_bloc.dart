import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cato_feed/domain/auth/i_auth_facade.dart';
import 'package:cato_feed/domain/auth/i_user_repository.dart';
import 'package:cato_feed/domain/auth/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  final IUserRepository _userRepository;

  AuthBloc(this._authFacade, this._userRepository) : super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        var isSignedIn = await _authFacade.isSignedIn();

        if (!isSignedIn) {
          yield AuthState.unauthenticated();
        } else {
          // Login with backend
          var newState = await _loginWithBackend();
          yield newState;
        }
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        yield const AuthState.unauthenticated();
      },
      googleLogin: (e) async* {
        var googleLoginResult = await _authFacade.signInWithGoogle();

        if (googleLoginResult.hasFailed()) {
          var message = googleLoginResult.failure?.map(
              cancelledByUser: (_) => 'Google Login cancelled.',
              serverError: (_) => 'Internal error while login.') ?? '';
          yield AuthState.failure(message);
        } else {
          // Login with backend
          var newState = await _loginWithBackend();
          yield newState;
        }
      },
      sessionLogin: (e) async* {
        var result = await _userRepository.sessionLogin(
            name: e.name ?? '', inviteCode: e.inviteCode ?? '');

        if (result.hasFailed()) {
          var message = result.failure.toString();
          yield AuthState.failure(message);
        } else {
          yield AuthState.sessionLoggedIn(result.data);
        }
      },
    );
  }

  Future<AuthState> _loginWithBackend() async {
    // Now get the SignedInUser
    var result = await _authFacade.getSignedInUser();

    if (result.hasFailed()) {
      // Yield Failure
      var message = result.failure.toString();
      return AuthState.failure(message);
    } else {
      // Yield Authenticated
      return AuthState.authenticated(result.data);
    }
  }
}
