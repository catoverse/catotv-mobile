// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostEventTearOff {
  const _$PostEventTearOff();

// ignore: unused_element
  _RecommendedVideos loadRecommendedVideos(String userId) {
    return _RecommendedVideos(
      userId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostEvent = _$PostEventTearOff();

/// @nodoc
mixin _$PostEvent {
  String get userId;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadRecommendedVideos(String userId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadRecommendedVideos(String userId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadRecommendedVideos(_RecommendedVideos value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadRecommendedVideos(_RecommendedVideos value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $PostEventCopyWith<PostEvent> get copyWith;
}

/// @nodoc
abstract class $PostEventCopyWith<$Res> {
  factory $PostEventCopyWith(PostEvent value, $Res Function(PostEvent) then) =
      _$PostEventCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class _$PostEventCopyWithImpl<$Res> implements $PostEventCopyWith<$Res> {
  _$PostEventCopyWithImpl(this._value, this._then);

  final PostEvent _value;
  // ignore: unused_field
  final $Res Function(PostEvent) _then;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
abstract class _$RecommendedVideosCopyWith<$Res>
    implements $PostEventCopyWith<$Res> {
  factory _$RecommendedVideosCopyWith(
          _RecommendedVideos value, $Res Function(_RecommendedVideos) then) =
      __$RecommendedVideosCopyWithImpl<$Res>;
  @override
  $Res call({String userId});
}

/// @nodoc
class __$RecommendedVideosCopyWithImpl<$Res>
    extends _$PostEventCopyWithImpl<$Res>
    implements _$RecommendedVideosCopyWith<$Res> {
  __$RecommendedVideosCopyWithImpl(
      _RecommendedVideos _value, $Res Function(_RecommendedVideos) _then)
      : super(_value, (v) => _then(v as _RecommendedVideos));

  @override
  _RecommendedVideos get _value => super._value as _RecommendedVideos;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_RecommendedVideos(
      userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
class _$_RecommendedVideos
    with DiagnosticableTreeMixin
    implements _RecommendedVideos {
  const _$_RecommendedVideos(this.userId) : assert(userId != null);

  @override
  final String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostEvent.loadRecommendedVideos(userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostEvent.loadRecommendedVideos'))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RecommendedVideos &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$RecommendedVideosCopyWith<_RecommendedVideos> get copyWith =>
      __$RecommendedVideosCopyWithImpl<_RecommendedVideos>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadRecommendedVideos(String userId),
  }) {
    assert(loadRecommendedVideos != null);
    return loadRecommendedVideos(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadRecommendedVideos(String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadRecommendedVideos != null) {
      return loadRecommendedVideos(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadRecommendedVideos(_RecommendedVideos value),
  }) {
    assert(loadRecommendedVideos != null);
    return loadRecommendedVideos(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadRecommendedVideos(_RecommendedVideos value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadRecommendedVideos != null) {
      return loadRecommendedVideos(this);
    }
    return orElse();
  }
}

abstract class _RecommendedVideos implements PostEvent {
  const factory _RecommendedVideos(String userId) = _$_RecommendedVideos;

  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$RecommendedVideosCopyWith<_RecommendedVideos> get copyWith;
}

/// @nodoc
class _$PostStateTearOff {
  const _$PostStateTearOff();

// ignore: unused_element
  _PostState call(
      {List<Post> allPosts,
      List<Post> lastLazilyLoadedPosts,
      Failure failure}) {
    return _PostState(
      allPosts: allPosts,
      lastLazilyLoadedPosts: lastLazilyLoadedPosts,
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostState = _$PostStateTearOff();

/// @nodoc
mixin _$PostState {
  List<Post> get allPosts;
  List<Post> get lastLazilyLoadedPosts;
  Failure get failure;

  @JsonKey(ignore: true)
  $PostStateCopyWith<PostState> get copyWith;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res>;
  $Res call(
      {List<Post> allPosts, List<Post> lastLazilyLoadedPosts, Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res> implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  final PostState _value;
  // ignore: unused_field
  final $Res Function(PostState) _then;

  @override
  $Res call({
    Object allPosts = freezed,
    Object lastLazilyLoadedPosts = freezed,
    Object failure = freezed,
  }) {
    return _then(_value.copyWith(
      allPosts: allPosts == freezed ? _value.allPosts : allPosts as List<Post>,
      lastLazilyLoadedPosts: lastLazilyLoadedPosts == freezed
          ? _value.lastLazilyLoadedPosts
          : lastLazilyLoadedPosts as List<Post>,
      failure: failure == freezed ? _value.failure : failure as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
abstract class _$PostStateCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory _$PostStateCopyWith(
          _PostState value, $Res Function(_PostState) then) =
      __$PostStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Post> allPosts, List<Post> lastLazilyLoadedPosts, Failure failure});

  @override
  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$PostStateCopyWithImpl<$Res> extends _$PostStateCopyWithImpl<$Res>
    implements _$PostStateCopyWith<$Res> {
  __$PostStateCopyWithImpl(_PostState _value, $Res Function(_PostState) _then)
      : super(_value, (v) => _then(v as _PostState));

  @override
  _PostState get _value => super._value as _PostState;

  @override
  $Res call({
    Object allPosts = freezed,
    Object lastLazilyLoadedPosts = freezed,
    Object failure = freezed,
  }) {
    return _then(_PostState(
      allPosts: allPosts == freezed ? _value.allPosts : allPosts as List<Post>,
      lastLazilyLoadedPosts: lastLazilyLoadedPosts == freezed
          ? _value.lastLazilyLoadedPosts
          : lastLazilyLoadedPosts as List<Post>,
      failure: failure == freezed ? _value.failure : failure as Failure,
    ));
  }
}

/// @nodoc
class _$_PostState with DiagnosticableTreeMixin implements _PostState {
  const _$_PostState({this.allPosts, this.lastLazilyLoadedPosts, this.failure});

  @override
  final List<Post> allPosts;
  @override
  final List<Post> lastLazilyLoadedPosts;
  @override
  final Failure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostState(allPosts: $allPosts, lastLazilyLoadedPosts: $lastLazilyLoadedPosts, failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostState'))
      ..add(DiagnosticsProperty('allPosts', allPosts))
      ..add(DiagnosticsProperty('lastLazilyLoadedPosts', lastLazilyLoadedPosts))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostState &&
            (identical(other.allPosts, allPosts) ||
                const DeepCollectionEquality()
                    .equals(other.allPosts, allPosts)) &&
            (identical(other.lastLazilyLoadedPosts, lastLazilyLoadedPosts) ||
                const DeepCollectionEquality().equals(
                    other.lastLazilyLoadedPosts, lastLazilyLoadedPosts)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(allPosts) ^
      const DeepCollectionEquality().hash(lastLazilyLoadedPosts) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$PostStateCopyWith<_PostState> get copyWith =>
      __$PostStateCopyWithImpl<_PostState>(this, _$identity);
}

abstract class _PostState implements PostState {
  const factory _PostState(
      {List<Post> allPosts,
      List<Post> lastLazilyLoadedPosts,
      Failure failure}) = _$_PostState;

  @override
  List<Post> get allPosts;
  @override
  List<Post> get lastLazilyLoadedPosts;
  @override
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$PostStateCopyWith<_PostState> get copyWith;
}
