// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Video _$VideoFromJson(Map<String, dynamic> json) {
  return _Video.fromJson(json);
}

/// @nodoc
class _$VideoTearOff {
  const _$VideoTearOff();

  _Video call(
      {@HiveField(0)
      @JsonKey(name: "id")
          required String id,
      @HiveField(1)
      @JsonKey(name: "title")
          required String title,
      @HiveField(2)
      @JsonKey(name: "video_url")
          required String youtubeUrl,
      @HiveField(3)
      @JsonKey(name: "topic_id")
          required String topicId,
      @HiveField(4)
      @JsonKey(name: "topic_name")
          required String topicName,
      @HiveField(5)
      @JsonKey(name: "start_timestamp")
          required int startTimestamp,
      @HiveField(6)
      @JsonKey(name: "end_timestamp")
          required int endTimestamp,
      @HiveField(7)
      @JsonKey(ignore: true)
          String? videoUrl}) {
    return _Video(
      id: id,
      title: title,
      youtubeUrl: youtubeUrl,
      topicId: topicId,
      topicName: topicName,
      startTimestamp: startTimestamp,
      endTimestamp: endTimestamp,
      videoUrl: videoUrl,
    );
  }

  Video fromJson(Map<String, Object> json) {
    return Video.fromJson(json);
  }
}

/// @nodoc
const $Video = _$VideoTearOff();

/// @nodoc
mixin _$Video {
  @HiveField(0)
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: "video_url")
  String get youtubeUrl => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: "topic_id")
  String get topicId => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: "topic_name")
  String get topicName => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: "start_timestamp")
  int get startTimestamp => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: "end_timestamp")
  int get endTimestamp => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(ignore: true)
  String? get videoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(name: "id") String id,
      @HiveField(1) @JsonKey(name: "title") String title,
      @HiveField(2) @JsonKey(name: "video_url") String youtubeUrl,
      @HiveField(3) @JsonKey(name: "topic_id") String topicId,
      @HiveField(4) @JsonKey(name: "topic_name") String topicName,
      @HiveField(5) @JsonKey(name: "start_timestamp") int startTimestamp,
      @HiveField(6) @JsonKey(name: "end_timestamp") int endTimestamp,
      @HiveField(7) @JsonKey(ignore: true) String? videoUrl});
}

/// @nodoc
class _$VideoCopyWithImpl<$Res> implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

  final Video _value;
  // ignore: unused_field
  final $Res Function(Video) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? youtubeUrl = freezed,
    Object? topicId = freezed,
    Object? topicName = freezed,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? videoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      youtubeUrl: youtubeUrl == freezed
          ? _value.youtubeUrl
          : youtubeUrl // ignore: cast_nullable_to_non_nullable
              as String,
      topicId: topicId == freezed
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String,
      topicName: topicName == freezed
          ? _value.topicName
          : topicName // ignore: cast_nullable_to_non_nullable
              as String,
      startTimestamp: startTimestamp == freezed
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      endTimestamp: endTimestamp == freezed
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$VideoCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$VideoCopyWith(_Video value, $Res Function(_Video) then) =
      __$VideoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(name: "id") String id,
      @HiveField(1) @JsonKey(name: "title") String title,
      @HiveField(2) @JsonKey(name: "video_url") String youtubeUrl,
      @HiveField(3) @JsonKey(name: "topic_id") String topicId,
      @HiveField(4) @JsonKey(name: "topic_name") String topicName,
      @HiveField(5) @JsonKey(name: "start_timestamp") int startTimestamp,
      @HiveField(6) @JsonKey(name: "end_timestamp") int endTimestamp,
      @HiveField(7) @JsonKey(ignore: true) String? videoUrl});
}

/// @nodoc
class __$VideoCopyWithImpl<$Res> extends _$VideoCopyWithImpl<$Res>
    implements _$VideoCopyWith<$Res> {
  __$VideoCopyWithImpl(_Video _value, $Res Function(_Video) _then)
      : super(_value, (v) => _then(v as _Video));

  @override
  _Video get _value => super._value as _Video;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? youtubeUrl = freezed,
    Object? topicId = freezed,
    Object? topicName = freezed,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? videoUrl = freezed,
  }) {
    return _then(_Video(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      youtubeUrl: youtubeUrl == freezed
          ? _value.youtubeUrl
          : youtubeUrl // ignore: cast_nullable_to_non_nullable
              as String,
      topicId: topicId == freezed
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String,
      topicName: topicName == freezed
          ? _value.topicName
          : topicName // ignore: cast_nullable_to_non_nullable
              as String,
      startTimestamp: startTimestamp == freezed
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      endTimestamp: endTimestamp == freezed
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$_Video extends _Video {
  _$_Video(
      {@HiveField(0)
      @JsonKey(name: "id")
          required this.id,
      @HiveField(1)
      @JsonKey(name: "title")
          required this.title,
      @HiveField(2)
      @JsonKey(name: "video_url")
          required this.youtubeUrl,
      @HiveField(3)
      @JsonKey(name: "topic_id")
          required this.topicId,
      @HiveField(4)
      @JsonKey(name: "topic_name")
          required this.topicName,
      @HiveField(5)
      @JsonKey(name: "start_timestamp")
          required this.startTimestamp,
      @HiveField(6)
      @JsonKey(name: "end_timestamp")
          required this.endTimestamp,
      @HiveField(7)
      @JsonKey(ignore: true)
          this.videoUrl})
      : super._();

  factory _$_Video.fromJson(Map<String, dynamic> json) =>
      _$_$_VideoFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: "id")
  final String id;
  @override
  @HiveField(1)
  @JsonKey(name: "title")
  final String title;
  @override
  @HiveField(2)
  @JsonKey(name: "video_url")
  final String youtubeUrl;
  @override
  @HiveField(3)
  @JsonKey(name: "topic_id")
  final String topicId;
  @override
  @HiveField(4)
  @JsonKey(name: "topic_name")
  final String topicName;
  @override
  @HiveField(5)
  @JsonKey(name: "start_timestamp")
  final int startTimestamp;
  @override
  @HiveField(6)
  @JsonKey(name: "end_timestamp")
  final int endTimestamp;
  @override
  @HiveField(7)
  @JsonKey(ignore: true)
  final String? videoUrl;

  @override
  String toString() {
    return 'Video(id: $id, title: $title, youtubeUrl: $youtubeUrl, topicId: $topicId, topicName: $topicName, startTimestamp: $startTimestamp, endTimestamp: $endTimestamp, videoUrl: $videoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Video &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.youtubeUrl, youtubeUrl) ||
                const DeepCollectionEquality()
                    .equals(other.youtubeUrl, youtubeUrl)) &&
            (identical(other.topicId, topicId) ||
                const DeepCollectionEquality()
                    .equals(other.topicId, topicId)) &&
            (identical(other.topicName, topicName) ||
                const DeepCollectionEquality()
                    .equals(other.topicName, topicName)) &&
            (identical(other.startTimestamp, startTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.startTimestamp, startTimestamp)) &&
            (identical(other.endTimestamp, endTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.endTimestamp, endTimestamp)) &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.videoUrl, videoUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(youtubeUrl) ^
      const DeepCollectionEquality().hash(topicId) ^
      const DeepCollectionEquality().hash(topicName) ^
      const DeepCollectionEquality().hash(startTimestamp) ^
      const DeepCollectionEquality().hash(endTimestamp) ^
      const DeepCollectionEquality().hash(videoUrl);

  @JsonKey(ignore: true)
  @override
  _$VideoCopyWith<_Video> get copyWith =>
      __$VideoCopyWithImpl<_Video>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VideoToJson(this);
  }
}

abstract class _Video extends Video {
  factory _Video(
      {@HiveField(0)
      @JsonKey(name: "id")
          required String id,
      @HiveField(1)
      @JsonKey(name: "title")
          required String title,
      @HiveField(2)
      @JsonKey(name: "video_url")
          required String youtubeUrl,
      @HiveField(3)
      @JsonKey(name: "topic_id")
          required String topicId,
      @HiveField(4)
      @JsonKey(name: "topic_name")
          required String topicName,
      @HiveField(5)
      @JsonKey(name: "start_timestamp")
          required int startTimestamp,
      @HiveField(6)
      @JsonKey(name: "end_timestamp")
          required int endTimestamp,
      @HiveField(7)
      @JsonKey(ignore: true)
          String? videoUrl}) = _$_Video;
  _Video._() : super._();

  factory _Video.fromJson(Map<String, dynamic> json) = _$_Video.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  @JsonKey(name: "video_url")
  String get youtubeUrl => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  @JsonKey(name: "topic_id")
  String get topicId => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  @JsonKey(name: "topic_name")
  String get topicName => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  @JsonKey(name: "start_timestamp")
  int get startTimestamp => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  @JsonKey(name: "end_timestamp")
  int get endTimestamp => throw _privateConstructorUsedError;
  @override
  @HiveField(7)
  @JsonKey(ignore: true)
  String? get videoUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoCopyWith<_Video> get copyWith => throw _privateConstructorUsedError;
}
