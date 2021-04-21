import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cato_feed/domain/core/failure.dart';
import 'package:cato_feed/domain/posts/i_post_repository.dart';
import 'package:cato_feed/domain/posts/post.dart';
import 'package:cato_feed/domain/topic/topic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'videos_by_category_event.dart';

part 'videos_by_category_state.dart';

part 'videos_by_category_bloc.freezed.dart';

@injectable
class VideosByCategoryBloc
    extends Bloc<VideosByCategoryEvent, VideosByCategoryState> {
  
  IPostRepository _postRepository;
  VideosByCategoryBloc(this._postRepository) : super(VideosByCategoryState.initial());

  @override
  Stream<VideosByCategoryState> mapEventToState(
    VideosByCategoryEvent event,
  ) async* {
    yield* event.map(
      load: (e) async* {
        var result = await _postRepository.getRecommendedPostsByTopic(userId: e.userId, topicId: e.topic.id, limit: 10);
        if(result.hasFailed()) {
          yield state.copyWith(failure: result.failure);
        } else {
          var allPosts = state.allPosts;
          allPosts.addAll(result.data?.asList() ?? []);
          yield state.copyWith(allPosts: allPosts, lastLazilyLoadedPosts: result.data.asList() ?? [], failure: null);
        }
      },
    );
  }
}
