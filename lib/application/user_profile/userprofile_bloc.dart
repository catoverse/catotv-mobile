import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cato_feed/domain/auth/i_user_repository.dart';
import 'package:cato_feed/domain/auth/user_profile.dart';
import 'package:cato_feed/domain/core/failure.dart';
import 'package:cato_feed/domain/posts/i_post_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:flutter/foundation.dart';

part 'userprofile_event.dart';

part 'userprofile_state.dart';

part 'userprofile_bloc.freezed.dart';

@injectable
class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final IPostRepository _postRepository;
  final IUserRepository _userRepository;

  UserProfileBloc(this._postRepository, this._userRepository)
      : super(UserProfileState.initial());

  @override
  Stream<UserProfileState> mapEventToState(
    UserProfileEvent event,
  ) async* {
    yield* event.map(
      updateTopicSelection: (e) async* {
        var result = await _userRepository.updateUserProfile(
            name: e.name, userId: e.userId, selectedTopics: e.selectedTopics);

        if(result.hasFailed()) {
          yield state.copyWith(failure: result.failure);
        } else {
          yield state.copyWith(profile: result.data, failure: null);
        }
      },
      get: (e) async* {
        //_userRepository.getUserProfile(userId: e)
        var result = await _userRepository.getUserProfile(userId: e.userId);
        if (result.hasFailed()) {
          yield state.copyWith(failure: result.failure);
        } else {
          yield state.copyWith(profile: result.data, failure: null);
        }
      },
      refresh: (e) async* {
        var likedPosts = await _postRepository.getLikedPostsId();
        var savedPosts = await _postRepository.getBookmarkedPostsId();
        yield state.copyWith(
            likedVideosId: likedPosts, savedVideosId: savedPosts);
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
        var res = await _postRepository.bookmarkPost(e.postId);
        var savedPosts = await _postRepository.getBookmarkedPostsId();
        yield state.copyWith(savedVideosId: savedPosts);
      },
      unSavePost: (e) async* {
        var res = await _postRepository.removePostBookmark(e.postId);
        var savedPosts = await _postRepository.getBookmarkedPostsId();
        yield state.copyWith(savedVideosId: savedPosts);
      },
    );
  }
}
