// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PostTearOff {
  const _$PostTearOff();

// ignore: unused_element
  _Post call(
      {@required String id,
      @required String authorName,
      @required String authorAvatar,
      @required String title,
      @required String description,
      @required String videoUrl,
      @required int startTimestamp,
      @required int endTimestamp,
      @required String topicId}) {
    return _Post(
      id: id,
      authorName: authorName,
      authorAvatar: authorAvatar,
      title: title,
      description: description,
      videoUrl: videoUrl,
      startTimestamp: startTimestamp,
      endTimestamp: endTimestamp,
      topicId: topicId,
    );
  }
}

// ignore: unused_element
const $Post = _$PostTearOff();

mixin _$Post {
  String get id;
  String get authorName;
  String get authorAvatar;
  String get title;
  String get description;
  String get videoUrl;
  int get startTimestamp;
  int get endTimestamp;
  String get topicId;

  $PostCopyWith<Post> get copyWith;
}

abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String authorName,
      String authorAvatar,
      String title,
      String description,
      String videoUrl,
      int startTimestamp,
      int endTimestamp,
      String topicId});
}

class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

  @override
  $Res call({
    Object id = freezed,
    Object authorName = freezed,
    Object authorAvatar = freezed,
    Object title = freezed,
    Object description = freezed,
    Object videoUrl = freezed,
    Object startTimestamp = freezed,
    Object endTimestamp = freezed,
    Object topicId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      authorName:
          authorName == freezed ? _value.authorName : authorName as String,
      authorAvatar: authorAvatar == freezed
          ? _value.authorAvatar
          : authorAvatar as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      videoUrl: videoUrl == freezed ? _value.videoUrl : videoUrl as String,
      startTimestamp: startTimestamp == freezed
          ? _value.startTimestamp
          : startTimestamp as int,
      endTimestamp:
          endTimestamp == freezed ? _value.endTimestamp : endTimestamp as int,
      topicId: topicId == freezed ? _value.topicId : topicId as String,
    ));
  }
}

abstract class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) then) =
      __$PostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String authorName,
      String authorAvatar,
      String title,
      String description,
      String videoUrl,
      int startTimestamp,
      int endTimestamp,
      String topicId});
}

class __$PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(_Post _value, $Res Function(_Post) _then)
      : super(_value, (v) => _then(v as _Post));

  @override
  _Post get _value => super._value as _Post;

  @override
  $Res call({
    Object id = freezed,
    Object authorName = freezed,
    Object authorAvatar = freezed,
    Object title = freezed,
    Object description = freezed,
    Object videoUrl = freezed,
    Object startTimestamp = freezed,
    Object endTimestamp = freezed,
    Object topicId = freezed,
  }) {
    return _then(_Post(
      id: id == freezed ? _value.id : id as String,
      authorName:
          authorName == freezed ? _value.authorName : authorName as String,
      authorAvatar: authorAvatar == freezed
          ? _value.authorAvatar
          : authorAvatar as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      videoUrl: videoUrl == freezed ? _value.videoUrl : videoUrl as String,
      startTimestamp: startTimestamp == freezed
          ? _value.startTimestamp
          : startTimestamp as int,
      endTimestamp:
          endTimestamp == freezed ? _value.endTimestamp : endTimestamp as int,
      topicId: topicId == freezed ? _value.topicId : topicId as String,
    ));
  }
}

class _$_Post implements _Post {
  const _$_Post(
      {@required this.id,
      @required this.authorName,
      @required this.authorAvatar,
      @required this.title,
      @required this.description,
      @required this.videoUrl,
      @required this.startTimestamp,
      @required this.endTimestamp,
      @required this.topicId})
      : assert(id != null),
        assert(authorName != null),
        assert(authorAvatar != null),
        assert(title != null),
        assert(description != null),
        assert(videoUrl != null),
        assert(startTimestamp != null),
        assert(endTimestamp != null),
        assert(topicId != null);

  @override
  final String id;
  @override
  final String authorName;
  @override
  final String authorAvatar;
  @override
  final String title;
  @override
  final String description;
  @override
  final String videoUrl;
  @override
  final int startTimestamp;
  @override
  final int endTimestamp;
  @override
  final String topicId;

  @override
  String toString() {
    return 'Post(id: $id, authorName: $authorName, authorAvatar: $authorAvatar, title: $title, description: $description, videoUrl: $videoUrl, startTimestamp: $startTimestamp, endTimestamp: $endTimestamp, topicId: $topicId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Post &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.authorName, authorName) ||
                const DeepCollectionEquality()
                    .equals(other.authorName, authorName)) &&
            (identical(other.authorAvatar, authorAvatar) ||
                const DeepCollectionEquality()
                    .equals(other.authorAvatar, authorAvatar)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.videoUrl, videoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.videoUrl, videoUrl)) &&
            (identical(other.startTimestamp, startTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.startTimestamp, startTimestamp)) &&
            (identical(other.endTimestamp, endTimestamp) ||
                const DeepCollectionEquality()
                    .equals(other.endTimestamp, endTimestamp)) &&
            (identical(other.topicId, topicId) ||
                const DeepCollectionEquality().equals(other.topicId, topicId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(authorName) ^
      const DeepCollectionEquality().hash(authorAvatar) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(videoUrl) ^
      const DeepCollectionEquality().hash(startTimestamp) ^
      const DeepCollectionEquality().hash(endTimestamp) ^
      const DeepCollectionEquality().hash(topicId);

  @override
  _$PostCopyWith<_Post> get copyWith =>
      __$PostCopyWithImpl<_Post>(this, _$identity);
}

abstract class _Post implements Post {
  const factory _Post(
      {@required String id,
      @required String authorName,
      @required String authorAvatar,
      @required String title,
      @required String description,
      @required String videoUrl,
      @required int startTimestamp,
      @required int endTimestamp,
      @required String topicId}) = _$_Post;

  @override
  String get id;
  @override
  String get authorName;
  @override
  String get authorAvatar;
  @override
  String get title;
  @override
  String get description;
  @override
  String get videoUrl;
  @override
  int get startTimestamp;
  @override
  int get endTimestamp;
  @override
  String get topicId;
  @override
  _$PostCopyWith<_Post> get copyWith;
}
