import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cato_feed/domain/core/failure.dart';
import 'package:cato_feed/domain/posts/i_post_repository.dart';
import 'package:cato_feed/domain/posts/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart';

part 'single_post_event.dart';
part 'single_post_state.dart';
part 'single_post_bloc.freezed.dart';

@injectable
class SinglePostBloc extends Bloc<SinglePostEvent, SinglePostState> {
  final IPostRepository _postRepository;
  SinglePostBloc(this._postRepository) : super(SinglePostState.initial());

  @override
  Stream<SinglePostState> mapEventToState(
    SinglePostEvent event,
  ) async* {
    yield* event.map(
      loadPost: (e) async* {
        var post = await _postRepository.getPostById(e.postId);
        if(post.hasFailed()) {
          yield state.copyWith(failure: post.failure, post: null);
        } else {
          yield state.copyWith(post: post.data, failure: null);
        }
      }
    );
  }
}
