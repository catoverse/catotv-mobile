import 'package:feed/core/models/userprofile/profilemodels.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'userprofile.freezed.dart';

@freezed
class UserProfile with _$UserProfile {
  UserProfile._();

  factory UserProfile({
    required String name,
    required String selectedTopics,
    required int totalWatchTime,
    required VideoWatched videoWatched,
    required int videoCount,
    required Count lastFiveCount,
    required String userId,
    required String id,
    required String watchHistory,
  }) = _User;
}
