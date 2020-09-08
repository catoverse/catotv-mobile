part of 'single_post_bloc.dart';

@freezed
abstract class SinglePostState with _$SinglePostState {
  const factory SinglePostState({Post post, Failure failure}) =_SinglePostState;

  factory SinglePostState.initial() => SinglePostState(post: null, failure: null);
}
