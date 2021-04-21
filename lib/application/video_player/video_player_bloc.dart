import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart';

part 'video_player_event.dart';

part 'video_player_state.dart';

part 'video_player_bloc.freezed.dart';

@injectable
class VideoPlayerBloc extends Bloc<VideoPlayerEvent, VideoPlayerState> {
  VideoPlayerBloc() : super(VideoPlayerState.initial());

  @override
  Stream<VideoPlayerState> mapEventToState(
    VideoPlayerEvent event,
  ) async* {
    yield event.map(
      setCurrentPlayablePlayingId: (e) =>
          state.copyWith(currentPlayingPostId: e.postId),
    );
  }
}
