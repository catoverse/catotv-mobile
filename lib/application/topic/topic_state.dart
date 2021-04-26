part of 'topic_bloc.dart';

@freezed
abstract class TopicState with _$TopicState {
  const factory TopicState({
    List<Topic> allTopics,
    Failure failure,
  }) = _TopicState;
  factory TopicState.initial() => TopicState(allTopics: [], failure: null);
}

extension TopicStateX on TopicState {
  String getName(String topicId) {
    return allTopics.where((element) => element.id == topicId).first?.name ?? " ";
  }

  Topic getTopic(String topicId) {
    return allTopics.where((element) => element.id == topicId).first ?? null;
  }
}
