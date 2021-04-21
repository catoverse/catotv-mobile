import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'user_profile.freezed.dart';

@freezed
abstract class UserProfile with _$UserProfile {
  const factory UserProfile({
    @required String name,
    @required int totalWatchTime,
    @required int videoCount,
    @required String userId,
    @required String id,
    @required String watchHistory,
    @required List<String> selectedTopics,
    @required Map<String, int> videoWatched,
    @required Map<String, int> lastFiveCount
  }) = _UserProfile;
}

// videoWatched is Map<TopicName/Id, Count>
// lastFiveCount is Map<Date, Count>