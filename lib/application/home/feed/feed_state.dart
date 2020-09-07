part of 'feed_bloc.dart';

@freezed
abstract class FeedState with _$FeedState {
  const factory FeedState({
    int nextPageKey,
    String selectedTopicId,
    int pageSize,
    bool isLoading,
  }) = _FeedState;

  factory FeedState.initial() => FeedState(
      nextPageKey: 0,
      selectedTopicId: null,
      pageSize: 0,
      isLoading: false);
}
