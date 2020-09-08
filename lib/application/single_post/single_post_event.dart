part of 'single_post_bloc.dart';

@freezed
abstract class SinglePostEvent with _$SinglePostEvent {
  const factory SinglePostEvent.loadPost(String postId) = _LoadPost;
}