part of 'post_bloc.dart';

@freezed
abstract class PostEvent with _$PostEvent {
  const factory PostEvent.loadFeed(int skip, int limit) = _LoadFeed;
  const factory PostEvent.loadFeedByTopic(int skip, int limit, String topicId) = _LoadFeedByTopic;
}