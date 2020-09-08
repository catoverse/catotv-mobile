import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cato_feed/domain/topic/topic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:cato_feed/domain/auth/i_user_repository.dart';
import 'package:cato_feed/domain/auth/user.dart';
import 'package:cato_feed/domain/core/failure.dart';
import 'package:cato_feed/domain/topic/i_topic_repository.dart';

part 'topicselection_event.dart';
part 'topicselection_state.dart';
part 'topicselection_bloc.freezed.dart';

@injectable
class TopicSelectionBloc
    extends Bloc<TopicSelectionEvent, TopicSelectionState> {

  final IUserRepository _userRepository;
  final ITopicRepository _topicRepository;

  TopicSelectionBloc(this._userRepository, this._topicRepository) : super(TopicSelectionState.initial());

  @override
  Stream<TopicSelectionState> mapEventToState(
    TopicSelectionEvent event,
  ) async* {
    yield* event.when(
        selectTopic: (topicId) async* {
          yield state.copyWith(selectedTopicIds: state.selectedTopicIds.toMutableList()..add(topicId));
        },
        unSelectTopic: (topicId) async*{
          yield state.copyWith(selectedTopicIds: state.selectedTopicIds.
          toMutableList()
            ..remove(topicId));
        },
        updateSelectedTopics: (topicIds) async* {
          yield state.copyWith(selectedTopicIds: topicIds);
        },
        saveTopics: (user) async* {
          var result = await _userRepository.updateTopics(user, state.selectedTopicIds);

          if(result.hasFailed()) {
            yield state.copyWith(failure: result.failure, topicSavedSuccess: null);
          } else {
            yield state.copyWith(topicSavedSuccess: true, failure: null);
          }
        });
  }
}
