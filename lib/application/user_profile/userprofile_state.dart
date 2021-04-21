part of 'userprofile_bloc.dart';

@freezed
abstract class UserProfileState with _$UserProfileState {
  const UserProfileState._();
  const factory UserProfileState({
    UserProfile profile,
    List<String> likedVideosId,
    List<String> savedVideosId,
    Failure failure,
  }) = _UserProfileState;
  factory UserProfileState.initial() => UserProfileState(profile: null, likedVideosId: [], savedVideosId: [], failure: null);

  bool isLiked(String postId) {
    return likedVideosId.contains(postId);
  }

  bool isSaved(String postId) {
    return savedVideosId.contains(postId);
  }

}
