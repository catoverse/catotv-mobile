import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cato_feed/domain/posts/i_post_repository.dart';
import 'package:cato_feed/domain/posts/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'feed_event.dart';

part 'feed_state.dart';

part 'feed_bloc.freezed.dart';

@injectable
class FeedBloc extends Bloc<FeedEvent, FeedState> {
  final IPostRepository _postRepository;

  FeedBloc(this._postRepository) : super(FeedState.initial());

  @override
  Stream<FeedState> mapEventToState(
    FeedEvent event,
  ) async* {
    yield event.map(
      load: (e) {
        if(state.isLoading) {
          return state;
        } else {
          return state.copyWith(nextPageKey: e.nextPageKey, pageSize: e.limit);
        }
      },
      loadFinished: (e) => state.copyWith(isLoading: false),
      selectTopic: (e) => state.copyWith(selectedTopicId: e.topicId, isLoading: false),
    );
  }
}
