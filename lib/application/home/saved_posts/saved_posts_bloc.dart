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
  Stream<SavedPostsState> mapEventToState(SavedPostsEvent event,) async* {
    yield* event.when(
        refresh: () async* {
          var likedPosts = await _postRepository.getLikedPosts();
          var savedPosts = await _postRepository.getSavedPosts();
          var selectedPage = state.selectedPage;
          if(state.selectedPage == SelectedPage.None) {
            selectedPage = (savedPosts.isNotEmpty)
                ? SelectedPage.Saved
                : (likedPosts.isNotEmpty) ? SelectedPage.Liked : SelectedPage
                .None;
          } else if(state.selectedPage == SelectedPage.Saved && savedPosts.isEmpty){
            // Check and switch to liked posts
            selectedPage = (likedPosts.isEmpty) ? SelectedPage.None : SelectedPage.Liked;
          } else if(state.selectedPage == SelectedPage.Liked && likedPosts.isEmpty) {
            // Switch to saved posts
            selectedPage = (savedPosts.isEmpty) ? SelectedPage.None : SelectedPage.Saved;
          }

          yield state.copyWith(
              savedPosts: savedPosts,
              likedPosts: likedPosts,
              selectedPage: selectedPage);
        },
        updateSelectedPage: (updatedPage) async* {
          yield state.copyWith(selectedPage: updatedPage);
        },
    );
  }
}
