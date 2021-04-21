import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';

part 'onboard_login_event.dart';

part 'onboard_login_state.dart';

part 'onboard_login_bloc.freezed.dart';

@injectable
class OnboardLoginBloc extends Bloc<OnboardLoginEvent, OnboardLoginState> {
  OnboardLoginBloc() : super(OnboardLoginState.initial());

  @override
  Stream<OnboardLoginState> mapEventToState(
    OnboardLoginEvent event,
  ) async* {
    yield event.map(
      loginWithGoogle: (e) => OnboardLoginState.loginWithGoogleLoading(),
      loginWithGoogleSuccess: (e) => OnboardLoginState.initial(),
    );
  }
}
