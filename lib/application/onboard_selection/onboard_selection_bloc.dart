import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cato_feed/domain/auth/user.dart';
import 'package:cato_feed/domain/core/failure.dart';
import 'package:cato_feed/domain/topic/topic.dart';
import 'package:cato_feed/presentation/widgets/signinbutton/button.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'onboard_selection_event.dart';

part 'onboard_selection_state.dart';

part 'onboard_selection_bloc.freezed.dart';

@injectable
class OnboardSelectionBloc
    extends Bloc<OnboardSelectionEvent, OnboardSelectionState> {
  OnboardSelectionBloc() : super(OnboardSelectionState.initial());

  @override
  Stream<OnboardSelectionState> mapEventToState(
    OnboardSelectionEvent event,
  ) async* {
    yield* event.map(
      updateSelectedTopics: (e) async* {
        yield state.copyWith(selectedTopic: e.topic, topicSavedSuccess: state.saveButtonClicked, failure: null);
      },
      selectTopic: (e) async* {
        yield state.copyWith(
            selectedTopic: state.selectedTopic.toMutableList()
              ..add(e.topic));
      },
      unSelectTopic: (e) async* {
        yield state.copyWith(
            selectedTopic: state.selectedTopic.toMutableList()
              ..remove(e.topic));
      },
      failure: (e) async* {
        yield state.copyWith(failure: e.failure, saveButtonClicked: false);
      },
      saveButtonClicked: (e) async* {
        yield state.copyWith(saveButtonClicked: true);
      },
    );
  }
}
