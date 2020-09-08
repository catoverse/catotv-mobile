part of 'share_video_bloc.dart';

@freezed
abstract class ShareVideoEvent with _$ShareVideoEvent {
  const factory ShareVideoEvent.share(String postId, String title, String imageUrl) = _ShareVideo;
}