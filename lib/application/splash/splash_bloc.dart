import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:cato_feed/domain/core/failure.dart';
import 'package:flutter/foundation.dart';

part 'splash_event.dart';

part 'splash_state.dart';

part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashState.loading());

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
   yield event.when(
      failure: (e) => SplashState.failure(e),
      updateRequired: () => const SplashState.forceUpdateRequired(),
      loading: () => const SplashState.loading()
    );
  }
}
