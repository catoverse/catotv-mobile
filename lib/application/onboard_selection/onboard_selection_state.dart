part of 'onboard_selection_bloc.dart';

@freezed
abstract class OnboardSelectionState with _$OnboardSelectionState {
  const factory OnboardSelectionState({
    @required KtList<Topic> selectedTopic,
    bool topicSavedSuccess,
    bool saveButtonClicked,
    Failure failure,
  }) = _OnboardSelectionState;
  factory OnboardSelectionState.initial() => OnboardSelectionState(selectedTopic: listOf(), topicSavedSuccess: false, failure: null, saveButtonClicked: false);

}

extension OnboardSelectionStateX on OnboardSelectionState {
  bool isSelected(Topic topic) {
    return selectedTopic.contains(topic);
  }

  bool isButtonClicked() {
    return this.saveButtonClicked;
  }

  List<String> getTopicIds() {
    return this.selectedTopic.map((t) => t.id).asList();
  }
}
