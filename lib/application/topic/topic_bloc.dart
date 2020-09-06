import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cato_feed/domain/auth/i_user_repository.dart';
import 'package:cato_feed/domain/topic/i_topic_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cato_feed/domain/topic/topic.dart';
import 'package:cato_feed/domain/auth/user.dart';
import 'package:injectable/injectable.dart';
import 'package:cato_feed/domain/core/failure.dart';

part 'topic_event.dart';
part 'topic_state.dart';
part 'topic_bloc.freezed.dart';

@injectable
class TopicBloc extends Bloc<TopicEvent, TopicState> {

  final IUserRepository _userRepository;
  final ITopicRepository _topicRepository;

  TopicBloc(this._userRepository, this._topicRepository) : super(TopicState.initial());


  @override
  Stream<TopicState> mapEventToState(
    TopicEvent event,
  ) async* {
    yield* event.map(
      get: (e) async* {
        var selectedTopics = await _userRepository.getSelectedTopics(e.user);
        var topicResult = await _topicRepository.getTopics();

        if(topicResult.hasFailed()) {
          yield state.copyWith(selectedTopicIds: selectedTopics, failure: topicResult.failure);
        } else {
          yield state.copyWith(selectedTopicIds: selectedTopics, allTopics: topicResult.data.asList());
        }
      },
      refreshSelectedTopics: (e) async* {
        var selectedTopics = await _userRepository.getSelectedTopics(e.user);
        yield state.copyWith(selectedTopicIds: selectedTopics);
      }
    );
  }
}
