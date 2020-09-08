part of 'topicselection_bloc.dart';

@freezed
abstract class TopicSelectionEvent with _$TopicSelectionEvent {
  const factory TopicSelectionEvent.updateSelectedTopics(KtList<String> topicIds) = _UpdateSelectedTopic;
  const factory TopicSelectionEvent.selectTopic(String topicId) = _SelectTopic;
  const factory TopicSelectionEvent.unSelectTopic(String topicId) = _UnSelectTopic;
  const factory TopicSelectionEvent.saveTopics(User user) = _SaveTopics;
}