import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:feed/core/constants/assets.dart';

part 'app_models.freezed.dart';
part 'app_models.g.dart';

/// Freezed Models
@freezed
class User with _$User {
  User._();

  @HiveType(typeId: 0)
  factory User({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String email,
    @HiveField(3) required String avatar,
    @HiveField(4) required String token,
    @JsonKey(ignore: true) @HiveField(5) int? invites,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Topic with _$Topic {
  Topic._();
  @HiveType(typeId: 3)
  factory Topic({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @JsonKey(defaultValue: false) @HiveField(2) bool? isSelected,
  }) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
}

@freezed
class Video with _$Video {
  Video._();

  @HiveType(typeId: 1)
  factory Video({
    @HiveField(0) @JsonKey(name: "id") required String id,
    @HiveField(1) @JsonKey(name: "source") String? source,
    @HiveField(2) @JsonKey(name: "video_id") required String videoId,
    @HiveField(3) @JsonKey(name: "title") required String title,
    @HiveField(4) @JsonKey(name: 'available') bool? available,
    @HiveField(5) @JsonKey(name: "video_url") required String videoUrl,
    @HiveField(6) @JsonKey(name: "topics") required List<Topic> topics,
    @HiveField(7) @JsonKey(name: "start_timestamp") int? startTimestamp,
    @HiveField(8) @JsonKey(name: "end_timestamp") int? endTimestamp,
    @HiveField(9) @JsonKey(name: "thumbnail_url") String? thumbnailUrl,
    @HiveField(10) @JsonKey(name: "channel_name") String? channelName,
    @HiveField(11)
    @JsonKey(name: "channel_avatar_url")
        String? channelAvatarUrl,
    @HiveField(12) @Default(false) bool bookmarked,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}

class Failure {
  final Error? error;

  final Exception? exception;

  final String? message;

  const Failure.error(Error e)
      : error = e,
        message = null,
        exception = null;

  const Failure.exception(Exception e)
      : error = null,
        message = null,
        exception = e;

  const Failure.message(String m)
      : error = null,
        message = m,
        exception = null;

  @override
  String toString() {
    return error == null
        ? exception == null
            ? message!
            : exception.toString()
        : error.toString();
  }
}

@freezed
class MqEventLog with _$MqEventLog {
  MqEventLog._();

  @HiveType(typeId: 2)
  factory MqEventLog({
    @HiveField(0) @JsonKey(name: "user_id") required String userId,
    @HiveField(1) @JsonKey(name: "video_id") required String videoId,
    @HiveField(2) required String timestamp,
    @HiveField(3) required String description,
    @HiveField(4) @JsonKey(name: "video_duration") required int videoDuration,
    @HiveField(5)
    @JsonKey(name: "session_duration")
        required int sessionDuration,
    @HiveField(6)
    @JsonKey(name: "duration_watched")
        required int durationWatched,
    @HiveField(7) required String event,
  }) = _MEventqLog;

  factory MqEventLog.fromJson(Map<String, dynamic> json) =>
      _$MqEventLogFromJson(json);
}

/// Regular Models
class Result<F, S> {
  final F? failure;
  final S? success;

  Result({this.failure, this.success});

  factory Result.failed(F fail) => Result(failure: fail, success: null);
  factory Result.success(S result) => Result(failure: null, success: result);

  bool isSuccess() {
    if (failure != null || success == null) return false;
    return true;
  }

  bool get isFailed => !isSuccess();
}

/// Extensions for Models
extension ImageProperty on Topic {
  String getAssetImage() {
    switch (name) {
      case "Social":
        return Assets.topicSocialImage;
      case "Productivity":
        return Assets.topicProductivityImage;
      case "Career":
        return Assets.topicCareerImage;
      case "Health & Nutrition":
        return Assets.topicHealthImage;
      case "Intellectual":
        return Assets.topicIntellectualImage;
      case "Emotional":
        return Assets.topicEmotionalImage;
      default:
        return "";
    }
  }
}

@freezed
class GetWaitlist with _$GetWaitlist {
  GetWaitlist._();

  factory GetWaitlist({
    @JsonKey(name: "current_priority") int? currentPriority,
    @JsonKey(name: "referral_link") required String referralLink,
    @JsonKey(name: "registered_email") required String registeredEmail,
    @JsonKey(name: "total_referrals") required int totalReferrals,
    @JsonKey(name: "total_users") required int totalUsers,
    @JsonKey(name: "user_id") required String userId,
  }) = _GetWaitlist;

  factory GetWaitlist.fromJson(Map<String, dynamic> json) =>
      _$GetWaitlistFromJson(json);
}

@freezed
class UserProfile with _$UserProfile {
  UserProfile._();

  factory UserProfile({
    required String name,
    required String userId,
    @Default(<String>[]) List<String> selectedTopics,
    @Default(<String>[]) List<String> bookmarks,
    int? totalWatchTime,
    List<TopicCount>? videosWatchedPerTopic,
    List<WatchedVideo>? watchedVideos,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}

@freezed
class TopicCount with _$TopicCount {
  TopicCount._();

  factory TopicCount({
    required String topic,
    required int count,
  }) = _TopicCount;

  factory TopicCount.fromJson(Map<String, dynamic> json) =>
      _$TopicCountFromJson(json);
}

@freezed
class WatchedVideo with _$WatchedVideo {
  WatchedVideo._();

  factory WatchedVideo({
    required String videoId,
    required String topicId,
    required String channelId,
  }) = _WatchedVideo;

  factory WatchedVideo.fromJson(Map<String, dynamic> json) =>
      _$WatchedVideoFromJson(json);
}

@freezed
class Count with _$Count {
  Count._();

  factory Count({
    required String date,
    required int count,
  }) = _Count;

  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);
}

@freezed
class VideoWatched with _$VideoWatched {
  VideoWatched._();

  factory VideoWatched({
    required String topic,
    required int count,
  }) = _VideoWatched;

  factory VideoWatched.fromJson(Map<String, dynamic> json) =>
      _$VideoWatchedFromJson(json);
}
