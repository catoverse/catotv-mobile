part of 'userprofile_bloc.dart';

@freezed
abstract class UserProfileEvent with _$UserProfileEvent {
  const factory UserProfileEvent.refresh() = _Refresh;
  const factory UserProfileEvent.likePost(String postId) = _LikePost;
  const factory UserProfileEvent.unlikePost(String postId) = _UnLikePost;
  const factory UserProfileEvent.savePost(String postId) = _SavePost;
  const factory UserProfileEvent.unSavePost(String postId) = _UnSavePost;
}