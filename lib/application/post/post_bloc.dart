import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cato_feed/domain/posts/i_post_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cato_feed/domain/posts/post.dart';
import 'package:injectable/injectable.dart';
import 'package:cato_feed/domain/core/failure.dart';

part 'post_event.dart';

part 'post_state.dart';

part 'post_bloc.freezed.dart';

@injectable
class PostBloc extends Bloc<PostEvent, PostState> {
  final IPostRepository _postRepository;

  PostBloc(this._postRepository) : super(PostState.initial(15));

  @override
  Stream<PostState> mapEventToState(
    PostEvent event,
  ) async* {
    yield* event.map(
      loadFeed: (e) async* {
        var result = await _postRepository.getPosts(e.skip, e.limit, null);

        if(result.hasFailed()) {
          yield state.copyWith(failure: result.failure);
        } else {
          var newPosts = (state.allFeed.posts ?? List())..addAll(result.data.asList());
          var skip = state.allFeed.skip + result.data.size;
          yield state.copyWith.allFeed(posts: newPosts, skip: skip)..copyWith(failure: null);
        }
      },
      loadFeedByTopic: (e) async* {
        var result = await _postRepository.getPosts(e.skip, e.limit, e.topicId);

        if(result.hasFailed()) {
          yield state.copyWith(failure: result.failure);
        } else {
          var newPosts = (state.feedByTopic.posts ?? List());
          var skip = state.feedByTopic.skip;
          if(state.feedByTopic.topicId != e.topicId) {
            newPosts = List();
            skip = 0;
          }
          newPosts = newPosts..addAll(result.data.asList());
          skip += result.data.size;
          yield state.copyWith.feedByTopic(posts: newPosts, skip: skip, topicId: e.topicId)..copyWith(failure: null);
        }
      },
    );
  }
}
