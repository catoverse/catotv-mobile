// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

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
    return _$_$_UserToJson(this);
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
      {required String id,
      required String name,
      @JsonKey(defaultValue: false) bool? isSelected}) {
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
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
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
      {String id, String name, @JsonKey(defaultValue: false) bool? isSelected});
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
      {String id, String name, @JsonKey(defaultValue: false) bool? isSelected});
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
class _$_Topic extends _Topic {
  _$_Topic(
      {required this.id,
      required this.name,
      @JsonKey(defaultValue: false) this.isSelected})
      : super._();

  factory _$_Topic.fromJson(Map<String, dynamic> json) =>
      _$_$_TopicFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(defaultValue: false)
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
    return _$_$_TopicToJson(this);
  }
}

abstract class _Topic extends Topic {
  factory _Topic(
      {required String id,
      required String name,
      @JsonKey(defaultValue: false) bool? isSelected}) = _$_Topic;
  _Topic._() : super._();

  factory _Topic.fromJson(Map<String, dynamic> json) = _$_Topic.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: false)
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
      {@HiveField(0) @JsonKey(name: "id") required String id,
      @HiveField(1) @JsonKey(name: "title") required String title,
      @HiveField(2) @JsonKey(name: "video_url") required String youtubeUrl,
      @HiveField(3) @JsonKey(name: "topic") required Topic topic,
      @HiveField(4) @JsonKey(name: "start_timestamp") int? startTimestamp,
      @HiveField(5) @JsonKey(name: "end_timestamp") int? endTimestamp,
      @HiveField(6) @JsonKey(ignore: true) String? videoUrl}) {
    return _Video(
      id: id,
      title: title,
      youtubeUrl: youtubeUrl,
      topic: topic,
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
  @JsonKey(name: "topic")
  Topic get topic => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: "start_timestamp")
  int? get startTimestamp => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: "end_timestamp")
  int? get endTimestamp => throw _privateConstructorUsedError;
  @HiveField(6)
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
      @HiveField(3) @JsonKey(name: "topic") Topic topic,
      @HiveField(4) @JsonKey(name: "start_timestamp") int? startTimestamp,
      @HiveField(5) @JsonKey(name: "end_timestamp") int? endTimestamp,
      @HiveField(6) @JsonKey(ignore: true) String? videoUrl});

  $TopicCopyWith<$Res> get topic;
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
    Object? topic = freezed,
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
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as Topic,
      startTimestamp: startTimestamp == freezed
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      endTimestamp: endTimestamp == freezed
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $TopicCopyWith<$Res> get topic {
    return $TopicCopyWith<$Res>(_value.topic, (value) {
      return _then(_value.copyWith(topic: value));
    });
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
      @HiveField(3) @JsonKey(name: "topic") Topic topic,
      @HiveField(4) @JsonKey(name: "start_timestamp") int? startTimestamp,
      @HiveField(5) @JsonKey(name: "end_timestamp") int? endTimestamp,
      @HiveField(6) @JsonKey(ignore: true) String? videoUrl});

  @override
  $TopicCopyWith<$Res> get topic;
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
    Object? topic = freezed,
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
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as Topic,
      startTimestamp: startTimestamp == freezed
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      endTimestamp: endTimestamp == freezed
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {@HiveField(0) @JsonKey(name: "id") required this.id,
      @HiveField(1) @JsonKey(name: "title") required this.title,
      @HiveField(2) @JsonKey(name: "video_url") required this.youtubeUrl,
      @HiveField(3) @JsonKey(name: "topic") required this.topic,
      @HiveField(4) @JsonKey(name: "start_timestamp") this.startTimestamp,
      @HiveField(5) @JsonKey(name: "end_timestamp") this.endTimestamp,
      @HiveField(6) @JsonKey(ignore: true) this.videoUrl})
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
  @JsonKey(name: "topic")
  final Topic topic;
  @override
  @HiveField(4)
  @JsonKey(name: "start_timestamp")
  final int? startTimestamp;
  @override
  @HiveField(5)
  @JsonKey(name: "end_timestamp")
  final int? endTimestamp;
  @override
  @HiveField(6)
  @JsonKey(ignore: true)
  final String? videoUrl;

  @override
  String toString() {
    return 'Video(id: $id, title: $title, youtubeUrl: $youtubeUrl, topic: $topic, startTimestamp: $startTimestamp, endTimestamp: $endTimestamp, videoUrl: $videoUrl)';
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
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)) &&
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
      const DeepCollectionEquality().hash(topic) ^
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
      {@HiveField(0) @JsonKey(name: "id") required String id,
      @HiveField(1) @JsonKey(name: "title") required String title,
      @HiveField(2) @JsonKey(name: "video_url") required String youtubeUrl,
      @HiveField(3) @JsonKey(name: "topic") required Topic topic,
      @HiveField(4) @JsonKey(name: "start_timestamp") int? startTimestamp,
      @HiveField(5) @JsonKey(name: "end_timestamp") int? endTimestamp,
      @HiveField(6) @JsonKey(ignore: true) String? videoUrl}) = _$_Video;
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
  @JsonKey(name: "topic")
  Topic get topic => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  @JsonKey(name: "start_timestamp")
  int? get startTimestamp => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  @JsonKey(name: "end_timestamp")
  int? get endTimestamp => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  @JsonKey(ignore: true)
  String? get videoUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoCopyWith<_Video> get copyWith => throw _privateConstructorUsedError;
}
