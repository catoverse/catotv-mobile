// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'share_video_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
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

// ignore: unused_element
  _ShareReset reset() {
    return const _ShareReset();
  }
}

/// @nodoc
// ignore: unused_element
const $ShareVideoEvent = _$ShareVideoEventTearOff();

/// @nodoc
mixin _$ShareVideoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult share(String postId, String title, String imageUrl),
    @required TResult reset(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult share(String postId, String title, String imageUrl),
    TResult reset(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult share(_ShareVideo value),
    @required TResult reset(_ShareReset value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult share(_ShareVideo value),
    TResult reset(_ShareReset value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ShareVideoEventCopyWith<$Res> {
  factory $ShareVideoEventCopyWith(
          ShareVideoEvent value, $Res Function(ShareVideoEvent) then) =
      _$ShareVideoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShareVideoEventCopyWithImpl<$Res>
    implements $ShareVideoEventCopyWith<$Res> {
  _$ShareVideoEventCopyWithImpl(this._value, this._then);

  final ShareVideoEvent _value;
  // ignore: unused_field
  final $Res Function(ShareVideoEvent) _then;
}

/// @nodoc
abstract class _$ShareVideoCopyWith<$Res> {
  factory _$ShareVideoCopyWith(
          _ShareVideo value, $Res Function(_ShareVideo) then) =
      __$ShareVideoCopyWithImpl<$Res>;
  $Res call({String postId, String title, String imageUrl});
}

/// @nodoc
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

/// @nodoc
class _$_ShareVideo with DiagnosticableTreeMixin implements _ShareVideo {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShareVideoEvent.share(postId: $postId, title: $title, imageUrl: $imageUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShareVideoEvent.share'))
      ..add(DiagnosticsProperty('postId', postId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('imageUrl', imageUrl));
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

  @JsonKey(ignore: true)
  @override
  _$ShareVideoCopyWith<_ShareVideo> get copyWith =>
      __$ShareVideoCopyWithImpl<_ShareVideo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult share(String postId, String title, String imageUrl),
    @required TResult reset(),
  }) {
    assert(share != null);
    assert(reset != null);
    return share(postId, title, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult share(String postId, String title, String imageUrl),
    TResult reset(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (share != null) {
      return share(postId, title, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult share(_ShareVideo value),
    @required TResult reset(_ShareReset value),
  }) {
    assert(share != null);
    assert(reset != null);
    return share(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult share(_ShareVideo value),
    TResult reset(_ShareReset value),
    @required TResult orElse(),
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

  String get postId;
  String get title;
  String get imageUrl;
  @JsonKey(ignore: true)
  _$ShareVideoCopyWith<_ShareVideo> get copyWith;
}

/// @nodoc
abstract class _$ShareResetCopyWith<$Res> {
  factory _$ShareResetCopyWith(
          _ShareReset value, $Res Function(_ShareReset) then) =
      __$ShareResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShareResetCopyWithImpl<$Res>
    extends _$ShareVideoEventCopyWithImpl<$Res>
    implements _$ShareResetCopyWith<$Res> {
  __$ShareResetCopyWithImpl(
      _ShareReset _value, $Res Function(_ShareReset) _then)
      : super(_value, (v) => _then(v as _ShareReset));

  @override
  _ShareReset get _value => super._value as _ShareReset;
}

/// @nodoc
class _$_ShareReset with DiagnosticableTreeMixin implements _ShareReset {
  const _$_ShareReset();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShareVideoEvent.reset()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ShareVideoEvent.reset'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ShareReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult share(String postId, String title, String imageUrl),
    @required TResult reset(),
  }) {
    assert(share != null);
    assert(reset != null);
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult share(String postId, String title, String imageUrl),
    TResult reset(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult share(_ShareVideo value),
    @required TResult reset(_ShareReset value),
  }) {
    assert(share != null);
    assert(reset != null);
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult share(_ShareVideo value),
    TResult reset(_ShareReset value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _ShareReset implements ShareVideoEvent {
  const factory _ShareReset() = _$_ShareReset;
}

/// @nodoc
class _$ShareVideoStateTearOff {
  const _$ShareVideoStateTearOff();

// ignore: unused_element
  _ShareVideoState call({String shareText, bool isLoading}) {
    return _ShareVideoState(
      shareText: shareText,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ShareVideoState = _$ShareVideoStateTearOff();

/// @nodoc
mixin _$ShareVideoState {
  String get shareText;
  bool get isLoading;

  @JsonKey(ignore: true)
  $ShareVideoStateCopyWith<ShareVideoState> get copyWith;
}

/// @nodoc
abstract class $ShareVideoStateCopyWith<$Res> {
  factory $ShareVideoStateCopyWith(
          ShareVideoState value, $Res Function(ShareVideoState) then) =
      _$ShareVideoStateCopyWithImpl<$Res>;
  $Res call({String shareText, bool isLoading});
}

/// @nodoc
class _$ShareVideoStateCopyWithImpl<$Res>
    implements $ShareVideoStateCopyWith<$Res> {
  _$ShareVideoStateCopyWithImpl(this._value, this._then);

  final ShareVideoState _value;
  // ignore: unused_field
  final $Res Function(ShareVideoState) _then;

  @override
  $Res call({
    Object shareText = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      shareText: shareText == freezed ? _value.shareText : shareText as String,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class _$ShareVideoStateCopyWith<$Res>
    implements $ShareVideoStateCopyWith<$Res> {
  factory _$ShareVideoStateCopyWith(
          _ShareVideoState value, $Res Function(_ShareVideoState) then) =
      __$ShareVideoStateCopyWithImpl<$Res>;
  @override
  $Res call({String shareText, bool isLoading});
}

/// @nodoc
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
    Object isLoading = freezed,
  }) {
    return _then(_ShareVideoState(
      shareText: shareText == freezed ? _value.shareText : shareText as String,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_ShareVideoState
    with DiagnosticableTreeMixin
    implements _ShareVideoState {
  const _$_ShareVideoState({this.shareText, this.isLoading});

  @override
  final String shareText;
  @override
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShareVideoState(shareText: $shareText, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShareVideoState'))
      ..add(DiagnosticsProperty('shareText', shareText))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShareVideoState &&
            (identical(other.shareText, shareText) ||
                const DeepCollectionEquality()
                    .equals(other.shareText, shareText)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(shareText) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$ShareVideoStateCopyWith<_ShareVideoState> get copyWith =>
      __$ShareVideoStateCopyWithImpl<_ShareVideoState>(this, _$identity);
}

abstract class _ShareVideoState implements ShareVideoState {
  const factory _ShareVideoState({String shareText, bool isLoading}) =
      _$_ShareVideoState;

  @override
  String get shareText;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$ShareVideoStateCopyWith<_ShareVideoState> get copyWith;
}
