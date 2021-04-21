part of 'videos_by_category_bloc.dart';

@freezed
abstract class VideosByCategoryState with _$VideosByCategoryState {
  const factory VideosByCategoryState({
    Topic topic,
    List<Post> allPosts, List<Post> lastLazilyLoadedPosts, Failure failure
}) = _VideosByCategoryState;

  factory VideosByCategoryState.initial() => VideosByCategoryState(topic: null, allPosts: [], lastLazilyLoadedPosts: [], failure: null);
}

