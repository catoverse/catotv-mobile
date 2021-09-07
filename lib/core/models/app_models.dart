import 'package:feed/core/constants/assets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

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

  factory Topic({
    required String id,
    required String name,
    @JsonKey(defaultValue: false) bool? isSelected,
  }) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
}

@freezed
class ChannelInformation with _$ChannelInformation {
  ChannelInformation._();

  factory ChannelInformation({
    String? id,
    String? name,
    @JsonKey(name: "subscriber_count") int? subscriberCount,
  }) = _ChannelInformation;

  factory ChannelInformation.fromJson(Map<String, dynamic> json) =>
      _$ChannelInformationFromJson(json);
}

@freezed
class ContentDetails with _$ContentDetails {
  ContentDetails._();

  factory ContentDetails(
      {@JsonKey(name: "youtube_category") int? youtubeCategory,
      @JsonKey(name: "captions_available") bool? hasCaptions,
      int? dislikes,
      int? likes,
      int? duration,
      int? views}) = _ContentDetails;

  factory ContentDetails.fromJson(Map<String, dynamic> json) =>
      _$ContentDetailsFromJson(json);
}

@freezed
class Video with _$Video {
  Video._();

  @HiveType(typeId: 1)
  factory Video({
    @HiveField(0) @JsonKey(name: "id") required String id,
    @HiveField(1) @JsonKey(name: "title") required String title,
    @HiveField(2) @JsonKey(name: "video_url") required String videoUrl,
    @HiveField(3) @JsonKey(name: "topic") required Topic topic,
    @HiveField(4) @JsonKey(name: "start_timestamp") int? startTimestamp,
    @HiveField(5) @JsonKey(name: "end_timestamp") int? endTimestamp,
    @HiveField(6)
    @JsonKey(name: "channel_information")
        ChannelInformation? channelInformation,
    @HiveField(7)
    @JsonKey(name: "content_details")
        ContentDetails? contentDetails,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}

@freezed
class Failure with _$Failure {
  const factory Failure.error(Error error) = _GenericError;
  const factory Failure.exception(Exception exception) = _RaisedException;
  const factory Failure.message(String message) = _FailureMessage;

  String toString() {
    return this.map(
      error: (e) => e.error.toString(),
      exception: (e) => e.exception.toString(),
      message: (e) => e.message,
    );
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
