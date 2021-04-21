part of 'onboard_selection_bloc.dart';

@freezed
abstract class OnboardSelectionEvent with _$OnboardSelectionEvent {
  const factory OnboardSelectionEvent.updateSelectedTopics(KtList<Topic> topic) = _UpdateSelectedTopic;
  const factory OnboardSelectionEvent.selectTopic(Topic topic) = _SelectTopic;
  const factory OnboardSelectionEvent.unSelectTopic(Topic topic) = _UnSelectTopic;
  const factory OnboardSelectionEvent.saveButtonClicked() = _SaveButtonClicked;
  const factory OnboardSelectionEvent.failure(Failure failure) = _Failure;
}
