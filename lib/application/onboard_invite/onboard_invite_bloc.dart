import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cato_feed/domain/core/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';

part 'onboard_invite_event.dart';

part 'onboard_invite_state.dart';

part 'onboard_invite_bloc.freezed.dart';

@injectable
class OnboardInviteBloc extends Bloc<OnboardInviteEvent, OnboardInviteState> {
  OnboardInviteBloc() : super(OnboardInviteState.initial());

  @override
  Stream<OnboardInviteState> mapEventToState(
    OnboardInviteEvent event,
  ) async* {
    yield* event.map(
      verifyInviteCode: (e) async* {
        // TODO: Verify Invite Code here
      },
      joinWaitList: (e) async* {
        // TODO: Call the waitlist api here
      },
    );
  }
}
