// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_models.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<_$_User> {
  @override
  final int typeId = 0;

  @override
  _$_User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_User(
      id: fields[0] as String,
      name: fields[1] as String,
      email: fields[2] as String,
      avatar: fields[3] as String,
      token: fields[4] as String,
      invites: fields[5] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_User obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.avatar)
      ..writeByte(4)
      ..write(obj.token)
      ..writeByte(5)
      ..write(obj.invites);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      videoUrl: fields[2] as String,
      topic: fields[3] as Topic,
      startTimestamp: fields[4] as int?,
      endTimestamp: fields[5] as int?,
      channelInformation: fields[6] as ChannelInformation?,
      contentDetails: fields[7] as ContentDetails?,
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
      ..write(obj.videoUrl)
      ..writeByte(3)
      ..write(obj.topic)
      ..writeByte(4)
      ..write(obj.startTimestamp)
      ..writeByte(5)
      ..write(obj.endTimestamp)
      ..writeByte(6)
      ..write(obj.channelInformation)
      ..writeByte(7)
      ..write(obj.contentDetails);
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

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    avatar: json['avatar'] as String,
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'avatar': instance.avatar,
      'token': instance.token,
    };

_$_Topic _$_$_TopicFromJson(Map<String, dynamic> json) {
  return _$_Topic(
    id: json['id'] as String,
    name: json['name'] as String,
    isSelected: json['isSelected'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_TopicToJson(_$_Topic instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isSelected': instance.isSelected,
    };

_$_ChannelInformation _$_$_ChannelInformationFromJson(
    Map<String, dynamic> json) {
  return _$_ChannelInformation(
    id: json['id'] as String?,
    name: json['name'] as String?,
    subscriberCount: json['subscriber_count'] as int?,
  );
}

Map<String, dynamic> _$_$_ChannelInformationToJson(
        _$_ChannelInformation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'subscriber_count': instance.subscriberCount,
    };

_$_ContentDetails _$_$_ContentDetailsFromJson(Map<String, dynamic> json) {
  return _$_ContentDetails(
    youtubeCategory: json['youtube_category'] as int?,
    hasCaptions: json['captions_available'] as bool?,
    dislikes: json['dislikes'] as int?,
    likes: json['likes'] as int?,
    duration: json['duration'] as int?,
    views: json['views'] as int?,
  );
}

Map<String, dynamic> _$_$_ContentDetailsToJson(_$_ContentDetails instance) =>
    <String, dynamic>{
      'youtube_category': instance.youtubeCategory,
      'captions_available': instance.hasCaptions,
      'dislikes': instance.dislikes,
      'likes': instance.likes,
      'duration': instance.duration,
      'views': instance.views,
    };

_$_Video _$_$_VideoFromJson(Map<String, dynamic> json) {
  return _$_Video(
    id: json['id'] as String,
    title: json['title'] as String,
    videoUrl: json['video_url'] as String,
    topic: Topic.fromJson(json['topic'] as Map<String, dynamic>),
    startTimestamp: json['start_timestamp'] as int?,
    endTimestamp: json['end_timestamp'] as int?,
    channelInformation: json['channel_information'] == null
        ? null
        : ChannelInformation.fromJson(
            json['channel_information'] as Map<String, dynamic>),
    contentDetails: json['content_details'] == null
        ? null
        : ContentDetails.fromJson(
            json['content_details'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_VideoToJson(_$_Video instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'video_url': instance.videoUrl,
      'topic': instance.topic,
      'start_timestamp': instance.startTimestamp,
      'end_timestamp': instance.endTimestamp,
      'channel_information': instance.channelInformation,
      'content_details': instance.contentDetails,
    };
