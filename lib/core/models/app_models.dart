import 'package:feed/core/constants/assets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'app_models.freezed.dart';
part 'app_models.g.dart';

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
class Video with _$Video {
  Video._();

  @HiveType(typeId: 1)
  factory Video({
    @HiveField(0) @JsonKey(name: "id") required String id,
    @HiveField(1) @JsonKey(name: "title") required String title,
    @HiveField(2) @JsonKey(name: "video_url") required String youtubeUrl,
    @HiveField(3) @JsonKey(name: "topic") required Topic topic,
    @HiveField(4) @JsonKey(name: "start_timestamp") int? startTimestamp,
    @HiveField(5) @JsonKey(name: "end_timestamp") int? endTimestamp,
    @HiveField(6) @JsonKey(ignore: true) String? videoUrl,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}

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
