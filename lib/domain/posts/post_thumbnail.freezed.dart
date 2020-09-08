// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_thumbnail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PostThumbnailTearOff {
  const _$PostThumbnailTearOff();

// ignore: unused_element
  _PostThumbnail call({String thumbnailUrl, String thumbnailBlurHash}) {
    return _PostThumbnail(
      thumbnailUrl: thumbnailUrl,
      thumbnailBlurHash: thumbnailBlurHash,
    );
  }
}

// ignore: unused_element
const $PostThumbnail = _$PostThumbnailTearOff();

mixin _$PostThumbnail {
  String get thumbnailUrl;
  String get thumbnailBlurHash;

  $PostThumbnailCopyWith<PostThumbnail> get copyWith;
}

abstract class $PostThumbnailCopyWith<$Res> {
  factory $PostThumbnailCopyWith(
          PostThumbnail value, $Res Function(PostThumbnail) then) =
      _$PostThumbnailCopyWithImpl<$Res>;
  $Res call({String thumbnailUrl, String thumbnailBlurHash});
}

class _$PostThumbnailCopyWithImpl<$Res>
    implements $PostThumbnailCopyWith<$Res> {
  _$PostThumbnailCopyWithImpl(this._value, this._then);

  final PostThumbnail _value;
  // ignore: unused_field
  final $Res Function(PostThumbnail) _then;

  @override
  $Res call({
    Object thumbnailUrl = freezed,
    Object thumbnailBlurHash = freezed,
  }) {
    return _then(_value.copyWith(
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl as String,
      thumbnailBlurHash: thumbnailBlurHash == freezed
          ? _value.thumbnailBlurHash
          : thumbnailBlurHash as String,
    ));
  }
}

abstract class _$PostThumbnailCopyWith<$Res>
    implements $PostThumbnailCopyWith<$Res> {
  factory _$PostThumbnailCopyWith(
          _PostThumbnail value, $Res Function(_PostThumbnail) then) =
      __$PostThumbnailCopyWithImpl<$Res>;
  @override
  $Res call({String thumbnailUrl, String thumbnailBlurHash});
}

class __$PostThumbnailCopyWithImpl<$Res>
    extends _$PostThumbnailCopyWithImpl<$Res>
    implements _$PostThumbnailCopyWith<$Res> {
  __$PostThumbnailCopyWithImpl(
      _PostThumbnail _value, $Res Function(_PostThumbnail) _then)
      : super(_value, (v) => _then(v as _PostThumbnail));

  @override
  _PostThumbnail get _value => super._value as _PostThumbnail;

  @override
  $Res call({
    Object thumbnailUrl = freezed,
    Object thumbnailBlurHash = freezed,
  }) {
    return _then(_PostThumbnail(
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl as String,
      thumbnailBlurHash: thumbnailBlurHash == freezed
          ? _value.thumbnailBlurHash
          : thumbnailBlurHash as String,
    ));
  }
}

class _$_PostThumbnail implements _PostThumbnail {
  const _$_PostThumbnail({this.thumbnailUrl, this.thumbnailBlurHash});

  @override
  final String thumbnailUrl;
  @override
  final String thumbnailBlurHash;

  @override
  String toString() {
    return 'PostThumbnail(thumbnailUrl: $thumbnailUrl, thumbnailBlurHash: $thumbnailBlurHash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostThumbnail &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailUrl, thumbnailUrl)) &&
            (identical(other.thumbnailBlurHash, thumbnailBlurHash) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailBlurHash, thumbnailBlurHash)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(thumbnailBlurHash);

  @override
  _$PostThumbnailCopyWith<_PostThumbnail> get copyWith =>
      __$PostThumbnailCopyWithImpl<_PostThumbnail>(this, _$identity);
}

abstract class _PostThumbnail implements PostThumbnail {
  const factory _PostThumbnail(
      {String thumbnailUrl, String thumbnailBlurHash}) = _$_PostThumbnail;

  @override
  String get thumbnailUrl;
  @override
  String get thumbnailBlurHash;
  @override
  _$PostThumbnailCopyWith<_PostThumbnail> get copyWith;
}
