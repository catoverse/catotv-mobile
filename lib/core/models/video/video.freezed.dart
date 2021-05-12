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
      {@HiveField(0) required String id,
      @HiveField(1) required String title,
      @HiveField(2) required String video_url,
      @HiveField(3) required String topic,
      @HiveField(4) required int start_timestamp,
      @HiveField(5) required int end_timestamp,
      @HiveField(6) required String createdAt,
      @HiveField(7) required String modifiedAt}) {
    return _Video(
      id: id,
      title: title,
      video_url: video_url,
      topic: topic,
      start_timestamp: start_timestamp,
      end_timestamp: end_timestamp,
      createdAt: createdAt,
      modifiedAt: modifiedAt,
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
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String get video_url => throw _privateConstructorUsedError;
  @HiveField(3)
  String get topic => throw _privateConstructorUsedError;
  @HiveField(4)
  int get start_timestamp => throw _privateConstructorUsedError;
  @HiveField(5)
  int get end_timestamp => throw _privateConstructorUsedError;
  @HiveField(6)
  String get createdAt => throw _privateConstructorUsedError;
  @HiveField(7)
  String get modifiedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) String video_url,
      @HiveField(3) String topic,
      @HiveField(4) int start_timestamp,
      @HiveField(5) int end_timestamp,
      @HiveField(6) String createdAt,
      @HiveField(7) String modifiedAt});
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
    Object? video_url = freezed,
    Object? topic = freezed,
    Object? start_timestamp = freezed,
    Object? end_timestamp = freezed,
    Object? createdAt = freezed,
    Object? modifiedAt = freezed,
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
      video_url: video_url == freezed
          ? _value.video_url
          : video_url // ignore: cast_nullable_to_non_nullable
              as String,
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      start_timestamp: start_timestamp == freezed
          ? _value.start_timestamp
          : start_timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      end_timestamp: end_timestamp == freezed
          ? _value.end_timestamp
          : end_timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedAt: modifiedAt == freezed
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VideoCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$VideoCopyWith(_Video value, $Res Function(_Video) then) =
      __$VideoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) String video_url,
      @HiveField(3) String topic,
      @HiveField(4) int start_timestamp,
      @HiveField(5) int end_timestamp,
      @HiveField(6) String createdAt,
      @HiveField(7) String modifiedAt});
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
    Object? video_url = freezed,
    Object? topic = freezed,
    Object? start_timestamp = freezed,
    Object? end_timestamp = freezed,
    Object? createdAt = freezed,
    Object? modifiedAt = freezed,
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
      video_url: video_url == freezed
          ? _value.video_url
          : video_url // ignore: cast_nullable_to_non_nullable
              as String,
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      start_timestamp: start_timestamp == freezed
          ? _value.start_timestamp
          : start_timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      end_timestamp: end_timestamp == freezed
          ? _value.end_timestamp
          : end_timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedAt: modifiedAt == freezed
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$_Video extends _Video {
  _$_Video(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.title,
      @HiveField(2) required this.video_url,
      @HiveField(3) required this.topic,
      @HiveField(4) required this.start_timestamp,
      @HiveField(5) required this.end_timestamp,
      @HiveField(6) required this.createdAt,
      @HiveField(7) required this.modifiedAt})
      : super._();

  factory _$_Video.fromJson(Map<String, dynamic> json) =>
      _$_$_VideoFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  final String video_url;
  @override
  @HiveField(3)
  final String topic;
  @override
  @HiveField(4)
  final int start_timestamp;
  @override
  @HiveField(5)
  final int end_timestamp;
  @override
  @HiveField(6)
  final String createdAt;
  @override
  @HiveField(7)
  final String modifiedAt;

  @override
  String toString() {
    return 'Video(id: $id, title: $title, video_url: $video_url, topic: $topic, start_timestamp: $start_timestamp, end_timestamp: $end_timestamp, createdAt: $createdAt, modifiedAt: $modifiedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Video &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.video_url, video_url) ||
                const DeepCollectionEquality()
                    .equals(other.video_url, video_url)) &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)) &&
            (identical(other.start_timestamp, start_timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.start_timestamp, start_timestamp)) &&
            (identical(other.end_timestamp, end_timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.end_timestamp, end_timestamp)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.modifiedAt, modifiedAt) ||
                const DeepCollectionEquality()
                    .equals(other.modifiedAt, modifiedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(video_url) ^
      const DeepCollectionEquality().hash(topic) ^
      const DeepCollectionEquality().hash(start_timestamp) ^
      const DeepCollectionEquality().hash(end_timestamp) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(modifiedAt);

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
      {@HiveField(0) required String id,
      @HiveField(1) required String title,
      @HiveField(2) required String video_url,
      @HiveField(3) required String topic,
      @HiveField(4) required int start_timestamp,
      @HiveField(5) required int end_timestamp,
      @HiveField(6) required String createdAt,
      @HiveField(7) required String modifiedAt}) = _$_Video;
  _Video._() : super._();

  factory _Video.fromJson(Map<String, dynamic> json) = _$_Video.fromJson;

  @override
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String get video_url => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String get topic => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  int get start_timestamp => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  int get end_timestamp => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  String get createdAt => throw _privateConstructorUsedError;
  @override
  @HiveField(7)
  String get modifiedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoCopyWith<_Video> get copyWith => throw _privateConstructorUsedError;
}
