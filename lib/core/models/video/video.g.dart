// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VideoAdapter extends TypeAdapter<_$_Video> {
  @override
  final int typeId = 1;

  @override
  _$_Video read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Video(
      id: fields[0] as String,
      title: fields[1] as String,
      youtubeUrl: fields[2] as String,
      topic: fields[3] as String,
      startTimestamp: fields[4] as int,
      endTimestamp: fields[5] as int,
      videoUrl: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Video obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.youtubeUrl)
      ..writeByte(3)
      ..write(obj.topic)
      ..writeByte(4)
      ..write(obj.startTimestamp)
      ..writeByte(5)
      ..write(obj.endTimestamp)
      ..writeByte(8)
      ..write(obj.videoUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VideoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Video _$_$_VideoFromJson(Map<String, dynamic> json) {
  return _$_Video(
    id: json['id'] as String,
    title: json['title'] as String,
    youtubeUrl: json['video_url'] as String,
    topic: json['topic']['id'] as String,
    startTimestamp: json['start_timestamp'] as int,
    endTimestamp: json['end_timestamp'] as int,
  );
}

Map<String, dynamic> _$_$_VideoToJson(_$_Video instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'video_url': instance.youtubeUrl,
      'topic': instance.topic,
      'start_timestamp': instance.startTimestamp,
      'end_timestamp': instance.endTimestamp,
    };
