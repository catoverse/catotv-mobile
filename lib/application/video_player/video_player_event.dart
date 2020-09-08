part of 'video_player_bloc.dart';

@freezed
abstract class VideoPlayerEvent with _$VideoPlayerEvent {
  const factory VideoPlayerEvent.setCurrentPlayablePlayingId(@nullable String postId) = _SetPlayingPost;
}