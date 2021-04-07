part of 'topic_bloc.dart';

@freezed
abstract class TopicState with _$TopicState {
  const factory TopicState({
    List<Topic> allTopics,
    Failure failure,
  }) = _TopicState;
  factory TopicState.initial() => TopicState();
}
