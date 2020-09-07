import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cato_feed/domain/posts/i_post_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'userprofile_event.dart';

part 'userprofile_state.dart';

part 'userprofile_bloc.freezed.dart';

@injectable
class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final IPostRepository _postRepository;

  UserProfileBloc(this._postRepository) : super(UserProfileState.initial());

  @override
  Stream<UserProfileState> mapEventToState(
    UserProfileEvent event,
  ) async* {
    yield* event.map(
      refresh: (e) async* {
        var likedPosts = await _postRepository.getLikedPostsId();
        var savedPosts = await _postRepository.getSavedPostsId();
        yield state.copyWith(likedVideosId: likedPosts, savedVideosId: savedPosts);
      },
      likePost: (e) async* {
        await _postRepository.likePost(e.postId);
        var likedPosts = await _postRepository.getLikedPostsId();
        yield state.copyWith(likedVideosId: likedPosts);
      },
      unlikePost: (e) async* {
        await _postRepository.unlikePost(e.postId);
        var likedPosts = await _postRepository.getLikedPostsId();
        yield state.copyWith(likedVideosId: likedPosts);
      },
      savePost: (e) async* {
        var res = await _postRepository.savePost(e.postId, null);
        var savedPosts = await _postRepository.getSavedPostsId();
        yield state.copyWith(savedVideosId: savedPosts);
      },
      unSavePost: (e) async* {
        var res = await _postRepository.removeSavePost(e.postId);
        var savedPosts = await _postRepository.getSavedPostsId();
        yield state.copyWith(savedVideosId: savedPosts);
      },
    );
  }
}
