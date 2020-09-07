import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cato_feed/domain/posts/i_post_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cato_feed/domain/posts/post.dart';
import 'package:injectable/injectable.dart';

part 'saved_posts_event.dart';
part 'saved_posts_state.dart';
part 'saved_posts_bloc.freezed.dart';

@injectable
class SavedPostsBloc extends Bloc<SavedPostsEvent, SavedPostsState> {

  final IPostRepository _postRepository;

  SavedPostsBloc(this._postRepository) : super(SavedPostsState.initial());

  @override
  Stream<SavedPostsState> mapEventToState(
    SavedPostsEvent event,
  ) async* {
    yield* event.when(refresh: () async* {
      var likedPosts = await _postRepository.getLikedPosts();
      var savedPosts = await _postRepository.getSavedPosts();
      yield state.copyWith(savedPosts: savedPosts, likedPosts: likedPosts);
    });
  }
}
