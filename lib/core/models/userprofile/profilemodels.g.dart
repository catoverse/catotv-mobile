// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profilemodels.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WatchTimeAdapter extends TypeAdapter<WatchTime> {
  @override
  final int typeId = 3;

  @override
  WatchTime read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WatchTime(
      dateTime: fields[0] as DateTime,
      minutesWatched: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, WatchTime obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.dateTime)
      ..writeByte(1)
      ..write(obj.minutesWatched);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WatchTimeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
