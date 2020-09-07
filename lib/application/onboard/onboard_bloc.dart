import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cato_feed/domain/core/failure.dart';
import 'package:injectable/injectable.dart';

part 'onboard_event.dart';

part 'onboard_state.dart';

part 'onboard_bloc.freezed.dart';

@injectable
class OnboardBloc extends Bloc<OnboardEvent, OnboardState> {
  OnboardBloc() : super(OnboardState.initial());

  @override
  Stream<OnboardState> mapEventToState(
    OnboardEvent event,
  ) async* {
    yield event.map(
      cardSwiped: (e) => state.copyWith(currentCardIndex: (state.currentCardIndex + 1) % e.totalCards, failure: null),
      failure: (e) => state.copyWith(failure: e.failure)
    );
  }
}
