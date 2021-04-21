part of 'video_player_bloc.dart';

@freezed
abstract class VideoPlayerEvent with _$VideoPlayerEvent {
  const factory VideoPlayerEvent.setCurrentPlayablePlayingId(String postId) = _SetPlayingPost;
}