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
      source: fields[1] as String?,
      videoId: fields[2] as String,
      title: fields[3] as String,
      available: fields[4] as bool?,
      videoUrl: fields[5] as String,
      topic: fields[6] as Topic,
      startTimestamp: fields[7] as int?,
      endTimestamp: fields[8] as int?,
      thumbnailUrl: fields[9] as String?,
      channelName: fields[10] as String?,
      channelAvatarUrl: fields[11] as String?,
      bookmarked: fields[12] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Video obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.source)
      ..writeByte(2)
      ..write(obj.videoId)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.available)
      ..writeByte(5)
      ..write(obj.videoUrl)
      ..writeByte(6)
      ..write(obj.topic)
      ..writeByte(7)
      ..write(obj.startTimestamp)
      ..writeByte(8)
      ..write(obj.endTimestamp)
      ..writeByte(9)
      ..write(obj.thumbnailUrl)
      ..writeByte(10)
      ..write(obj.channelName)
      ..writeByte(11)
      ..write(obj.channelAvatarUrl)
      ..writeByte(12)
      ..write(obj.bookmarked);
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

_$_Video _$$_VideoFromJson(Map<String, dynamic> json) => _$_Video(
      id: json['id'] as String,
      source: json['source'] as String?,
      videoId: json['video_id'] as String,
      title: json['title'] as String,
      available: json['available'] as bool?,
      videoUrl: json['video_url'] as String,
      topic: Topic.fromJson(json['topic'] as Map<String, dynamic>),
      startTimestamp: json['start_timestamp'] as int?,
      endTimestamp: json['end_timestamp'] as int?,
      thumbnailUrl: json['thumbnail_url'] as String?,
      channelName: json['channel_name'] as String?,
      channelAvatarUrl: json['channel_avatar_url'] as String?,
      bookmarked: json['bookmarked'] as bool? ?? false,
    );

Map<String, dynamic> _$$_VideoToJson(_$_Video instance) => <String, dynamic>{
      'id': instance.id,
      'source': instance.source,
      'video_id': instance.videoId,
      'title': instance.title,
      'available': instance.available,
      'video_url': instance.videoUrl,
      'topic': instance.topic,
      'start_timestamp': instance.startTimestamp,
      'end_timestamp': instance.endTimestamp,
      'thumbnail_url': instance.thumbnailUrl,
      'channel_name': instance.channelName,
      'channel_avatar_url': instance.channelAvatarUrl,
      'bookmarked': instance.bookmarked,
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

_$_UserProfile _$$_UserProfileFromJson(Map<String, dynamic> json) =>
    _$_UserProfile(
      name: json['name'] as String,
      userId: json['userId'] as String,
      selectedTopics: (json['selectedTopics'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      bookmarks: (json['bookmarks'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      totalWatchTime: json['totalWatchTime'] as int?,
      videosWatchedPerTopic: (json['videosWatchedPerTopic'] as List<dynamic>?)
          ?.map((e) => TopicCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      watchedVideos: (json['watchedVideos'] as List<dynamic>?)
          ?.map((e) => WatchedVideo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserProfileToJson(_$_UserProfile instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userId': instance.userId,
      'selectedTopics': instance.selectedTopics,
      'bookmarks': instance.bookmarks,
      'totalWatchTime': instance.totalWatchTime,
      'videosWatchedPerTopic': instance.videosWatchedPerTopic,
      'watchedVideos': instance.watchedVideos,
    };

_$_TopicCount _$$_TopicCountFromJson(Map<String, dynamic> json) =>
    _$_TopicCount(
      topic: json['topic'] as String,
      count: json['count'] as int,
    );

Map<String, dynamic> _$$_TopicCountToJson(_$_TopicCount instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'count': instance.count,
    };

_$_WatchedVideo _$$_WatchedVideoFromJson(Map<String, dynamic> json) =>
    _$_WatchedVideo(
      videoId: json['videoId'] as String,
      topicId: json['topicId'] as String,
      channelId: json['channelId'] as String,
    );

Map<String, dynamic> _$$_WatchedVideoToJson(_$_WatchedVideo instance) =>
    <String, dynamic>{
      'videoId': instance.videoId,
      'topicId': instance.topicId,
      'channelId': instance.channelId,
    };

_$_Count _$$_CountFromJson(Map<String, dynamic> json) => _$_Count(
      date: json['date'] as String,
      count: json['count'] as int,
    );

Map<String, dynamic> _$$_CountToJson(_$_Count instance) => <String, dynamic>{
      'date': instance.date,
      'count': instance.count,
    };

_$_VideoWatched _$$_VideoWatchedFromJson(Map<String, dynamic> json) =>
    _$_VideoWatched(
      topic: json['topic'] as String,
      count: json['count'] as int,
    );

Map<String, dynamic> _$$_VideoWatchedToJson(_$_VideoWatched instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'count': instance.count,
    };
