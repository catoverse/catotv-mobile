part of 'userprofile_bloc.dart';

@freezed
abstract class UserProfileState implements _$UserProfileState {
  const UserProfileState._();
  const factory UserProfileState({
    UserProfile profile,
    List<String> likedVideosId,
    List<String> savedVideosId
  }) = _UserProfileState;
  factory UserProfileState.initial() => UserProfileState(profile: null, likedVideosId: [], savedVideosId: []);

  bool isLiked(String postId) {
    return likedVideosId?.contains(postId) ?? false;
  }

  bool isSaved(String postId) {
    return savedVideosId?.contains(postId) ?? false;
  }
}
