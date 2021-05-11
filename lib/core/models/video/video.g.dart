// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VideoAdapter extends TypeAdapter<_$_Video> {
  @override
  final int typeId = 0;

  @override
  _$_Video read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Video(
      id: fields[0] as String,
      title: fields[1] as String,
      video_url: fields[2] as String,
      topic: fields[3] as String,
      start_timestamp: fields[4] as int,
      end_timestamp: fields[5] as int,
      createdAt: fields[6] as String,
      modifiedAt: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Video obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.video_url)
      ..writeByte(3)
      ..write(obj.topic)
      ..writeByte(4)
      ..write(obj.start_timestamp)
      ..writeByte(5)
      ..write(obj.end_timestamp)
      ..writeByte(6)
      ..write(obj.createdAt)
      ..writeByte(7)
      ..write(obj.modifiedAt);
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
    video_url: json['video_url'] as String,
    topic: json['topic'] as String,
    start_timestamp: json['start_timestamp'] as int,
    end_timestamp: json['end_timestamp'] as int,
    createdAt: json['createdAt'] as String,
    modifiedAt: json['modifiedAt'] as String,
  );
}

Map<String, dynamic> _$_$_VideoToJson(_$_Video instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'video_url': instance.video_url,
      'topic': instance.topic,
      'start_timestamp': instance.start_timestamp,
      'end_timestamp': instance.end_timestamp,
      'createdAt': instance.createdAt,
      'modifiedAt': instance.modifiedAt,
    };
