import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart';

part 'feed_event.dart';

part 'feed_state.dart';

part 'feed_bloc.freezed.dart';

@injectable
class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc() : super(FeedState.initial());

  @override
  Stream<FeedState> mapEventToState(
    FeedEvent event,
  ) async* {
    yield* event.map(
      load: (e) async* {
        if (state.isLoading) {
          yield state;
        } else {
          yield state.copyWith(nextPageKey: e.nextPageKey, pageSize: e.limit);
        }
      },
      loadFinished: (e) async* {
        yield state.copyWith(isLoading: false);
      },
      selectTopic: (e) async* {
        yield state.copyWith(selectedTopicId: e.topicId, isLoading: false);
      },
    );
  }
}
