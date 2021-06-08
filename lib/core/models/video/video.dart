import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'video.freezed.dart';
part 'video.g.dart';

@freezed
class Video with _$Video {
  Video._();

  @HiveType(typeId: 1)
  factory Video({
    @HiveField(0) @JsonKey(name: "id") required String id,
    @HiveField(1) @JsonKey(name: "title") required String title,
    @HiveField(2) @JsonKey(name: "video_url") required String youtubeUrl,
    @HiveField(3) @JsonKey(name: "topic") required String topic,
    @HiveField(4) @JsonKey(name: "start_timestamp") required int startTimestamp,
    @HiveField(5) @JsonKey(name: "end_timestamp") required int endTimestamp,
    @HiveField(6) @JsonKey(name: "createdAt") required String createdAt,
    @HiveField(7) @JsonKey(name: "modifiedAt") required String modifiedAt,
    @HiveField(8) @JsonKey(ignore: true) String? videoUrl,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}
