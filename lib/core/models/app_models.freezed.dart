// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {@HiveField(0) required String id,
      @HiveField(1) required String name,
      @HiveField(2) required String email,
      @HiveField(3) required String avatar,
      @HiveField(4) required String token,
      @JsonKey(ignore: true) @HiveField(5) int? invites}) {
    return _User(
      id: id,
      name: name,
      email: email,
      avatar: avatar,
      token: token,
      invites: invites,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get email => throw _privateConstructorUsedError;
  @HiveField(3)
  String get avatar => throw _privateConstructorUsedError;
  @HiveField(4)
  String get token => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  @HiveField(5)
  int? get invites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String email,
      @HiveField(3) String avatar,
      @HiveField(4) String token,
      @JsonKey(ignore: true) @HiveField(5) int? invites});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? token = freezed,
    Object? invites = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      invites: invites == freezed
          ? _value.invites
          : invites // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String email,
      @HiveField(3) String avatar,
      @HiveField(4) String token,
      @JsonKey(ignore: true) @HiveField(5) int? invites});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? token = freezed,
    Object? invites = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      invites: invites == freezed
          ? _value.invites
          : invites // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$_User extends _User {
  _$_User(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.email,
      @HiveField(3) required this.avatar,
      @HiveField(4) required this.token,
      @JsonKey(ignore: true) @HiveField(5) this.invites})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final String email;
  @override
  @HiveField(3)
  final String avatar;
  @override
  @HiveField(4)
  final String token;
  @override
  @JsonKey(ignore: true)
  @HiveField(5)
  final int? invites;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, avatar: $avatar, token: $token, invites: $invites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.invites, invites) ||
                const DeepCollectionEquality().equals(other.invites, invites)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(invites);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User extends User {
  factory _User(
      {@HiveField(0) required String id,
      @HiveField(1) required String name,
      @HiveField(2) required String email,
      @HiveField(3) required String avatar,
      @HiveField(4) required String token,
      @JsonKey(ignore: true) @HiveField(5) int? invites}) = _$_User;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String get email => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String get avatar => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  @HiveField(5)
  int? get invites => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

Topic _$TopicFromJson(Map<String, dynamic> json) {
  return _Topic.fromJson(json);
}

/// @nodoc
class _$TopicTearOff {
  const _$TopicTearOff();

  _Topic call(
      {@HiveField(0) required String id,
      @HiveField(1) required String name,
      @JsonKey(defaultValue: false) @HiveField(2) bool? isSelected}) {
    return _Topic(
      id: id,
      name: name,
      isSelected: isSelected,
    );
  }

  Topic fromJson(Map<String, Object> json) {
    return Topic.fromJson(json);
  }
}

/// @nodoc
const $Topic = _$TopicTearOff();

/// @nodoc
mixin _$Topic {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  @HiveField(2)
  bool? get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicCopyWith<Topic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicCopyWith<$Res> {
  factory $TopicCopyWith(Topic value, $Res Function(Topic) then) =
      _$TopicCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @JsonKey(defaultValue: false) @HiveField(2) bool? isSelected});
}

/// @nodoc
class _$TopicCopyWithImpl<$Res> implements $TopicCopyWith<$Res> {
  _$TopicCopyWithImpl(this._value, this._then);

  final Topic _value;
  // ignore: unused_field
  final $Res Function(Topic) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$TopicCopyWith<$Res> implements $TopicCopyWith<$Res> {
  factory _$TopicCopyWith(_Topic value, $Res Function(_Topic) then) =
      __$TopicCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @JsonKey(defaultValue: false) @HiveField(2) bool? isSelected});
}

/// @nodoc
class __$TopicCopyWithImpl<$Res> extends _$TopicCopyWithImpl<$Res>
    implements _$TopicCopyWith<$Res> {
  __$TopicCopyWithImpl(_Topic _value, $Res Function(_Topic) _then)
      : super(_value, (v) => _then(v as _Topic));

  @override
  _Topic get _value => super._value as _Topic;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_Topic(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 3)
class _$_Topic extends _Topic {
  _$_Topic(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @JsonKey(defaultValue: false) @HiveField(2) this.isSelected})
      : super._();

  factory _$_Topic.fromJson(Map<String, dynamic> json) =>
      _$$_TopicFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String name;
  @override
  @JsonKey(defaultValue: false)
  @HiveField(2)
  final bool? isSelected;

  @override
  String toString() {
    return 'Topic(id: $id, name: $name, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Topic &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.isSelected, isSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isSelected, isSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(isSelected);

  @JsonKey(ignore: true)
  @override
  _$TopicCopyWith<_Topic> get copyWith =>
      __$TopicCopyWithImpl<_Topic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopicToJson(this);
  }
}

abstract class _Topic extends Topic {
  factory _Topic(
      {@HiveField(0) required String id,
      @HiveField(1) required String name,
      @JsonKey(defaultValue: false) @HiveField(2) bool? isSelected}) = _$_Topic;
  _Topic._() : super._();

  factory _Topic.fromJson(Map<String, dynamic> json) = _$_Topic.fromJson;

  @override
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: false)
  @HiveField(2)
  bool? get isSelected => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TopicCopyWith<_Topic> get copyWith => throw _privateConstructorUsedError;
}

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
      @JsonKey(name: "source")
          String? source,
      @HiveField(2)
      @JsonKey(name: "video_id")
          required String videoId,
      @HiveField(3)
      @JsonKey(name: "title")
          required String title,
      @HiveField(4)
      @JsonKey(name: 'available')
          bool? available,
      @HiveField(5)
      @JsonKey(name: "video_url")
          required String videoUrl,
      @HiveField(6)
      @JsonKey(name: "topics")
          required List<Topic> topics,
      @HiveField(7)
      @JsonKey(name: "start_timestamp")
          int? startTimestamp,
      @HiveField(8)
      @JsonKey(name: "end_timestamp")
          int? endTimestamp,
      @HiveField(9)
      @JsonKey(name: "thumbnail_url")
          String? thumbnailUrl,
      @HiveField(10)
      @JsonKey(name: "channel_name")
          String? channelName,
      @HiveField(11)
      @JsonKey(name: "channel_avatar_url")
          String? channelAvatarUrl,
      @HiveField(12)
          bool bookmarked = false}) {
    return _Video(
      id: id,
      source: source,
      videoId: videoId,
      title: title,
      available: available,
      videoUrl: videoUrl,
      topics: topics,
      startTimestamp: startTimestamp,
      endTimestamp: endTimestamp,
      thumbnailUrl: thumbnailUrl,
      channelName: channelName,
      channelAvatarUrl: channelAvatarUrl,
      bookmarked: bookmarked,
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
  @JsonKey(name: "source")
  String? get source => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: "video_id")
  String get videoId => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'available')
  bool? get available => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: "video_url")
  String get videoUrl => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: "topics")
  List<Topic> get topics => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: "start_timestamp")
  int? get startTimestamp => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: "end_timestamp")
  int? get endTimestamp => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: "thumbnail_url")
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: "channel_name")
  String? get channelName => throw _privateConstructorUsedError;
  @HiveField(11)
  @JsonKey(name: "channel_avatar_url")
  String? get channelAvatarUrl => throw _privateConstructorUsedError;
  @HiveField(12)
  bool get bookmarked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0)
      @JsonKey(name: "id")
          String id,
      @HiveField(1)
      @JsonKey(name: "source")
          String? source,
      @HiveField(2)
      @JsonKey(name: "video_id")
          String videoId,
      @HiveField(3)
      @JsonKey(name: "title")
          String title,
      @HiveField(4)
      @JsonKey(name: 'available')
          bool? available,
      @HiveField(5)
      @JsonKey(name: "video_url")
          String videoUrl,
      @HiveField(6)
      @JsonKey(name: "topics")
          List<Topic> topics,
      @HiveField(7)
      @JsonKey(name: "start_timestamp")
          int? startTimestamp,
      @HiveField(8)
      @JsonKey(name: "end_timestamp")
          int? endTimestamp,
      @HiveField(9)
      @JsonKey(name: "thumbnail_url")
          String? thumbnailUrl,
      @HiveField(10)
      @JsonKey(name: "channel_name")
          String? channelName,
      @HiveField(11)
      @JsonKey(name: "channel_avatar_url")
          String? channelAvatarUrl,
      @HiveField(12)
          bool bookmarked});
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
    Object? source = freezed,
    Object? videoId = freezed,
    Object? title = freezed,
    Object? available = freezed,
    Object? videoUrl = freezed,
    Object? topics = freezed,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? thumbnailUrl = freezed,
    Object? channelName = freezed,
    Object? channelAvatarUrl = freezed,
    Object? bookmarked = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      available: available == freezed
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      topics: topics == freezed
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      startTimestamp: startTimestamp == freezed
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      endTimestamp: endTimestamp == freezed
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: channelName == freezed
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelAvatarUrl: channelAvatarUrl == freezed
          ? _value.channelAvatarUrl
          : channelAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookmarked: bookmarked == freezed
          ? _value.bookmarked
          : bookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$VideoCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$VideoCopyWith(_Video value, $Res Function(_Video) then) =
      __$VideoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0)
      @JsonKey(name: "id")
          String id,
      @HiveField(1)
      @JsonKey(name: "source")
          String? source,
      @HiveField(2)
      @JsonKey(name: "video_id")
          String videoId,
      @HiveField(3)
      @JsonKey(name: "title")
          String title,
      @HiveField(4)
      @JsonKey(name: 'available')
          bool? available,
      @HiveField(5)
      @JsonKey(name: "video_url")
          String videoUrl,
      @HiveField(6)
      @JsonKey(name: "topics")
          List<Topic> topics,
      @HiveField(7)
      @JsonKey(name: "start_timestamp")
          int? startTimestamp,
      @HiveField(8)
      @JsonKey(name: "end_timestamp")
          int? endTimestamp,
      @HiveField(9)
      @JsonKey(name: "thumbnail_url")
          String? thumbnailUrl,
      @HiveField(10)
      @JsonKey(name: "channel_name")
          String? channelName,
      @HiveField(11)
      @JsonKey(name: "channel_avatar_url")
          String? channelAvatarUrl,
      @HiveField(12)
          bool bookmarked});
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
    Object? source = freezed,
    Object? videoId = freezed,
    Object? title = freezed,
    Object? available = freezed,
    Object? videoUrl = freezed,
    Object? topics = freezed,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? thumbnailUrl = freezed,
    Object? channelName = freezed,
    Object? channelAvatarUrl = freezed,
    Object? bookmarked = freezed,
  }) {
    return _then(_Video(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      available: available == freezed
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      topics: topics == freezed
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      startTimestamp: startTimestamp == freezed
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      endTimestamp: endTimestamp == freezed
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: channelName == freezed
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelAvatarUrl: channelAvatarUrl == freezed
          ? _value.channelAvatarUrl
          : channelAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bookmarked: bookmarked == freezed
          ? _value.bookmarked
          : bookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$_Video extends _Video {
  _$_Video(
      {@HiveField(0) @JsonKey(name: "id") required this.id,
      @HiveField(1) @JsonKey(name: "source") this.source,
      @HiveField(2) @JsonKey(name: "video_id") required this.videoId,
      @HiveField(3) @JsonKey(name: "title") required this.title,
      @HiveField(4) @JsonKey(name: 'available') this.available,
      @HiveField(5) @JsonKey(name: "video_url") required this.videoUrl,
      @HiveField(6) @JsonKey(name: "topics") required this.topics,
      @HiveField(7) @JsonKey(name: "start_timestamp") this.startTimestamp,
      @HiveField(8) @JsonKey(name: "end_timestamp") this.endTimestamp,
      @HiveField(9) @JsonKey(name: "thumbnail_url") this.thumbnailUrl,
      @HiveField(10) @JsonKey(name: "channel_name") this.channelName,
      @HiveField(11) @JsonKey(name: "channel_avatar_url") this.channelAvatarUrl,
      @HiveField(12) this.bookmarked = false})
      : super._();

  factory _$_Video.fromJson(Map<String, dynamic> json) =>
      _$$_VideoFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: "id")
  final String id;
  @override
  @HiveField(1)
  @JsonKey(name: "source")
  final String? source;
  @override
  @HiveField(2)
  @JsonKey(name: "video_id")
  final String videoId;
  @override
  @HiveField(3)
  @JsonKey(name: "title")
  final String title;
  @override
  @HiveField(4)
  @JsonKey(name: 'available')
  final bool? available;
  @override
  @HiveField(5)
  @JsonKey(name: "video_url")
  final String videoUrl;
  @override
  @HiveField(6)
  @JsonKey(name: "topics")
  final List<Topic> topics;
  @override
  @HiveField(7)
  @JsonKey(name: "start_timestamp")
  final int? startTimestamp;
  @override
  @HiveField(8)
  @JsonKey(name: "end_timestamp")
  final int? endTimestamp;
  @override
  @HiveField(9)
  @JsonKey(name: "thumbnail_url")
  final String? thumbnailUrl;
  @override
  @HiveField(10)
  @JsonKey(name: "channel_name")
  final String? channelName;
  @override
  @HiveField(11)
  @JsonKey(name: "channel_avatar_url")
  final String? channelAvatarUrl;
  @JsonKey(defaultValue: false)
  @override
  @HiveField(12)
  final bool bookmarked;

  @override
  String toString() {
    return 'Video(id: $id, source: $source, videoId: $videoId, title: $title, available: $available, videoUrl: $videoUrl, topics: $topics, startTimestamp: $startTimestamp, endTimestamp: $endTimestamp, thumbnailUrl: $thumbnailUrl, channelName: $channelName, channelAvatarUrl: $channelAvatarUrl, bookmarked: $bookmarked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Video &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)) &&
            (identical(other.videoId, videoId) ||
                const DeepCollectionEquality()
                    .equals(other.videoId, videoId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.available, available) ||
                const DeepCollectionEquality()
                    .equals(other.available, available)) &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.videoUrl, videoUrl)) &&
            (identical(other.topics, topics) ||
                const DeepCollectionEquality().equals(other.topics, topics)) &&
            (identical(other.startTimestamp, startTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.startTimestamp, startTimestamp)) &&
            (identical(other.endTimestamp, endTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.endTimestamp, endTimestamp)) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailUrl, thumbnailUrl)) &&
            (identical(other.channelName, channelName) ||
                const DeepCollectionEquality()
                    .equals(other.channelName, channelName)) &&
            (identical(other.channelAvatarUrl, channelAvatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.channelAvatarUrl, channelAvatarUrl)) &&
            (identical(other.bookmarked, bookmarked) ||
                const DeepCollectionEquality()
                    .equals(other.bookmarked, bookmarked)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(source) ^
      const DeepCollectionEquality().hash(videoId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(available) ^
      const DeepCollectionEquality().hash(videoUrl) ^
      const DeepCollectionEquality().hash(topics) ^
      const DeepCollectionEquality().hash(startTimestamp) ^
      const DeepCollectionEquality().hash(endTimestamp) ^
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(channelName) ^
      const DeepCollectionEquality().hash(channelAvatarUrl) ^
      const DeepCollectionEquality().hash(bookmarked);

  @JsonKey(ignore: true)
  @override
  _$VideoCopyWith<_Video> get copyWith =>
      __$VideoCopyWithImpl<_Video>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoToJson(this);
  }
}

abstract class _Video extends Video {
  factory _Video(
      {@HiveField(0)
      @JsonKey(name: "id")
          required String id,
      @HiveField(1)
      @JsonKey(name: "source")
          String? source,
      @HiveField(2)
      @JsonKey(name: "video_id")
          required String videoId,
      @HiveField(3)
      @JsonKey(name: "title")
          required String title,
      @HiveField(4)
      @JsonKey(name: 'available')
          bool? available,
      @HiveField(5)
      @JsonKey(name: "video_url")
          required String videoUrl,
      @HiveField(6)
      @JsonKey(name: "topics")
          required List<Topic> topics,
      @HiveField(7)
      @JsonKey(name: "start_timestamp")
          int? startTimestamp,
      @HiveField(8)
      @JsonKey(name: "end_timestamp")
          int? endTimestamp,
      @HiveField(9)
      @JsonKey(name: "thumbnail_url")
          String? thumbnailUrl,
      @HiveField(10)
      @JsonKey(name: "channel_name")
          String? channelName,
      @HiveField(11)
      @JsonKey(name: "channel_avatar_url")
          String? channelAvatarUrl,
      @HiveField(12)
          bool bookmarked}) = _$_Video;
  _Video._() : super._();

  factory _Video.fromJson(Map<String, dynamic> json) = _$_Video.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  @JsonKey(name: "source")
  String? get source => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  @JsonKey(name: "video_id")
  String get videoId => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  @JsonKey(name: 'available')
  bool? get available => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  @JsonKey(name: "video_url")
  String get videoUrl => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  @JsonKey(name: "topics")
  List<Topic> get topics => throw _privateConstructorUsedError;
  @override
  @HiveField(7)
  @JsonKey(name: "start_timestamp")
  int? get startTimestamp => throw _privateConstructorUsedError;
  @override
  @HiveField(8)
  @JsonKey(name: "end_timestamp")
  int? get endTimestamp => throw _privateConstructorUsedError;
  @override
  @HiveField(9)
  @JsonKey(name: "thumbnail_url")
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @override
  @HiveField(10)
  @JsonKey(name: "channel_name")
  String? get channelName => throw _privateConstructorUsedError;
  @override
  @HiveField(11)
  @JsonKey(name: "channel_avatar_url")
  String? get channelAvatarUrl => throw _privateConstructorUsedError;
  @override
  @HiveField(12)
  bool get bookmarked => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoCopyWith<_Video> get copyWith => throw _privateConstructorUsedError;
}

MqEventLog _$MqEventLogFromJson(Map<String, dynamic> json) {
  return _MEventqLog.fromJson(json);
}

/// @nodoc
class _$MqEventLogTearOff {
  const _$MqEventLogTearOff();

  _MEventqLog call(
      {@HiveField(0)
      @JsonKey(name: "user_id")
          required String userId,
      @HiveField(1)
      @JsonKey(name: "video_id")
          required String videoId,
      @HiveField(2)
          required String timestamp,
      @HiveField(3)
          required String description,
      @HiveField(4)
      @JsonKey(name: "video_duration")
          required int videoDuration,
      @HiveField(5)
      @JsonKey(name: "session_duration")
          required int sessionDuration,
      @HiveField(6)
      @JsonKey(name: "duration_watched")
          required int durationWatched,
      @HiveField(7)
          required String event}) {
    return _MEventqLog(
      userId: userId,
      videoId: videoId,
      timestamp: timestamp,
      description: description,
      videoDuration: videoDuration,
      sessionDuration: sessionDuration,
      durationWatched: durationWatched,
      event: event,
    );
  }

  MqEventLog fromJson(Map<String, Object> json) {
    return MqEventLog.fromJson(json);
  }
}

/// @nodoc
const $MqEventLog = _$MqEventLogTearOff();

/// @nodoc
mixin _$MqEventLog {
  @HiveField(0)
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: "video_id")
  String get videoId => throw _privateConstructorUsedError;
  @HiveField(2)
  String get timestamp => throw _privateConstructorUsedError;
  @HiveField(3)
  String get description => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: "video_duration")
  int get videoDuration => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: "session_duration")
  int get sessionDuration => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: "duration_watched")
  int get durationWatched => throw _privateConstructorUsedError;
  @HiveField(7)
  String get event => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MqEventLogCopyWith<MqEventLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MqEventLogCopyWith<$Res> {
  factory $MqEventLogCopyWith(
          MqEventLog value, $Res Function(MqEventLog) then) =
      _$MqEventLogCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(name: "user_id") String userId,
      @HiveField(1) @JsonKey(name: "video_id") String videoId,
      @HiveField(2) String timestamp,
      @HiveField(3) String description,
      @HiveField(4) @JsonKey(name: "video_duration") int videoDuration,
      @HiveField(5) @JsonKey(name: "session_duration") int sessionDuration,
      @HiveField(6) @JsonKey(name: "duration_watched") int durationWatched,
      @HiveField(7) String event});
}

/// @nodoc
class _$MqEventLogCopyWithImpl<$Res> implements $MqEventLogCopyWith<$Res> {
  _$MqEventLogCopyWithImpl(this._value, this._then);

  final MqEventLog _value;
  // ignore: unused_field
  final $Res Function(MqEventLog) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? videoId = freezed,
    Object? timestamp = freezed,
    Object? description = freezed,
    Object? videoDuration = freezed,
    Object? sessionDuration = freezed,
    Object? durationWatched = freezed,
    Object? event = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      videoDuration: videoDuration == freezed
          ? _value.videoDuration
          : videoDuration // ignore: cast_nullable_to_non_nullable
              as int,
      sessionDuration: sessionDuration == freezed
          ? _value.sessionDuration
          : sessionDuration // ignore: cast_nullable_to_non_nullable
              as int,
      durationWatched: durationWatched == freezed
          ? _value.durationWatched
          : durationWatched // ignore: cast_nullable_to_non_nullable
              as int,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MEventqLogCopyWith<$Res> implements $MqEventLogCopyWith<$Res> {
  factory _$MEventqLogCopyWith(
          _MEventqLog value, $Res Function(_MEventqLog) then) =
      __$MEventqLogCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(name: "user_id") String userId,
      @HiveField(1) @JsonKey(name: "video_id") String videoId,
      @HiveField(2) String timestamp,
      @HiveField(3) String description,
      @HiveField(4) @JsonKey(name: "video_duration") int videoDuration,
      @HiveField(5) @JsonKey(name: "session_duration") int sessionDuration,
      @HiveField(6) @JsonKey(name: "duration_watched") int durationWatched,
      @HiveField(7) String event});
}

/// @nodoc
class __$MEventqLogCopyWithImpl<$Res> extends _$MqEventLogCopyWithImpl<$Res>
    implements _$MEventqLogCopyWith<$Res> {
  __$MEventqLogCopyWithImpl(
      _MEventqLog _value, $Res Function(_MEventqLog) _then)
      : super(_value, (v) => _then(v as _MEventqLog));

  @override
  _MEventqLog get _value => super._value as _MEventqLog;

  @override
  $Res call({
    Object? userId = freezed,
    Object? videoId = freezed,
    Object? timestamp = freezed,
    Object? description = freezed,
    Object? videoDuration = freezed,
    Object? sessionDuration = freezed,
    Object? durationWatched = freezed,
    Object? event = freezed,
  }) {
    return _then(_MEventqLog(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      videoDuration: videoDuration == freezed
          ? _value.videoDuration
          : videoDuration // ignore: cast_nullable_to_non_nullable
              as int,
      sessionDuration: sessionDuration == freezed
          ? _value.sessionDuration
          : sessionDuration // ignore: cast_nullable_to_non_nullable
              as int,
      durationWatched: durationWatched == freezed
          ? _value.durationWatched
          : durationWatched // ignore: cast_nullable_to_non_nullable
              as int,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 2)
class _$_MEventqLog extends _MEventqLog {
  _$_MEventqLog(
      {@HiveField(0)
      @JsonKey(name: "user_id")
          required this.userId,
      @HiveField(1)
      @JsonKey(name: "video_id")
          required this.videoId,
      @HiveField(2)
          required this.timestamp,
      @HiveField(3)
          required this.description,
      @HiveField(4)
      @JsonKey(name: "video_duration")
          required this.videoDuration,
      @HiveField(5)
      @JsonKey(name: "session_duration")
          required this.sessionDuration,
      @HiveField(6)
      @JsonKey(name: "duration_watched")
          required this.durationWatched,
      @HiveField(7)
          required this.event})
      : super._();

  factory _$_MEventqLog.fromJson(Map<String, dynamic> json) =>
      _$$_MEventqLogFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: "user_id")
  final String userId;
  @override
  @HiveField(1)
  @JsonKey(name: "video_id")
  final String videoId;
  @override
  @HiveField(2)
  final String timestamp;
  @override
  @HiveField(3)
  final String description;
  @override
  @HiveField(4)
  @JsonKey(name: "video_duration")
  final int videoDuration;
  @override
  @HiveField(5)
  @JsonKey(name: "session_duration")
  final int sessionDuration;
  @override
  @HiveField(6)
  @JsonKey(name: "duration_watched")
  final int durationWatched;
  @override
  @HiveField(7)
  final String event;

  @override
  String toString() {
    return 'MqEventLog(userId: $userId, videoId: $videoId, timestamp: $timestamp, description: $description, videoDuration: $videoDuration, sessionDuration: $sessionDuration, durationWatched: $durationWatched, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MEventqLog &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.videoId, videoId) ||
                const DeepCollectionEquality()
                    .equals(other.videoId, videoId)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.videoDuration, videoDuration) ||
                const DeepCollectionEquality()
                    .equals(other.videoDuration, videoDuration)) &&
            (identical(other.sessionDuration, sessionDuration) ||
                const DeepCollectionEquality()
                    .equals(other.sessionDuration, sessionDuration)) &&
            (identical(other.durationWatched, durationWatched) ||
                const DeepCollectionEquality()
                    .equals(other.durationWatched, durationWatched)) &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(videoId) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(videoDuration) ^
      const DeepCollectionEquality().hash(sessionDuration) ^
      const DeepCollectionEquality().hash(durationWatched) ^
      const DeepCollectionEquality().hash(event);

  @JsonKey(ignore: true)
  @override
  _$MEventqLogCopyWith<_MEventqLog> get copyWith =>
      __$MEventqLogCopyWithImpl<_MEventqLog>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MEventqLogToJson(this);
  }
}

abstract class _MEventqLog extends MqEventLog {
  factory _MEventqLog(
      {@HiveField(0)
      @JsonKey(name: "user_id")
          required String userId,
      @HiveField(1)
      @JsonKey(name: "video_id")
          required String videoId,
      @HiveField(2)
          required String timestamp,
      @HiveField(3)
          required String description,
      @HiveField(4)
      @JsonKey(name: "video_duration")
          required int videoDuration,
      @HiveField(5)
      @JsonKey(name: "session_duration")
          required int sessionDuration,
      @HiveField(6)
      @JsonKey(name: "duration_watched")
          required int durationWatched,
      @HiveField(7)
          required String event}) = _$_MEventqLog;
  _MEventqLog._() : super._();

  factory _MEventqLog.fromJson(Map<String, dynamic> json) =
      _$_MEventqLog.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  @JsonKey(name: "video_id")
  String get videoId => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String get timestamp => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String get description => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  @JsonKey(name: "video_duration")
  int get videoDuration => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  @JsonKey(name: "session_duration")
  int get sessionDuration => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  @JsonKey(name: "duration_watched")
  int get durationWatched => throw _privateConstructorUsedError;
  @override
  @HiveField(7)
  String get event => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MEventqLogCopyWith<_MEventqLog> get copyWith =>
      throw _privateConstructorUsedError;
}

GetWaitlist _$GetWaitlistFromJson(Map<String, dynamic> json) {
  return _GetWaitlist.fromJson(json);
}

/// @nodoc
class _$GetWaitlistTearOff {
  const _$GetWaitlistTearOff();

  _GetWaitlist call(
      {@JsonKey(name: "current_priority") int? currentPriority,
      @JsonKey(name: "referral_link") required String referralLink,
      @JsonKey(name: "registered_email") required String registeredEmail,
      @JsonKey(name: "total_referrals") required int totalReferrals,
      @JsonKey(name: "total_users") required int totalUsers,
      @JsonKey(name: "user_id") required String userId}) {
    return _GetWaitlist(
      currentPriority: currentPriority,
      referralLink: referralLink,
      registeredEmail: registeredEmail,
      totalReferrals: totalReferrals,
      totalUsers: totalUsers,
      userId: userId,
    );
  }

  GetWaitlist fromJson(Map<String, Object> json) {
    return GetWaitlist.fromJson(json);
  }
}

/// @nodoc
const $GetWaitlist = _$GetWaitlistTearOff();

/// @nodoc
mixin _$GetWaitlist {
  @JsonKey(name: "current_priority")
  int? get currentPriority => throw _privateConstructorUsedError;
  @JsonKey(name: "referral_link")
  String get referralLink => throw _privateConstructorUsedError;
  @JsonKey(name: "registered_email")
  String get registeredEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "total_referrals")
  int get totalReferrals => throw _privateConstructorUsedError;
  @JsonKey(name: "total_users")
  int get totalUsers => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetWaitlistCopyWith<GetWaitlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWaitlistCopyWith<$Res> {
  factory $GetWaitlistCopyWith(
          GetWaitlist value, $Res Function(GetWaitlist) then) =
      _$GetWaitlistCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "current_priority") int? currentPriority,
      @JsonKey(name: "referral_link") String referralLink,
      @JsonKey(name: "registered_email") String registeredEmail,
      @JsonKey(name: "total_referrals") int totalReferrals,
      @JsonKey(name: "total_users") int totalUsers,
      @JsonKey(name: "user_id") String userId});
}

/// @nodoc
class _$GetWaitlistCopyWithImpl<$Res> implements $GetWaitlistCopyWith<$Res> {
  _$GetWaitlistCopyWithImpl(this._value, this._then);

  final GetWaitlist _value;
  // ignore: unused_field
  final $Res Function(GetWaitlist) _then;

  @override
  $Res call({
    Object? currentPriority = freezed,
    Object? referralLink = freezed,
    Object? registeredEmail = freezed,
    Object? totalReferrals = freezed,
    Object? totalUsers = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      currentPriority: currentPriority == freezed
          ? _value.currentPriority
          : currentPriority // ignore: cast_nullable_to_non_nullable
              as int?,
      referralLink: referralLink == freezed
          ? _value.referralLink
          : referralLink // ignore: cast_nullable_to_non_nullable
              as String,
      registeredEmail: registeredEmail == freezed
          ? _value.registeredEmail
          : registeredEmail // ignore: cast_nullable_to_non_nullable
              as String,
      totalReferrals: totalReferrals == freezed
          ? _value.totalReferrals
          : totalReferrals // ignore: cast_nullable_to_non_nullable
              as int,
      totalUsers: totalUsers == freezed
          ? _value.totalUsers
          : totalUsers // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetWaitlistCopyWith<$Res>
    implements $GetWaitlistCopyWith<$Res> {
  factory _$GetWaitlistCopyWith(
          _GetWaitlist value, $Res Function(_GetWaitlist) then) =
      __$GetWaitlistCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "current_priority") int? currentPriority,
      @JsonKey(name: "referral_link") String referralLink,
      @JsonKey(name: "registered_email") String registeredEmail,
      @JsonKey(name: "total_referrals") int totalReferrals,
      @JsonKey(name: "total_users") int totalUsers,
      @JsonKey(name: "user_id") String userId});
}

/// @nodoc
class __$GetWaitlistCopyWithImpl<$Res> extends _$GetWaitlistCopyWithImpl<$Res>
    implements _$GetWaitlistCopyWith<$Res> {
  __$GetWaitlistCopyWithImpl(
      _GetWaitlist _value, $Res Function(_GetWaitlist) _then)
      : super(_value, (v) => _then(v as _GetWaitlist));

  @override
  _GetWaitlist get _value => super._value as _GetWaitlist;

  @override
  $Res call({
    Object? currentPriority = freezed,
    Object? referralLink = freezed,
    Object? registeredEmail = freezed,
    Object? totalReferrals = freezed,
    Object? totalUsers = freezed,
    Object? userId = freezed,
  }) {
    return _then(_GetWaitlist(
      currentPriority: currentPriority == freezed
          ? _value.currentPriority
          : currentPriority // ignore: cast_nullable_to_non_nullable
              as int?,
      referralLink: referralLink == freezed
          ? _value.referralLink
          : referralLink // ignore: cast_nullable_to_non_nullable
              as String,
      registeredEmail: registeredEmail == freezed
          ? _value.registeredEmail
          : registeredEmail // ignore: cast_nullable_to_non_nullable
              as String,
      totalReferrals: totalReferrals == freezed
          ? _value.totalReferrals
          : totalReferrals // ignore: cast_nullable_to_non_nullable
              as int,
      totalUsers: totalUsers == freezed
          ? _value.totalUsers
          : totalUsers // ignore: cast_nullable_to_non_nullable
              as int,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetWaitlist extends _GetWaitlist {
  _$_GetWaitlist(
      {@JsonKey(name: "current_priority") this.currentPriority,
      @JsonKey(name: "referral_link") required this.referralLink,
      @JsonKey(name: "registered_email") required this.registeredEmail,
      @JsonKey(name: "total_referrals") required this.totalReferrals,
      @JsonKey(name: "total_users") required this.totalUsers,
      @JsonKey(name: "user_id") required this.userId})
      : super._();

  factory _$_GetWaitlist.fromJson(Map<String, dynamic> json) =>
      _$$_GetWaitlistFromJson(json);

  @override
  @JsonKey(name: "current_priority")
  final int? currentPriority;
  @override
  @JsonKey(name: "referral_link")
  final String referralLink;
  @override
  @JsonKey(name: "registered_email")
  final String registeredEmail;
  @override
  @JsonKey(name: "total_referrals")
  final int totalReferrals;
  @override
  @JsonKey(name: "total_users")
  final int totalUsers;
  @override
  @JsonKey(name: "user_id")
  final String userId;

  @override
  String toString() {
    return 'GetWaitlist(currentPriority: $currentPriority, referralLink: $referralLink, registeredEmail: $registeredEmail, totalReferrals: $totalReferrals, totalUsers: $totalUsers, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetWaitlist &&
            (identical(other.currentPriority, currentPriority) ||
                const DeepCollectionEquality()
                    .equals(other.currentPriority, currentPriority)) &&
            (identical(other.referralLink, referralLink) ||
                const DeepCollectionEquality()
                    .equals(other.referralLink, referralLink)) &&
            (identical(other.registeredEmail, registeredEmail) ||
                const DeepCollectionEquality()
                    .equals(other.registeredEmail, registeredEmail)) &&
            (identical(other.totalReferrals, totalReferrals) ||
                const DeepCollectionEquality()
                    .equals(other.totalReferrals, totalReferrals)) &&
            (identical(other.totalUsers, totalUsers) ||
                const DeepCollectionEquality()
                    .equals(other.totalUsers, totalUsers)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPriority) ^
      const DeepCollectionEquality().hash(referralLink) ^
      const DeepCollectionEquality().hash(registeredEmail) ^
      const DeepCollectionEquality().hash(totalReferrals) ^
      const DeepCollectionEquality().hash(totalUsers) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$GetWaitlistCopyWith<_GetWaitlist> get copyWith =>
      __$GetWaitlistCopyWithImpl<_GetWaitlist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetWaitlistToJson(this);
  }
}

abstract class _GetWaitlist extends GetWaitlist {
  factory _GetWaitlist(
      {@JsonKey(name: "current_priority") int? currentPriority,
      @JsonKey(name: "referral_link") required String referralLink,
      @JsonKey(name: "registered_email") required String registeredEmail,
      @JsonKey(name: "total_referrals") required int totalReferrals,
      @JsonKey(name: "total_users") required int totalUsers,
      @JsonKey(name: "user_id") required String userId}) = _$_GetWaitlist;
  _GetWaitlist._() : super._();

  factory _GetWaitlist.fromJson(Map<String, dynamic> json) =
      _$_GetWaitlist.fromJson;

  @override
  @JsonKey(name: "current_priority")
  int? get currentPriority => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "referral_link")
  String get referralLink => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "registered_email")
  String get registeredEmail => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "total_referrals")
  int get totalReferrals => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "total_users")
  int get totalUsers => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetWaitlistCopyWith<_GetWaitlist> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
class _$UserProfileTearOff {
  const _$UserProfileTearOff();

  _UserProfile call(
      {required String name,
      required String userId,
      List<String> selectedTopics = const <String>[],
      List<String> bookmarks = const <String>[],
      int? totalWatchTime,
      List<TopicCount>? videosWatchedPerTopic,
      List<WatchedVideo>? watchedVideos}) {
    return _UserProfile(
      name: name,
      userId: userId,
      selectedTopics: selectedTopics,
      bookmarks: bookmarks,
      totalWatchTime: totalWatchTime,
      videosWatchedPerTopic: videosWatchedPerTopic,
      watchedVideos: watchedVideos,
    );
  }

  UserProfile fromJson(Map<String, Object> json) {
    return UserProfile.fromJson(json);
  }
}

/// @nodoc
const $UserProfile = _$UserProfileTearOff();

/// @nodoc
mixin _$UserProfile {
  String get name => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  List<String> get selectedTopics => throw _privateConstructorUsedError;
  List<String> get bookmarks => throw _privateConstructorUsedError;
  int? get totalWatchTime => throw _privateConstructorUsedError;
  List<TopicCount>? get videosWatchedPerTopic =>
      throw _privateConstructorUsedError;
  List<WatchedVideo>? get watchedVideos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String userId,
      List<String> selectedTopics,
      List<String> bookmarks,
      int? totalWatchTime,
      List<TopicCount>? videosWatchedPerTopic,
      List<WatchedVideo>? watchedVideos});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res> implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  final UserProfile _value;
  // ignore: unused_field
  final $Res Function(UserProfile) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? userId = freezed,
    Object? selectedTopics = freezed,
    Object? bookmarks = freezed,
    Object? totalWatchTime = freezed,
    Object? videosWatchedPerTopic = freezed,
    Object? watchedVideos = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedTopics: selectedTopics == freezed
          ? _value.selectedTopics
          : selectedTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bookmarks: bookmarks == freezed
          ? _value.bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      totalWatchTime: totalWatchTime == freezed
          ? _value.totalWatchTime
          : totalWatchTime // ignore: cast_nullable_to_non_nullable
              as int?,
      videosWatchedPerTopic: videosWatchedPerTopic == freezed
          ? _value.videosWatchedPerTopic
          : videosWatchedPerTopic // ignore: cast_nullable_to_non_nullable
              as List<TopicCount>?,
      watchedVideos: watchedVideos == freezed
          ? _value.watchedVideos
          : watchedVideos // ignore: cast_nullable_to_non_nullable
              as List<WatchedVideo>?,
    ));
  }
}

/// @nodoc
abstract class _$UserProfileCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(
          _UserProfile value, $Res Function(_UserProfile) then) =
      __$UserProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String userId,
      List<String> selectedTopics,
      List<String> bookmarks,
      int? totalWatchTime,
      List<TopicCount>? videosWatchedPerTopic,
      List<WatchedVideo>? watchedVideos});
}

/// @nodoc
class __$UserProfileCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(
      _UserProfile _value, $Res Function(_UserProfile) _then)
      : super(_value, (v) => _then(v as _UserProfile));

  @override
  _UserProfile get _value => super._value as _UserProfile;

  @override
  $Res call({
    Object? name = freezed,
    Object? userId = freezed,
    Object? selectedTopics = freezed,
    Object? bookmarks = freezed,
    Object? totalWatchTime = freezed,
    Object? videosWatchedPerTopic = freezed,
    Object? watchedVideos = freezed,
  }) {
    return _then(_UserProfile(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedTopics: selectedTopics == freezed
          ? _value.selectedTopics
          : selectedTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bookmarks: bookmarks == freezed
          ? _value.bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      totalWatchTime: totalWatchTime == freezed
          ? _value.totalWatchTime
          : totalWatchTime // ignore: cast_nullable_to_non_nullable
              as int?,
      videosWatchedPerTopic: videosWatchedPerTopic == freezed
          ? _value.videosWatchedPerTopic
          : videosWatchedPerTopic // ignore: cast_nullable_to_non_nullable
              as List<TopicCount>?,
      watchedVideos: watchedVideos == freezed
          ? _value.watchedVideos
          : watchedVideos // ignore: cast_nullable_to_non_nullable
              as List<WatchedVideo>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfile extends _UserProfile {
  _$_UserProfile(
      {required this.name,
      required this.userId,
      this.selectedTopics = const <String>[],
      this.bookmarks = const <String>[],
      this.totalWatchTime,
      this.videosWatchedPerTopic,
      this.watchedVideos})
      : super._();

  factory _$_UserProfile.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileFromJson(json);

  @override
  final String name;
  @override
  final String userId;
  @JsonKey(defaultValue: const <String>[])
  @override
  final List<String> selectedTopics;
  @JsonKey(defaultValue: const <String>[])
  @override
  final List<String> bookmarks;
  @override
  final int? totalWatchTime;
  @override
  final List<TopicCount>? videosWatchedPerTopic;
  @override
  final List<WatchedVideo>? watchedVideos;

  @override
  String toString() {
    return 'UserProfile(name: $name, userId: $userId, selectedTopics: $selectedTopics, bookmarks: $bookmarks, totalWatchTime: $totalWatchTime, videosWatchedPerTopic: $videosWatchedPerTopic, watchedVideos: $watchedVideos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserProfile &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.selectedTopics, selectedTopics) ||
                const DeepCollectionEquality()
                    .equals(other.selectedTopics, selectedTopics)) &&
            (identical(other.bookmarks, bookmarks) ||
                const DeepCollectionEquality()
                    .equals(other.bookmarks, bookmarks)) &&
            (identical(other.totalWatchTime, totalWatchTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalWatchTime, totalWatchTime)) &&
            (identical(other.videosWatchedPerTopic, videosWatchedPerTopic) ||
                const DeepCollectionEquality().equals(
                    other.videosWatchedPerTopic, videosWatchedPerTopic)) &&
            (identical(other.watchedVideos, watchedVideos) ||
                const DeepCollectionEquality()
                    .equals(other.watchedVideos, watchedVideos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(selectedTopics) ^
      const DeepCollectionEquality().hash(bookmarks) ^
      const DeepCollectionEquality().hash(totalWatchTime) ^
      const DeepCollectionEquality().hash(videosWatchedPerTopic) ^
      const DeepCollectionEquality().hash(watchedVideos);

  @JsonKey(ignore: true)
  @override
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileToJson(this);
  }
}

abstract class _UserProfile extends UserProfile {
  factory _UserProfile(
      {required String name,
      required String userId,
      List<String> selectedTopics,
      List<String> bookmarks,
      int? totalWatchTime,
      List<TopicCount>? videosWatchedPerTopic,
      List<WatchedVideo>? watchedVideos}) = _$_UserProfile;
  _UserProfile._() : super._();

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$_UserProfile.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  List<String> get selectedTopics => throw _privateConstructorUsedError;
  @override
  List<String> get bookmarks => throw _privateConstructorUsedError;
  @override
  int? get totalWatchTime => throw _privateConstructorUsedError;
  @override
  List<TopicCount>? get videosWatchedPerTopic =>
      throw _privateConstructorUsedError;
  @override
  List<WatchedVideo>? get watchedVideos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

TopicCount _$TopicCountFromJson(Map<String, dynamic> json) {
  return _TopicCount.fromJson(json);
}

/// @nodoc
class _$TopicCountTearOff {
  const _$TopicCountTearOff();

  _TopicCount call({required String topic, required int count}) {
    return _TopicCount(
      topic: topic,
      count: count,
    );
  }

  TopicCount fromJson(Map<String, Object> json) {
    return TopicCount.fromJson(json);
  }
}

/// @nodoc
const $TopicCount = _$TopicCountTearOff();

/// @nodoc
mixin _$TopicCount {
  String get topic => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicCountCopyWith<TopicCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicCountCopyWith<$Res> {
  factory $TopicCountCopyWith(
          TopicCount value, $Res Function(TopicCount) then) =
      _$TopicCountCopyWithImpl<$Res>;
  $Res call({String topic, int count});
}

/// @nodoc
class _$TopicCountCopyWithImpl<$Res> implements $TopicCountCopyWith<$Res> {
  _$TopicCountCopyWithImpl(this._value, this._then);

  final TopicCount _value;
  // ignore: unused_field
  final $Res Function(TopicCount) _then;

  @override
  $Res call({
    Object? topic = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TopicCountCopyWith<$Res> implements $TopicCountCopyWith<$Res> {
  factory _$TopicCountCopyWith(
          _TopicCount value, $Res Function(_TopicCount) then) =
      __$TopicCountCopyWithImpl<$Res>;
  @override
  $Res call({String topic, int count});
}

/// @nodoc
class __$TopicCountCopyWithImpl<$Res> extends _$TopicCountCopyWithImpl<$Res>
    implements _$TopicCountCopyWith<$Res> {
  __$TopicCountCopyWithImpl(
      _TopicCount _value, $Res Function(_TopicCount) _then)
      : super(_value, (v) => _then(v as _TopicCount));

  @override
  _TopicCount get _value => super._value as _TopicCount;

  @override
  $Res call({
    Object? topic = freezed,
    Object? count = freezed,
  }) {
    return _then(_TopicCount(
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopicCount extends _TopicCount {
  _$_TopicCount({required this.topic, required this.count}) : super._();

  factory _$_TopicCount.fromJson(Map<String, dynamic> json) =>
      _$$_TopicCountFromJson(json);

  @override
  final String topic;
  @override
  final int count;

  @override
  String toString() {
    return 'TopicCount(topic: $topic, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TopicCount &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(topic) ^
      const DeepCollectionEquality().hash(count);

  @JsonKey(ignore: true)
  @override
  _$TopicCountCopyWith<_TopicCount> get copyWith =>
      __$TopicCountCopyWithImpl<_TopicCount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopicCountToJson(this);
  }
}

abstract class _TopicCount extends TopicCount {
  factory _TopicCount({required String topic, required int count}) =
      _$_TopicCount;
  _TopicCount._() : super._();

  factory _TopicCount.fromJson(Map<String, dynamic> json) =
      _$_TopicCount.fromJson;

  @override
  String get topic => throw _privateConstructorUsedError;
  @override
  int get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TopicCountCopyWith<_TopicCount> get copyWith =>
      throw _privateConstructorUsedError;
}

WatchedVideo _$WatchedVideoFromJson(Map<String, dynamic> json) {
  return _WatchedVideo.fromJson(json);
}

/// @nodoc
class _$WatchedVideoTearOff {
  const _$WatchedVideoTearOff();

  _WatchedVideo call(
      {required String videoId,
      required String topicId,
      required String channelId}) {
    return _WatchedVideo(
      videoId: videoId,
      topicId: topicId,
      channelId: channelId,
    );
  }

  WatchedVideo fromJson(Map<String, Object> json) {
    return WatchedVideo.fromJson(json);
  }
}

/// @nodoc
const $WatchedVideo = _$WatchedVideoTearOff();

/// @nodoc
mixin _$WatchedVideo {
  String get videoId => throw _privateConstructorUsedError;
  String get topicId => throw _privateConstructorUsedError;
  String get channelId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WatchedVideoCopyWith<WatchedVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchedVideoCopyWith<$Res> {
  factory $WatchedVideoCopyWith(
          WatchedVideo value, $Res Function(WatchedVideo) then) =
      _$WatchedVideoCopyWithImpl<$Res>;
  $Res call({String videoId, String topicId, String channelId});
}

/// @nodoc
class _$WatchedVideoCopyWithImpl<$Res> implements $WatchedVideoCopyWith<$Res> {
  _$WatchedVideoCopyWithImpl(this._value, this._then);

  final WatchedVideo _value;
  // ignore: unused_field
  final $Res Function(WatchedVideo) _then;

  @override
  $Res call({
    Object? videoId = freezed,
    Object? topicId = freezed,
    Object? channelId = freezed,
  }) {
    return _then(_value.copyWith(
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      topicId: topicId == freezed
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WatchedVideoCopyWith<$Res>
    implements $WatchedVideoCopyWith<$Res> {
  factory _$WatchedVideoCopyWith(
          _WatchedVideo value, $Res Function(_WatchedVideo) then) =
      __$WatchedVideoCopyWithImpl<$Res>;
  @override
  $Res call({String videoId, String topicId, String channelId});
}

/// @nodoc
class __$WatchedVideoCopyWithImpl<$Res> extends _$WatchedVideoCopyWithImpl<$Res>
    implements _$WatchedVideoCopyWith<$Res> {
  __$WatchedVideoCopyWithImpl(
      _WatchedVideo _value, $Res Function(_WatchedVideo) _then)
      : super(_value, (v) => _then(v as _WatchedVideo));

  @override
  _WatchedVideo get _value => super._value as _WatchedVideo;

  @override
  $Res call({
    Object? videoId = freezed,
    Object? topicId = freezed,
    Object? channelId = freezed,
  }) {
    return _then(_WatchedVideo(
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      topicId: topicId == freezed
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WatchedVideo extends _WatchedVideo {
  _$_WatchedVideo(
      {required this.videoId, required this.topicId, required this.channelId})
      : super._();

  factory _$_WatchedVideo.fromJson(Map<String, dynamic> json) =>
      _$$_WatchedVideoFromJson(json);

  @override
  final String videoId;
  @override
  final String topicId;
  @override
  final String channelId;

  @override
  String toString() {
    return 'WatchedVideo(videoId: $videoId, topicId: $topicId, channelId: $channelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchedVideo &&
            (identical(other.videoId, videoId) ||
                const DeepCollectionEquality()
                    .equals(other.videoId, videoId)) &&
            (identical(other.topicId, topicId) ||
                const DeepCollectionEquality()
                    .equals(other.topicId, topicId)) &&
            (identical(other.channelId, channelId) ||
                const DeepCollectionEquality()
                    .equals(other.channelId, channelId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(videoId) ^
      const DeepCollectionEquality().hash(topicId) ^
      const DeepCollectionEquality().hash(channelId);

  @JsonKey(ignore: true)
  @override
  _$WatchedVideoCopyWith<_WatchedVideo> get copyWith =>
      __$WatchedVideoCopyWithImpl<_WatchedVideo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WatchedVideoToJson(this);
  }
}

abstract class _WatchedVideo extends WatchedVideo {
  factory _WatchedVideo(
      {required String videoId,
      required String topicId,
      required String channelId}) = _$_WatchedVideo;
  _WatchedVideo._() : super._();

  factory _WatchedVideo.fromJson(Map<String, dynamic> json) =
      _$_WatchedVideo.fromJson;

  @override
  String get videoId => throw _privateConstructorUsedError;
  @override
  String get topicId => throw _privateConstructorUsedError;
  @override
  String get channelId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WatchedVideoCopyWith<_WatchedVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

Count _$CountFromJson(Map<String, dynamic> json) {
  return _Count.fromJson(json);
}

/// @nodoc
class _$CountTearOff {
  const _$CountTearOff();

  _Count call({required String date, required int count}) {
    return _Count(
      date: date,
      count: count,
    );
  }

  Count fromJson(Map<String, Object> json) {
    return Count.fromJson(json);
  }
}

/// @nodoc
const $Count = _$CountTearOff();

/// @nodoc
mixin _$Count {
  String get date => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountCopyWith<Count> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountCopyWith<$Res> {
  factory $CountCopyWith(Count value, $Res Function(Count) then) =
      _$CountCopyWithImpl<$Res>;
  $Res call({String date, int count});
}

/// @nodoc
class _$CountCopyWithImpl<$Res> implements $CountCopyWith<$Res> {
  _$CountCopyWithImpl(this._value, this._then);

  final Count _value;
  // ignore: unused_field
  final $Res Function(Count) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CountCopyWith<$Res> implements $CountCopyWith<$Res> {
  factory _$CountCopyWith(_Count value, $Res Function(_Count) then) =
      __$CountCopyWithImpl<$Res>;
  @override
  $Res call({String date, int count});
}

/// @nodoc
class __$CountCopyWithImpl<$Res> extends _$CountCopyWithImpl<$Res>
    implements _$CountCopyWith<$Res> {
  __$CountCopyWithImpl(_Count _value, $Res Function(_Count) _then)
      : super(_value, (v) => _then(v as _Count));

  @override
  _Count get _value => super._value as _Count;

  @override
  $Res call({
    Object? date = freezed,
    Object? count = freezed,
  }) {
    return _then(_Count(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Count extends _Count {
  _$_Count({required this.date, required this.count}) : super._();

  factory _$_Count.fromJson(Map<String, dynamic> json) =>
      _$$_CountFromJson(json);

  @override
  final String date;
  @override
  final int count;

  @override
  String toString() {
    return 'Count(date: $date, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Count &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(count);

  @JsonKey(ignore: true)
  @override
  _$CountCopyWith<_Count> get copyWith =>
      __$CountCopyWithImpl<_Count>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountToJson(this);
  }
}

abstract class _Count extends Count {
  factory _Count({required String date, required int count}) = _$_Count;
  _Count._() : super._();

  factory _Count.fromJson(Map<String, dynamic> json) = _$_Count.fromJson;

  @override
  String get date => throw _privateConstructorUsedError;
  @override
  int get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CountCopyWith<_Count> get copyWith => throw _privateConstructorUsedError;
}

VideoWatched _$VideoWatchedFromJson(Map<String, dynamic> json) {
  return _VideoWatched.fromJson(json);
}

/// @nodoc
class _$VideoWatchedTearOff {
  const _$VideoWatchedTearOff();

  _VideoWatched call({required String topic, required int count}) {
    return _VideoWatched(
      topic: topic,
      count: count,
    );
  }

  VideoWatched fromJson(Map<String, Object> json) {
    return VideoWatched.fromJson(json);
  }
}

/// @nodoc
const $VideoWatched = _$VideoWatchedTearOff();

/// @nodoc
mixin _$VideoWatched {
  String get topic => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoWatchedCopyWith<VideoWatched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoWatchedCopyWith<$Res> {
  factory $VideoWatchedCopyWith(
          VideoWatched value, $Res Function(VideoWatched) then) =
      _$VideoWatchedCopyWithImpl<$Res>;
  $Res call({String topic, int count});
}

/// @nodoc
class _$VideoWatchedCopyWithImpl<$Res> implements $VideoWatchedCopyWith<$Res> {
  _$VideoWatchedCopyWithImpl(this._value, this._then);

  final VideoWatched _value;
  // ignore: unused_field
  final $Res Function(VideoWatched) _then;

  @override
  $Res call({
    Object? topic = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$VideoWatchedCopyWith<$Res>
    implements $VideoWatchedCopyWith<$Res> {
  factory _$VideoWatchedCopyWith(
          _VideoWatched value, $Res Function(_VideoWatched) then) =
      __$VideoWatchedCopyWithImpl<$Res>;
  @override
  $Res call({String topic, int count});
}

/// @nodoc
class __$VideoWatchedCopyWithImpl<$Res> extends _$VideoWatchedCopyWithImpl<$Res>
    implements _$VideoWatchedCopyWith<$Res> {
  __$VideoWatchedCopyWithImpl(
      _VideoWatched _value, $Res Function(_VideoWatched) _then)
      : super(_value, (v) => _then(v as _VideoWatched));

  @override
  _VideoWatched get _value => super._value as _VideoWatched;

  @override
  $Res call({
    Object? topic = freezed,
    Object? count = freezed,
  }) {
    return _then(_VideoWatched(
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoWatched extends _VideoWatched {
  _$_VideoWatched({required this.topic, required this.count}) : super._();

  factory _$_VideoWatched.fromJson(Map<String, dynamic> json) =>
      _$$_VideoWatchedFromJson(json);

  @override
  final String topic;
  @override
  final int count;

  @override
  String toString() {
    return 'VideoWatched(topic: $topic, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoWatched &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(topic) ^
      const DeepCollectionEquality().hash(count);

  @JsonKey(ignore: true)
  @override
  _$VideoWatchedCopyWith<_VideoWatched> get copyWith =>
      __$VideoWatchedCopyWithImpl<_VideoWatched>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoWatchedToJson(this);
  }
}

abstract class _VideoWatched extends VideoWatched {
  factory _VideoWatched({required String topic, required int count}) =
      _$_VideoWatched;
  _VideoWatched._() : super._();

  factory _VideoWatched.fromJson(Map<String, dynamic> json) =
      _$_VideoWatched.fromJson;

  @override
  String get topic => throw _privateConstructorUsedError;
  @override
  int get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoWatchedCopyWith<_VideoWatched> get copyWith =>
      throw _privateConstructorUsedError;
}
