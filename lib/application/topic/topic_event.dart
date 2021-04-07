part of 'topic_bloc.dart';

@freezed
abstract class TopicEvent with _$TopicEvent {
  const factory TopicEvent.get() = _GetTopics;
}