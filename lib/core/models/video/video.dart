import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'video.freezed.dart';
part 'video.g.dart';

@freezed
class Video with _$Video {
  Video._();

  @HiveType(typeId: 1)
  factory Video({
    @HiveField(0) required String id,
    @HiveField(1) required String title,
    @HiveField(2) required String video_url,
    @HiveField(3) required String topic,
    @HiveField(4) required int start_timestamp,
    @HiveField(5) required int end_timestamp,
    @HiveField(6) required String createdAt,
    @HiveField(7) required String modifiedAt,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}
