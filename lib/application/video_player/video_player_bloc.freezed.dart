// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'video_player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VideoPlayerEventTearOff {
  const _$VideoPlayerEventTearOff();

// ignore: unused_element
  _SetPlayingPost setCurrentPlayablePlayingId(String postId) {
    return _SetPlayingPost(
      postId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VideoPlayerEvent = _$VideoPlayerEventTearOff();

/// @nodoc
mixin _$VideoPlayerEvent {
  String get postId;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setCurrentPlayablePlayingId(String postId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setCurrentPlayablePlayingId(String postId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setCurrentPlayablePlayingId(_SetPlayingPost value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setCurrentPlayablePlayingId(_SetPlayingPost value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $VideoPlayerEventCopyWith<VideoPlayerEvent> get copyWith;
}

/// @nodoc
abstract class $VideoPlayerEventCopyWith<$Res> {
  factory $VideoPlayerEventCopyWith(
          VideoPlayerEvent value, $Res Function(VideoPlayerEvent) then) =
      _$VideoPlayerEventCopyWithImpl<$Res>;
  $Res call({String postId});
}

/// @nodoc
class _$VideoPlayerEventCopyWithImpl<$Res>
    implements $VideoPlayerEventCopyWith<$Res> {
  _$VideoPlayerEventCopyWithImpl(this._value, this._then);

  final VideoPlayerEvent _value;
  // ignore: unused_field
  final $Res Function(VideoPlayerEvent) _then;

  @override
  $Res call({
    Object postId = freezed,
  }) {
    return _then(_value.copyWith(
      postId: postId == freezed ? _value.postId : postId as String,
    ));
  }
}

/// @nodoc
abstract class _$SetPlayingPostCopyWith<$Res>
    implements $VideoPlayerEventCopyWith<$Res> {
  factory _$SetPlayingPostCopyWith(
          _SetPlayingPost value, $Res Function(_SetPlayingPost) then) =
      __$SetPlayingPostCopyWithImpl<$Res>;
  @override
  $Res call({String postId});
}

/// @nodoc
class __$SetPlayingPostCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res>
    implements _$SetPlayingPostCopyWith<$Res> {
  __$SetPlayingPostCopyWithImpl(
      _SetPlayingPost _value, $Res Function(_SetPlayingPost) _then)
      : super(_value, (v) => _then(v as _SetPlayingPost));

  @override
  _SetPlayingPost get _value => super._value as _SetPlayingPost;

  @override
  $Res call({
    Object postId = freezed,
  }) {
    return _then(_SetPlayingPost(
      postId == freezed ? _value.postId : postId as String,
    ));
  }
}

/// @nodoc
class _$_SetPlayingPost
    with DiagnosticableTreeMixin
    implements _SetPlayingPost {
  const _$_SetPlayingPost(this.postId) : assert(postId != null);

  @override
  final String postId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VideoPlayerEvent.setCurrentPlayablePlayingId(postId: $postId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'VideoPlayerEvent.setCurrentPlayablePlayingId'))
      ..add(DiagnosticsProperty('postId', postId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetPlayingPost &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postId);

  @JsonKey(ignore: true)
  @override
  _$SetPlayingPostCopyWith<_SetPlayingPost> get copyWith =>
      __$SetPlayingPostCopyWithImpl<_SetPlayingPost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setCurrentPlayablePlayingId(String postId),
  }) {
    assert(setCurrentPlayablePlayingId != null);
    return setCurrentPlayablePlayingId(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setCurrentPlayablePlayingId(String postId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setCurrentPlayablePlayingId != null) {
      return setCurrentPlayablePlayingId(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setCurrentPlayablePlayingId(_SetPlayingPost value),
  }) {
    assert(setCurrentPlayablePlayingId != null);
    return setCurrentPlayablePlayingId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setCurrentPlayablePlayingId(_SetPlayingPost value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setCurrentPlayablePlayingId != null) {
      return setCurrentPlayablePlayingId(this);
    }
    return orElse();
  }
}

abstract class _SetPlayingPost implements VideoPlayerEvent {
  const factory _SetPlayingPost(String postId) = _$_SetPlayingPost;

  @override
  String get postId;
  @override
  @JsonKey(ignore: true)
  _$SetPlayingPostCopyWith<_SetPlayingPost> get copyWith;
}

/// @nodoc
class _$VideoPlayerStateTearOff {
  const _$VideoPlayerStateTearOff();

// ignore: unused_element
  _VideoPlayerState call({String currentPlayingPostId}) {
    return _VideoPlayerState(
      currentPlayingPostId: currentPlayingPostId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VideoPlayerState = _$VideoPlayerStateTearOff();

/// @nodoc
mixin _$VideoPlayerState {
  String get currentPlayingPostId;

  @JsonKey(ignore: true)
  $VideoPlayerStateCopyWith<VideoPlayerState> get copyWith;
}

/// @nodoc
abstract class $VideoPlayerStateCopyWith<$Res> {
  factory $VideoPlayerStateCopyWith(
          VideoPlayerState value, $Res Function(VideoPlayerState) then) =
      _$VideoPlayerStateCopyWithImpl<$Res>;
  $Res call({String currentPlayingPostId});
}

/// @nodoc
class _$VideoPlayerStateCopyWithImpl<$Res>
    implements $VideoPlayerStateCopyWith<$Res> {
  _$VideoPlayerStateCopyWithImpl(this._value, this._then);

  final VideoPlayerState _value;
  // ignore: unused_field
  final $Res Function(VideoPlayerState) _then;

  @override
  $Res call({
    Object currentPlayingPostId = freezed,
  }) {
    return _then(_value.copyWith(
      currentPlayingPostId: currentPlayingPostId == freezed
          ? _value.currentPlayingPostId
          : currentPlayingPostId as String,
    ));
  }
}

/// @nodoc
abstract class _$VideoPlayerStateCopyWith<$Res>
    implements $VideoPlayerStateCopyWith<$Res> {
  factory _$VideoPlayerStateCopyWith(
          _VideoPlayerState value, $Res Function(_VideoPlayerState) then) =
      __$VideoPlayerStateCopyWithImpl<$Res>;
  @override
  $Res call({String currentPlayingPostId});
}

/// @nodoc
class __$VideoPlayerStateCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res>
    implements _$VideoPlayerStateCopyWith<$Res> {
  __$VideoPlayerStateCopyWithImpl(
      _VideoPlayerState _value, $Res Function(_VideoPlayerState) _then)
      : super(_value, (v) => _then(v as _VideoPlayerState));

  @override
  _VideoPlayerState get _value => super._value as _VideoPlayerState;

  @override
  $Res call({
    Object currentPlayingPostId = freezed,
  }) {
    return _then(_VideoPlayerState(
      currentPlayingPostId: currentPlayingPostId == freezed
          ? _value.currentPlayingPostId
          : currentPlayingPostId as String,
    ));
  }
}

/// @nodoc
class _$_VideoPlayerState
    with DiagnosticableTreeMixin
    implements _VideoPlayerState {
  const _$_VideoPlayerState({this.currentPlayingPostId});

  @override
  final String currentPlayingPostId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VideoPlayerState(currentPlayingPostId: $currentPlayingPostId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VideoPlayerState'))
      ..add(DiagnosticsProperty('currentPlayingPostId', currentPlayingPostId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoPlayerState &&
            (identical(other.currentPlayingPostId, currentPlayingPostId) ||
                const DeepCollectionEquality()
                    .equals(other.currentPlayingPostId, currentPlayingPostId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPlayingPostId);

  @JsonKey(ignore: true)
  @override
  _$VideoPlayerStateCopyWith<_VideoPlayerState> get copyWith =>
      __$VideoPlayerStateCopyWithImpl<_VideoPlayerState>(this, _$identity);
}

abstract class _VideoPlayerState implements VideoPlayerState {
  const factory _VideoPlayerState({String currentPlayingPostId}) =
      _$_VideoPlayerState;

  @override
  String get currentPlayingPostId;
  @override
  @JsonKey(ignore: true)
  _$VideoPlayerStateCopyWith<_VideoPlayerState> get copyWith;
}
