part of 'saved_posts_bloc.dart';

@freezed
abstract class SavedPostsState with _$SavedPostsState {
  const factory SavedPostsState({
    List<Post> savedPosts,
    List<Post> likedPosts
  }) = _SavedPostsState;
  factory SavedPostsState.initial() => SavedPostsState(savedPosts: List(), likedPosts: List());
}
