import 'package:feed/core/constants/assets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'topic.freezed.dart';
part 'topic.g.dart';

@freezed
class Topic with _$Topic {
  Topic._();

  @HiveType(typeId: 2)
  factory Topic({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @JsonKey(defaultValue: false) bool? isSelected,
  }) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);

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
