import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cato_feed/domain/core/failure.dart';
import 'package:cato_feed/domain/core/i_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'init_event.dart';

part 'init_state.dart';

part 'init_bloc.freezed.dart';

@injectable
class InitBloc extends Bloc<InitEvent, InitState> {

  final IRepository _repository;

  InitBloc(this._repository) : super(InitState.initial());

  @override
  Stream<InitState> mapEventToState(InitEvent event,) async* {
    yield* event.when(
        // Returns async* whether force update is required or not
        requestAppVersionCheck: () async* {
          var result = await _repository.isForceUpdateRequired();

          if(result.hasFailed()) {
            yield InitState.failure(result.failure);
          } else {
            if(result.data) {
              yield InitState.updateRequired();
            } else {
              yield InitState.success();
            }
          }
        }
    );
  }
}
