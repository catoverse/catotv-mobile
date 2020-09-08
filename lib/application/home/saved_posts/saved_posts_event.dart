part of 'saved_posts_bloc.dart';

@freezed
abstract class SavedPostsEvent with _$SavedPostsEvent {
  const factory SavedPostsEvent.refresh() = _Refresh;
  const factory SavedPostsEvent.updateSelectedPage(SelectedPage selectedPage) = _UpdateSelectedPage;
}