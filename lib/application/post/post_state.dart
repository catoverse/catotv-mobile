part of 'post_bloc.dart';

@freezed
abstract class PostState with _$PostState {
  const factory PostState({List<Post> allPosts, List<Post> lastLazilyLoadedPosts, Failure failure}) = _PostState;
  factory PostState.initial() => PostState(allPosts: [], lastLazilyLoadedPosts: [], failure: null);
}