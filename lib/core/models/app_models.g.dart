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

class TopicAdapter extends TypeAdapter<_$_Topic> {
  @override
  final int typeId = 3;

  @override
  _$_Topic read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Topic(
      id: fields[0] as String,
      name: fields[1] as String,
      isSelected: fields[2] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Topic obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.isSelected);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TopicAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ChannelInformationAdapter extends TypeAdapter<_$_ChannelInformation> {
  @override
  final int typeId = 4;

  @override
  _$_ChannelInformation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ChannelInformation(
      id: fields[0] as String?,
      name: fields[1] as String?,
      subscriberCount: fields[3] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ChannelInformation obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.subscriberCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChannelInformationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ContentDetailsAdapter extends TypeAdapter<_$_ContentDetails> {
  @override
  final int typeId = 5;

  @override
  _$_ContentDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ContentDetails(
      youtubeCategory: fields[0] as int?,
      hasCaptions: fields[1] as bool?,
      dislikes: fields[2] as int?,
      likes: fields[3] as int?,
      duration: fields[4] as int?,
      views: fields[5] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ContentDetails obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.youtubeCategory)
      ..writeByte(1)
      ..write(obj.hasCaptions)
      ..writeByte(2)
      ..write(obj.dislikes)
      ..writeByte(3)
      ..write(obj.likes)
      ..writeByte(4)
      ..write(obj.duration)
      ..writeByte(5)
      ..write(obj.views);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContentDetailsAdapter &&
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

class MEventqLogAdapter extends TypeAdapter<_$_MEventqLog> {
  @override
  final int typeId = 2;

  @override
  _$_MEventqLog read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_MEventqLog(
      userId: fields[0] as String,
      videoId: fields[1] as String,
      timestamp: fields[2] as String,
      description: fields[3] as String,
      videoDuration: fields[4] as int,
      sessionDuration: fields[5] as int,
      durationWatched: fields[6] as int,
      event: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_MEventqLog obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.videoId)
      ..writeByte(2)
      ..write(obj.timestamp)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.videoDuration)
      ..writeByte(5)
      ..write(obj.sessionDuration)
      ..writeByte(6)
      ..write(obj.durationWatched)
      ..writeByte(7)
      ..write(obj.event);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MEventqLogAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      avatar: json['avatar'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'avatar': instance.avatar,
      'token': instance.token,
    };

_$_Topic _$$_TopicFromJson(Map<String, dynamic> json) => _$_Topic(
      id: json['id'] as String,
      name: json['name'] as String,
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TopicToJson(_$_Topic instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isSelected': instance.isSelected,
    };

_$_ChannelInformation _$$_ChannelInformationFromJson(
        Map<String, dynamic> json) =>
    _$_ChannelInformation(
      id: json['id'] as String?,
      name: json['name'] as String?,
      subscriberCount: json['subscriber_count'] as int?,
    );

Map<String, dynamic> _$$_ChannelInformationToJson(
        _$_ChannelInformation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'subscriber_count': instance.subscriberCount,
    };

_$_ContentDetails _$$_ContentDetailsFromJson(Map<String, dynamic> json) =>
    _$_ContentDetails(
      youtubeCategory: json['youtube_category'] as int?,
      hasCaptions: json['captions_available'] as bool?,
      dislikes: json['dislikes'] as int?,
      likes: json['likes'] as int?,
      duration: json['duration'] as int?,
      views: json['views'] as int?,
    );

Map<String, dynamic> _$$_ContentDetailsToJson(_$_ContentDetails instance) =>
    <String, dynamic>{
      'youtube_category': instance.youtubeCategory,
      'captions_available': instance.hasCaptions,
      'dislikes': instance.dislikes,
      'likes': instance.likes,
      'duration': instance.duration,
      'views': instance.views,
    };

_$_Video _$$_VideoFromJson(Map<String, dynamic> json) => _$_Video(
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

Map<String, dynamic> _$$_VideoToJson(_$_Video instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'video_url': instance.videoUrl,
      'topic': instance.topic,
      'start_timestamp': instance.startTimestamp,
      'end_timestamp': instance.endTimestamp,
      'channel_information': instance.channelInformation,
      'content_details': instance.contentDetails,
    };

_$_MEventqLog _$$_MEventqLogFromJson(Map<String, dynamic> json) =>
    _$_MEventqLog(
      userId: json['user_id'] as String,
      videoId: json['video_id'] as String,
      timestamp: json['timestamp'] as String,
      description: json['description'] as String,
      videoDuration: json['video_duration'] as int,
      sessionDuration: json['session_duration'] as int,
      durationWatched: json['duration_watched'] as int,
      event: json['event'] as String,
    );

Map<String, dynamic> _$$_MEventqLogToJson(_$_MEventqLog instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'video_id': instance.videoId,
      'timestamp': instance.timestamp,
      'description': instance.description,
      'video_duration': instance.videoDuration,
      'session_duration': instance.sessionDuration,
      'duration_watched': instance.durationWatched,
      'event': instance.event,
    };

_$_GetWaitlist _$$_GetWaitlistFromJson(Map<String, dynamic> json) =>
    _$_GetWaitlist(
      currentPriority: json['current_priority'] as int?,
      referralLink: json['referral_link'] as String,
      registeredEmail: json['registered_email'] as String,
      totalReferrals: json['total_referrals'] as int,
      totalUsers: json['total_users'] as int,
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$$_GetWaitlistToJson(_$_GetWaitlist instance) =>
    <String, dynamic>{
      'current_priority': instance.currentPriority,
      'referral_link': instance.referralLink,
      'registered_email': instance.registeredEmail,
      'total_referrals': instance.totalReferrals,
      'total_users': instance.totalUsers,
      'user_id': instance.userId,
    };
