import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cato_feed/domain/posts/i_post_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cato_feed/domain/posts/post.dart';
import 'package:injectable/injectable.dart';
import 'package:cato_feed/domain/core/failure.dart';
import 'package:flutter/foundation.dart';

part 'post_event.dart';

part 'post_state.dart';

part 'post_bloc.freezed.dart';

@injectable
class PostBloc extends Bloc<PostEvent, PostState> {
  final IPostRepository _postRepository;

  PostBloc(this._postRepository) : super(PostState.initial());

  @override
  Stream<PostState> mapEventToState(
    PostEvent event,
  ) async* {
    yield* event.map(
      loadRecommendedVideos: (e) async* {
        var posts = await _postRepository.getRecommendedPosts(userId: e.userId);
        if(posts.hasFailed()) {
          yield state.copyWith(failure: posts.failure);
        } else {
          var allPosts = state.allPosts;
          allPosts.addAll(posts.data?.asList() ?? []);
          yield state.copyWith(allPosts: allPosts, lastLazilyLoadedPosts: posts.data.asList() ?? []);
        }
      },

    );
  }
}
