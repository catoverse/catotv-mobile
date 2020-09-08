// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'share_video_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ShareVideoEventTearOff {
  const _$ShareVideoEventTearOff();

// ignore: unused_element
  _ShareVideo share(String postId, String title, String imageUrl) {
    return _ShareVideo(
      postId,
      title,
      imageUrl,
    );
  }
}

// ignore: unused_element
const $ShareVideoEvent = _$ShareVideoEventTearOff();

mixin _$ShareVideoEvent {
  String get postId;
  String get title;
  String get imageUrl;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result share(String postId, String title, String imageUrl),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result share(String postId, String title, String imageUrl),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result share(_ShareVideo value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result share(_ShareVideo value),
    @required Result orElse(),
  });

  $ShareVideoEventCopyWith<ShareVideoEvent> get copyWith;
}

abstract class $ShareVideoEventCopyWith<$Res> {
  factory $ShareVideoEventCopyWith(
          ShareVideoEvent value, $Res Function(ShareVideoEvent) then) =
      _$ShareVideoEventCopyWithImpl<$Res>;
  $Res call({String postId, String title, String imageUrl});
}

class _$ShareVideoEventCopyWithImpl<$Res>
    implements $ShareVideoEventCopyWith<$Res> {
  _$ShareVideoEventCopyWithImpl(this._value, this._then);

  final ShareVideoEvent _value;
  // ignore: unused_field
  final $Res Function(ShareVideoEvent) _then;

  @override
  $Res call({
    Object postId = freezed,
    Object title = freezed,
    Object imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      postId: postId == freezed ? _value.postId : postId as String,
      title: title == freezed ? _value.title : title as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

abstract class _$ShareVideoCopyWith<$Res>
    implements $ShareVideoEventCopyWith<$Res> {
  factory _$ShareVideoCopyWith(
          _ShareVideo value, $Res Function(_ShareVideo) then) =
      __$ShareVideoCopyWithImpl<$Res>;
  @override
  $Res call({String postId, String title, String imageUrl});
}

class __$ShareVideoCopyWithImpl<$Res>
    extends _$ShareVideoEventCopyWithImpl<$Res>
    implements _$ShareVideoCopyWith<$Res> {
  __$ShareVideoCopyWithImpl(
      _ShareVideo _value, $Res Function(_ShareVideo) _then)
      : super(_value, (v) => _then(v as _ShareVideo));

  @override
  _ShareVideo get _value => super._value as _ShareVideo;

  @override
  $Res call({
    Object postId = freezed,
    Object title = freezed,
    Object imageUrl = freezed,
  }) {
    return _then(_ShareVideo(
      postId == freezed ? _value.postId : postId as String,
      title == freezed ? _value.title : title as String,
      imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

class _$_ShareVideo implements _ShareVideo {
  const _$_ShareVideo(this.postId, this.title, this.imageUrl)
      : assert(postId != null),
        assert(title != null),
        assert(imageUrl != null);

  @override
  final String postId;
  @override
  final String title;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'ShareVideoEvent.share(postId: $postId, title: $title, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShareVideo &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(imageUrl);

  @override
  _$ShareVideoCopyWith<_ShareVideo> get copyWith =>
      __$ShareVideoCopyWithImpl<_ShareVideo>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result share(String postId, String title, String imageUrl),
  }) {
    assert(share != null);
    return share(postId, title, imageUrl);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result share(String postId, String title, String imageUrl),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (share != null) {
      return share(postId, title, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result share(_ShareVideo value),
  }) {
    assert(share != null);
    return share(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result share(_ShareVideo value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (share != null) {
      return share(this);
    }
    return orElse();
  }
}

abstract class _ShareVideo implements ShareVideoEvent {
  const factory _ShareVideo(String postId, String title, String imageUrl) =
      _$_ShareVideo;

  @override
  String get postId;
  @override
  String get title;
  @override
  String get imageUrl;
  @override
  _$ShareVideoCopyWith<_ShareVideo> get copyWith;
}

class _$ShareVideoStateTearOff {
  const _$ShareVideoStateTearOff();

// ignore: unused_element
  _ShareVideoState call({String shareText}) {
    return _ShareVideoState(
      shareText: shareText,
    );
  }
}

// ignore: unused_element
const $ShareVideoState = _$ShareVideoStateTearOff();

mixin _$ShareVideoState {
  String get shareText;

  $ShareVideoStateCopyWith<ShareVideoState> get copyWith;
}

abstract class $ShareVideoStateCopyWith<$Res> {
  factory $ShareVideoStateCopyWith(
          ShareVideoState value, $Res Function(ShareVideoState) then) =
      _$ShareVideoStateCopyWithImpl<$Res>;
  $Res call({String shareText});
}

class _$ShareVideoStateCopyWithImpl<$Res>
    implements $ShareVideoStateCopyWith<$Res> {
  _$ShareVideoStateCopyWithImpl(this._value, this._then);

  final ShareVideoState _value;
  // ignore: unused_field
  final $Res Function(ShareVideoState) _then;

  @override
  $Res call({
    Object shareText = freezed,
  }) {
    return _then(_value.copyWith(
      shareText: shareText == freezed ? _value.shareText : shareText as String,
    ));
  }
}

abstract class _$ShareVideoStateCopyWith<$Res>
    implements $ShareVideoStateCopyWith<$Res> {
  factory _$ShareVideoStateCopyWith(
          _ShareVideoState value, $Res Function(_ShareVideoState) then) =
      __$ShareVideoStateCopyWithImpl<$Res>;
  @override
  $Res call({String shareText});
}

class __$ShareVideoStateCopyWithImpl<$Res>
    extends _$ShareVideoStateCopyWithImpl<$Res>
    implements _$ShareVideoStateCopyWith<$Res> {
  __$ShareVideoStateCopyWithImpl(
      _ShareVideoState _value, $Res Function(_ShareVideoState) _then)
      : super(_value, (v) => _then(v as _ShareVideoState));

  @override
  _ShareVideoState get _value => super._value as _ShareVideoState;

  @override
  $Res call({
    Object shareText = freezed,
  }) {
    return _then(_ShareVideoState(
      shareText: shareText == freezed ? _value.shareText : shareText as String,
    ));
  }
}

class _$_ShareVideoState implements _ShareVideoState {
  const _$_ShareVideoState({this.shareText});

  @override
  final String shareText;

  @override
  String toString() {
    return 'ShareVideoState(shareText: $shareText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShareVideoState &&
            (identical(other.shareText, shareText) ||
                const DeepCollectionEquality()
                    .equals(other.shareText, shareText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(shareText);

  @override
  _$ShareVideoStateCopyWith<_ShareVideoState> get copyWith =>
      __$ShareVideoStateCopyWithImpl<_ShareVideoState>(this, _$identity);
}

abstract class _ShareVideoState implements ShareVideoState {
  const factory _ShareVideoState({String shareText}) = _$_ShareVideoState;

  @override
  String get shareText;
  @override
  _$ShareVideoStateCopyWith<_ShareVideoState> get copyWith;
}
