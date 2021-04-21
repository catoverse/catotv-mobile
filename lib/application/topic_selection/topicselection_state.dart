part of 'topicselection_bloc.dart';

@freezed
abstract class TopicSelectionState with _$TopicSelectionState {
  const factory TopicSelectionState({
    @required KtList<String> selectedTopicIds,
    bool topicSavedSuccess,
    Failure failure,
  }) = _TopicSelectionState;
  factory TopicSelectionState.initial() => TopicSelectionState(selectedTopicIds: listOf(), topicSavedSuccess: false, failure: null);

}

extension TopicSelectionStateX on TopicSelectionState {
  bool isSelected(String topicId) {
    return selectedTopicIds.contains(topicId);
  }
}
