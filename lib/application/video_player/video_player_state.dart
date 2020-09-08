part of 'video_player_bloc.dart';

@freezed
abstract class VideoPlayerState with _$VideoPlayerState {
  const factory VideoPlayerState({
      String currentPlayingPostId
  }) = _VideoPlayerState;
  factory VideoPlayerState.initial() => VideoPlayerState(currentPlayingPostId: null);
}
