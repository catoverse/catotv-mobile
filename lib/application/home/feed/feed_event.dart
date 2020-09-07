part of 'feed_bloc.dart';

@freezed
abstract class FeedEvent with _$FeedEvent {
  const factory FeedEvent.load(int nextPageKey, int limit) = _Load;
  const factory FeedEvent.loadFinished() = _LoadFinished;
  const factory FeedEvent.selectTopic({String topicId}) = _SelectTopic;
}