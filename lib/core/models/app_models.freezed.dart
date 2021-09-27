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

ChannelInformation _$ChannelInformationFromJson(Map<String, dynamic> json) {
  return _ChannelInformation.fromJson(json);
}

/// @nodoc
class _$ChannelInformationTearOff {
  const _$ChannelInformationTearOff();

  _ChannelInformation call(
      {@HiveField(0) String? id,
      @HiveField(1) String? name,
      @HiveField(3) @JsonKey(name: "subscriber_count") int? subscriberCount}) {
    return _ChannelInformation(
      id: id,
      name: name,
      subscriberCount: subscriberCount,
    );
  }

  ChannelInformation fromJson(Map<String, Object> json) {
    return ChannelInformation.fromJson(json);
  }
}

/// @nodoc
const $ChannelInformation = _$ChannelInformationTearOff();

/// @nodoc
mixin _$ChannelInformation {
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: "subscriber_count")
  int? get subscriberCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelInformationCopyWith<ChannelInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelInformationCopyWith<$Res> {
  factory $ChannelInformationCopyWith(
          ChannelInformation value, $Res Function(ChannelInformation) then) =
      _$ChannelInformationCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? name,
      @HiveField(3) @JsonKey(name: "subscriber_count") int? subscriberCount});
}

/// @nodoc
class _$ChannelInformationCopyWithImpl<$Res>
    implements $ChannelInformationCopyWith<$Res> {
  _$ChannelInformationCopyWithImpl(this._value, this._then);

  final ChannelInformation _value;
  // ignore: unused_field
  final $Res Function(ChannelInformation) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? subscriberCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriberCount: subscriberCount == freezed
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ChannelInformationCopyWith<$Res>
    implements $ChannelInformationCopyWith<$Res> {
  factory _$ChannelInformationCopyWith(
          _ChannelInformation value, $Res Function(_ChannelInformation) then) =
      __$ChannelInformationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? id,
      @HiveField(1) String? name,
      @HiveField(3) @JsonKey(name: "subscriber_count") int? subscriberCount});
}

/// @nodoc
class __$ChannelInformationCopyWithImpl<$Res>
    extends _$ChannelInformationCopyWithImpl<$Res>
    implements _$ChannelInformationCopyWith<$Res> {
  __$ChannelInformationCopyWithImpl(
      _ChannelInformation _value, $Res Function(_ChannelInformation) _then)
      : super(_value, (v) => _then(v as _ChannelInformation));

  @override
  _ChannelInformation get _value => super._value as _ChannelInformation;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? subscriberCount = freezed,
  }) {
    return _then(_ChannelInformation(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriberCount: subscriberCount == freezed
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 4)
class _$_ChannelInformation extends _ChannelInformation {
  _$_ChannelInformation(
      {@HiveField(0) this.id,
      @HiveField(1) this.name,
      @HiveField(3) @JsonKey(name: "subscriber_count") this.subscriberCount})
      : super._();

  factory _$_ChannelInformation.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelInformationFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? name;
  @override
  @HiveField(3)
  @JsonKey(name: "subscriber_count")
  final int? subscriberCount;

  @override
  String toString() {
    return 'ChannelInformation(id: $id, name: $name, subscriberCount: $subscriberCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChannelInformation &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.subscriberCount, subscriberCount) ||
                const DeepCollectionEquality()
                    .equals(other.subscriberCount, subscriberCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(subscriberCount);

  @JsonKey(ignore: true)
  @override
  _$ChannelInformationCopyWith<_ChannelInformation> get copyWith =>
      __$ChannelInformationCopyWithImpl<_ChannelInformation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelInformationToJson(this);
  }
}

abstract class _ChannelInformation extends ChannelInformation {
  factory _ChannelInformation(
      {@HiveField(0)
          String? id,
      @HiveField(1)
          String? name,
      @HiveField(3)
      @JsonKey(name: "subscriber_count")
          int? subscriberCount}) = _$_ChannelInformation;
  _ChannelInformation._() : super._();

  factory _ChannelInformation.fromJson(Map<String, dynamic> json) =
      _$_ChannelInformation.fromJson;

  @override
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  @JsonKey(name: "subscriber_count")
  int? get subscriberCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChannelInformationCopyWith<_ChannelInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

ContentDetails _$ContentDetailsFromJson(Map<String, dynamic> json) {
  return _ContentDetails.fromJson(json);
}

/// @nodoc
class _$ContentDetailsTearOff {
  const _$ContentDetailsTearOff();

  _ContentDetails call(
      {@HiveField(0) @JsonKey(name: "youtube_category") int? youtubeCategory,
      @HiveField(1) @JsonKey(name: "captions_available") bool? hasCaptions,
      @HiveField(2) int? dislikes,
      @HiveField(3) int? likes,
      @HiveField(4) int? duration,
      @HiveField(5) int? views}) {
    return _ContentDetails(
      youtubeCategory: youtubeCategory,
      hasCaptions: hasCaptions,
      dislikes: dislikes,
      likes: likes,
      duration: duration,
      views: views,
    );
  }

  ContentDetails fromJson(Map<String, Object> json) {
    return ContentDetails.fromJson(json);
  }
}

/// @nodoc
const $ContentDetails = _$ContentDetailsTearOff();

/// @nodoc
mixin _$ContentDetails {
  @HiveField(0)
  @JsonKey(name: "youtube_category")
  int? get youtubeCategory => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: "captions_available")
  bool? get hasCaptions => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get dislikes => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get likes => throw _privateConstructorUsedError;
  @HiveField(4)
  int? get duration => throw _privateConstructorUsedError;
  @HiveField(5)
  int? get views => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentDetailsCopyWith<ContentDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentDetailsCopyWith<$Res> {
  factory $ContentDetailsCopyWith(
          ContentDetails value, $Res Function(ContentDetails) then) =
      _$ContentDetailsCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(name: "youtube_category") int? youtubeCategory,
      @HiveField(1) @JsonKey(name: "captions_available") bool? hasCaptions,
      @HiveField(2) int? dislikes,
      @HiveField(3) int? likes,
      @HiveField(4) int? duration,
      @HiveField(5) int? views});
}

/// @nodoc
class _$ContentDetailsCopyWithImpl<$Res>
    implements $ContentDetailsCopyWith<$Res> {
  _$ContentDetailsCopyWithImpl(this._value, this._then);

  final ContentDetails _value;
  // ignore: unused_field
  final $Res Function(ContentDetails) _then;

  @override
  $Res call({
    Object? youtubeCategory = freezed,
    Object? hasCaptions = freezed,
    Object? dislikes = freezed,
    Object? likes = freezed,
    Object? duration = freezed,
    Object? views = freezed,
  }) {
    return _then(_value.copyWith(
      youtubeCategory: youtubeCategory == freezed
          ? _value.youtubeCategory
          : youtubeCategory // ignore: cast_nullable_to_non_nullable
              as int?,
      hasCaptions: hasCaptions == freezed
          ? _value.hasCaptions
          : hasCaptions // ignore: cast_nullable_to_non_nullable
              as bool?,
      dislikes: dislikes == freezed
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as int?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ContentDetailsCopyWith<$Res>
    implements $ContentDetailsCopyWith<$Res> {
  factory _$ContentDetailsCopyWith(
          _ContentDetails value, $Res Function(_ContentDetails) then) =
      __$ContentDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(name: "youtube_category") int? youtubeCategory,
      @HiveField(1) @JsonKey(name: "captions_available") bool? hasCaptions,
      @HiveField(2) int? dislikes,
      @HiveField(3) int? likes,
      @HiveField(4) int? duration,
      @HiveField(5) int? views});
}

/// @nodoc
class __$ContentDetailsCopyWithImpl<$Res>
    extends _$ContentDetailsCopyWithImpl<$Res>
    implements _$ContentDetailsCopyWith<$Res> {
  __$ContentDetailsCopyWithImpl(
      _ContentDetails _value, $Res Function(_ContentDetails) _then)
      : super(_value, (v) => _then(v as _ContentDetails));

  @override
  _ContentDetails get _value => super._value as _ContentDetails;

  @override
  $Res call({
    Object? youtubeCategory = freezed,
    Object? hasCaptions = freezed,
    Object? dislikes = freezed,
    Object? likes = freezed,
    Object? duration = freezed,
    Object? views = freezed,
  }) {
    return _then(_ContentDetails(
      youtubeCategory: youtubeCategory == freezed
          ? _value.youtubeCategory
          : youtubeCategory // ignore: cast_nullable_to_non_nullable
              as int?,
      hasCaptions: hasCaptions == freezed
          ? _value.hasCaptions
          : hasCaptions // ignore: cast_nullable_to_non_nullable
              as bool?,
      dislikes: dislikes == freezed
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as int?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 5)
class _$_ContentDetails extends _ContentDetails {
  _$_ContentDetails(
      {@HiveField(0) @JsonKey(name: "youtube_category") this.youtubeCategory,
      @HiveField(1) @JsonKey(name: "captions_available") this.hasCaptions,
      @HiveField(2) this.dislikes,
      @HiveField(3) this.likes,
      @HiveField(4) this.duration,
      @HiveField(5) this.views})
      : super._();

  factory _$_ContentDetails.fromJson(Map<String, dynamic> json) =>
      _$$_ContentDetailsFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: "youtube_category")
  final int? youtubeCategory;
  @override
  @HiveField(1)
  @JsonKey(name: "captions_available")
  final bool? hasCaptions;
  @override
  @HiveField(2)
  final int? dislikes;
  @override
  @HiveField(3)
  final int? likes;
  @override
  @HiveField(4)
  final int? duration;
  @override
  @HiveField(5)
  final int? views;

  @override
  String toString() {
    return 'ContentDetails(youtubeCategory: $youtubeCategory, hasCaptions: $hasCaptions, dislikes: $dislikes, likes: $likes, duration: $duration, views: $views)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContentDetails &&
            (identical(other.youtubeCategory, youtubeCategory) ||
                const DeepCollectionEquality()
                    .equals(other.youtubeCategory, youtubeCategory)) &&
            (identical(other.hasCaptions, hasCaptions) ||
                const DeepCollectionEquality()
                    .equals(other.hasCaptions, hasCaptions)) &&
            (identical(other.dislikes, dislikes) ||
                const DeepCollectionEquality()
                    .equals(other.dislikes, dislikes)) &&
            (identical(other.likes, likes) ||
                const DeepCollectionEquality().equals(other.likes, likes)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.views, views) ||
                const DeepCollectionEquality().equals(other.views, views)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(youtubeCategory) ^
      const DeepCollectionEquality().hash(hasCaptions) ^
      const DeepCollectionEquality().hash(dislikes) ^
      const DeepCollectionEquality().hash(likes) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(views);

  @JsonKey(ignore: true)
  @override
  _$ContentDetailsCopyWith<_ContentDetails> get copyWith =>
      __$ContentDetailsCopyWithImpl<_ContentDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentDetailsToJson(this);
  }
}

abstract class _ContentDetails extends ContentDetails {
  factory _ContentDetails(
      {@HiveField(0) @JsonKey(name: "youtube_category") int? youtubeCategory,
      @HiveField(1) @JsonKey(name: "captions_available") bool? hasCaptions,
      @HiveField(2) int? dislikes,
      @HiveField(3) int? likes,
      @HiveField(4) int? duration,
      @HiveField(5) int? views}) = _$_ContentDetails;
  _ContentDetails._() : super._();

  factory _ContentDetails.fromJson(Map<String, dynamic> json) =
      _$_ContentDetails.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: "youtube_category")
  int? get youtubeCategory => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  @JsonKey(name: "captions_available")
  bool? get hasCaptions => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  int? get dislikes => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  int? get likes => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  int? get duration => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  int? get views => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContentDetailsCopyWith<_ContentDetails> get copyWith =>
      throw _privateConstructorUsedError;
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
      @JsonKey(name: "title")
          required String title,
      @HiveField(2)
      @JsonKey(name: "video_url")
          required String videoUrl,
      @HiveField(3)
      @JsonKey(name: "topic")
          required Topic topic,
      @HiveField(4)
      @JsonKey(name: "start_timestamp")
          int? startTimestamp,
      @HiveField(5)
      @JsonKey(name: "end_timestamp")
          int? endTimestamp,
      @HiveField(6)
      @JsonKey(name: "channel_information")
          ChannelInformation? channelInformation,
      @HiveField(7)
      @JsonKey(name: "content_details")
          ContentDetails? contentDetails}) {
    return _Video(
      id: id,
      title: title,
      videoUrl: videoUrl,
      topic: topic,
      startTimestamp: startTimestamp,
      endTimestamp: endTimestamp,
      channelInformation: channelInformation,
      contentDetails: contentDetails,
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
  String get videoUrl => throw _privateConstructorUsedError;
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
  @JsonKey(name: "channel_information")
  ChannelInformation? get channelInformation =>
      throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: "content_details")
  ContentDetails? get contentDetails => throw _privateConstructorUsedError;

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
      @JsonKey(name: "title")
          String title,
      @HiveField(2)
      @JsonKey(name: "video_url")
          String videoUrl,
      @HiveField(3)
      @JsonKey(name: "topic")
          Topic topic,
      @HiveField(4)
      @JsonKey(name: "start_timestamp")
          int? startTimestamp,
      @HiveField(5)
      @JsonKey(name: "end_timestamp")
          int? endTimestamp,
      @HiveField(6)
      @JsonKey(name: "channel_information")
          ChannelInformation? channelInformation,
      @HiveField(7)
      @JsonKey(name: "content_details")
          ContentDetails? contentDetails});

  $TopicCopyWith<$Res> get topic;
  $ChannelInformationCopyWith<$Res>? get channelInformation;
  $ContentDetailsCopyWith<$Res>? get contentDetails;
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
    Object? videoUrl = freezed,
    Object? topic = freezed,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? channelInformation = freezed,
    Object? contentDetails = freezed,
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
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
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
      channelInformation: channelInformation == freezed
          ? _value.channelInformation
          : channelInformation // ignore: cast_nullable_to_non_nullable
              as ChannelInformation?,
      contentDetails: contentDetails == freezed
          ? _value.contentDetails
          : contentDetails // ignore: cast_nullable_to_non_nullable
              as ContentDetails?,
    ));
  }

  @override
  $TopicCopyWith<$Res> get topic {
    return $TopicCopyWith<$Res>(_value.topic, (value) {
      return _then(_value.copyWith(topic: value));
    });
  }

  @override
  $ChannelInformationCopyWith<$Res>? get channelInformation {
    if (_value.channelInformation == null) {
      return null;
    }

    return $ChannelInformationCopyWith<$Res>(_value.channelInformation!,
        (value) {
      return _then(_value.copyWith(channelInformation: value));
    });
  }

  @override
  $ContentDetailsCopyWith<$Res>? get contentDetails {
    if (_value.contentDetails == null) {
      return null;
    }

    return $ContentDetailsCopyWith<$Res>(_value.contentDetails!, (value) {
      return _then(_value.copyWith(contentDetails: value));
    });
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
      @JsonKey(name: "title")
          String title,
      @HiveField(2)
      @JsonKey(name: "video_url")
          String videoUrl,
      @HiveField(3)
      @JsonKey(name: "topic")
          Topic topic,
      @HiveField(4)
      @JsonKey(name: "start_timestamp")
          int? startTimestamp,
      @HiveField(5)
      @JsonKey(name: "end_timestamp")
          int? endTimestamp,
      @HiveField(6)
      @JsonKey(name: "channel_information")
          ChannelInformation? channelInformation,
      @HiveField(7)
      @JsonKey(name: "content_details")
          ContentDetails? contentDetails});

  @override
  $TopicCopyWith<$Res> get topic;
  @override
  $ChannelInformationCopyWith<$Res>? get channelInformation;
  @override
  $ContentDetailsCopyWith<$Res>? get contentDetails;
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
    Object? videoUrl = freezed,
    Object? topic = freezed,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? channelInformation = freezed,
    Object? contentDetails = freezed,
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
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
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
      channelInformation: channelInformation == freezed
          ? _value.channelInformation
          : channelInformation // ignore: cast_nullable_to_non_nullable
              as ChannelInformation?,
      contentDetails: contentDetails == freezed
          ? _value.contentDetails
          : contentDetails // ignore: cast_nullable_to_non_nullable
              as ContentDetails?,
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
          required this.videoUrl,
      @HiveField(3)
      @JsonKey(name: "topic")
          required this.topic,
      @HiveField(4)
      @JsonKey(name: "start_timestamp")
          this.startTimestamp,
      @HiveField(5)
      @JsonKey(name: "end_timestamp")
          this.endTimestamp,
      @HiveField(6)
      @JsonKey(name: "channel_information")
          this.channelInformation,
      @HiveField(7)
      @JsonKey(name: "content_details")
          this.contentDetails})
      : super._();

  factory _$_Video.fromJson(Map<String, dynamic> json) =>
      _$$_VideoFromJson(json);

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
  final String videoUrl;
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
  @JsonKey(name: "channel_information")
  final ChannelInformation? channelInformation;
  @override
  @HiveField(7)
  @JsonKey(name: "content_details")
  final ContentDetails? contentDetails;

  @override
  String toString() {
    return 'Video(id: $id, title: $title, videoUrl: $videoUrl, topic: $topic, startTimestamp: $startTimestamp, endTimestamp: $endTimestamp, channelInformation: $channelInformation, contentDetails: $contentDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Video &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.videoUrl, videoUrl)) &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)) &&
            (identical(other.startTimestamp, startTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.startTimestamp, startTimestamp)) &&
            (identical(other.endTimestamp, endTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.endTimestamp, endTimestamp)) &&
            (identical(other.channelInformation, channelInformation) ||
                const DeepCollectionEquality()
                    .equals(other.channelInformation, channelInformation)) &&
            (identical(other.contentDetails, contentDetails) ||
                const DeepCollectionEquality()
                    .equals(other.contentDetails, contentDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(videoUrl) ^
      const DeepCollectionEquality().hash(topic) ^
      const DeepCollectionEquality().hash(startTimestamp) ^
      const DeepCollectionEquality().hash(endTimestamp) ^
      const DeepCollectionEquality().hash(channelInformation) ^
      const DeepCollectionEquality().hash(contentDetails);

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
      @JsonKey(name: "title")
          required String title,
      @HiveField(2)
      @JsonKey(name: "video_url")
          required String videoUrl,
      @HiveField(3)
      @JsonKey(name: "topic")
          required Topic topic,
      @HiveField(4)
      @JsonKey(name: "start_timestamp")
          int? startTimestamp,
      @HiveField(5)
      @JsonKey(name: "end_timestamp")
          int? endTimestamp,
      @HiveField(6)
      @JsonKey(name: "channel_information")
          ChannelInformation? channelInformation,
      @HiveField(7)
      @JsonKey(name: "content_details")
          ContentDetails? contentDetails}) = _$_Video;
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
  String get videoUrl => throw _privateConstructorUsedError;
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
  @JsonKey(name: "channel_information")
  ChannelInformation? get channelInformation =>
      throw _privateConstructorUsedError;
  @override
  @HiveField(7)
  @JsonKey(name: "content_details")
  ContentDetails? get contentDetails => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoCopyWith<_Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  _GenericError error(Error error) {
    return _GenericError(
      error,
    );
  }

  _RaisedException exception(Exception exception) {
    return _RaisedException(
      exception,
    );
  }

  _FailureMessage message(String message) {
    return _FailureMessage(
      message,
    );
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) error,
    required TResult Function(Exception exception) exception,
    required TResult Function(String message) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Error error)? error,
    TResult Function(Exception exception)? exception,
    TResult Function(String message)? message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? error,
    TResult Function(Exception exception)? exception,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenericError value) error,
    required TResult Function(_RaisedException value) exception,
    required TResult Function(_FailureMessage value) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GenericError value)? error,
    TResult Function(_RaisedException value)? exception,
    TResult Function(_FailureMessage value)? message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenericError value)? error,
    TResult Function(_RaisedException value)? exception,
    TResult Function(_FailureMessage value)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$GenericErrorCopyWith<$Res> {
  factory _$GenericErrorCopyWith(
          _GenericError value, $Res Function(_GenericError) then) =
      __$GenericErrorCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class __$GenericErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$GenericErrorCopyWith<$Res> {
  __$GenericErrorCopyWithImpl(
      _GenericError _value, $Res Function(_GenericError) _then)
      : super(_value, (v) => _then(v as _GenericError));

  @override
  _GenericError get _value => super._value as _GenericError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_GenericError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$_GenericError implements _GenericError {
  const _$_GenericError(this.error);

  @override
  final Error error;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenericError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$GenericErrorCopyWith<_GenericError> get copyWith =>
      __$GenericErrorCopyWithImpl<_GenericError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) error,
    required TResult Function(Exception exception) exception,
    required TResult Function(String message) message,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Error error)? error,
    TResult Function(Exception exception)? exception,
    TResult Function(String message)? message,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? error,
    TResult Function(Exception exception)? exception,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenericError value) error,
    required TResult Function(_RaisedException value) exception,
    required TResult Function(_FailureMessage value) message,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GenericError value)? error,
    TResult Function(_RaisedException value)? exception,
    TResult Function(_FailureMessage value)? message,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenericError value)? error,
    TResult Function(_RaisedException value)? exception,
    TResult Function(_FailureMessage value)? message,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _GenericError implements Failure {
  const factory _GenericError(Error error) = _$_GenericError;

  Error get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GenericErrorCopyWith<_GenericError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RaisedExceptionCopyWith<$Res> {
  factory _$RaisedExceptionCopyWith(
          _RaisedException value, $Res Function(_RaisedException) then) =
      __$RaisedExceptionCopyWithImpl<$Res>;
  $Res call({Exception exception});
}

/// @nodoc
class __$RaisedExceptionCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$RaisedExceptionCopyWith<$Res> {
  __$RaisedExceptionCopyWithImpl(
      _RaisedException _value, $Res Function(_RaisedException) _then)
      : super(_value, (v) => _then(v as _RaisedException));

  @override
  _RaisedException get _value => super._value as _RaisedException;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_RaisedException(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_RaisedException implements _RaisedException {
  const _$_RaisedException(this.exception);

  @override
  final Exception exception;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RaisedException &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$RaisedExceptionCopyWith<_RaisedException> get copyWith =>
      __$RaisedExceptionCopyWithImpl<_RaisedException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) error,
    required TResult Function(Exception exception) exception,
    required TResult Function(String message) message,
  }) {
    return exception(this.exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Error error)? error,
    TResult Function(Exception exception)? exception,
    TResult Function(String message)? message,
  }) {
    return exception?.call(this.exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? error,
    TResult Function(Exception exception)? exception,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this.exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenericError value) error,
    required TResult Function(_RaisedException value) exception,
    required TResult Function(_FailureMessage value) message,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GenericError value)? error,
    TResult Function(_RaisedException value)? exception,
    TResult Function(_FailureMessage value)? message,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenericError value)? error,
    TResult Function(_RaisedException value)? exception,
    TResult Function(_FailureMessage value)? message,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class _RaisedException implements Failure {
  const factory _RaisedException(Exception exception) = _$_RaisedException;

  Exception get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RaisedExceptionCopyWith<_RaisedException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureMessageCopyWith<$Res> {
  factory _$FailureMessageCopyWith(
          _FailureMessage value, $Res Function(_FailureMessage) then) =
      __$FailureMessageCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$FailureMessageCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$FailureMessageCopyWith<$Res> {
  __$FailureMessageCopyWithImpl(
      _FailureMessage _value, $Res Function(_FailureMessage) _then)
      : super(_value, (v) => _then(v as _FailureMessage));

  @override
  _FailureMessage get _value => super._value as _FailureMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_FailureMessage(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FailureMessage implements _FailureMessage {
  const _$_FailureMessage(this.message);

  @override
  final String message;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailureMessage &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$FailureMessageCopyWith<_FailureMessage> get copyWith =>
      __$FailureMessageCopyWithImpl<_FailureMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) error,
    required TResult Function(Exception exception) exception,
    required TResult Function(String message) message,
  }) {
    return message(this.message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Error error)? error,
    TResult Function(Exception exception)? exception,
    TResult Function(String message)? message,
  }) {
    return message?.call(this.message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? error,
    TResult Function(Exception exception)? exception,
    TResult Function(String message)? message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this.message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenericError value) error,
    required TResult Function(_RaisedException value) exception,
    required TResult Function(_FailureMessage value) message,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GenericError value)? error,
    TResult Function(_RaisedException value)? exception,
    TResult Function(_FailureMessage value)? message,
  }) {
    return message?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenericError value)? error,
    TResult Function(_RaisedException value)? exception,
    TResult Function(_FailureMessage value)? message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }
}

abstract class _FailureMessage implements Failure {
  const factory _FailureMessage(String message) = _$_FailureMessage;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureMessageCopyWith<_FailureMessage> get copyWith =>
      throw _privateConstructorUsedError;
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
