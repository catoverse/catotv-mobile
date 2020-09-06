part of 'topic_bloc.dart';

@freezed
abstract class TopicEvent with _$TopicEvent {
  const factory TopicEvent.get(User user) = _GetTopics;
  const factory TopicEvent.refreshSelectedTopics(User user) = _RefreshTopicSelection;
}