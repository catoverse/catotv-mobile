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
  }) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
}
