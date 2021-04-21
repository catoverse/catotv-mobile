part of 'post_bloc.dart';

@freezed
abstract class PostEvent with _$PostEvent {
  const factory PostEvent.loadRecommendedVideos(String userId) = _RecommendedVideos;
}