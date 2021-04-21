// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'videos_by_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VideosByCategoryEventTearOff {
  const _$VideosByCategoryEventTearOff();

// ignore: unused_element
  _VideosByCategoryEvent load(Topic topic, String userId) {
    return _VideosByCategoryEvent(
      topic,
      userId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VideosByCategoryEvent = _$VideosByCategoryEventTearOff();

/// @nodoc
mixin _$VideosByCategoryEvent {
  Topic get topic;
  String get userId;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult load(Topic topic, String userId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult load(Topic topic, String userId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult load(_VideosByCategoryEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult load(_VideosByCategoryEvent value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $VideosByCategoryEventCopyWith<VideosByCategoryEvent> get copyWith;
}

/// @nodoc
abstract class $VideosByCategoryEventCopyWith<$Res> {
  factory $VideosByCategoryEventCopyWith(VideosByCategoryEvent value,
          $Res Function(VideosByCategoryEvent) then) =
      _$VideosByCategoryEventCopyWithImpl<$Res>;
  $Res call({Topic topic, String userId});

  $TopicCopyWith<$Res> get topic;
}

/// @nodoc
class _$VideosByCategoryEventCopyWithImpl<$Res>
    implements $VideosByCategoryEventCopyWith<$Res> {
  _$VideosByCategoryEventCopyWithImpl(this._value, this._then);

  final VideosByCategoryEvent _value;
  // ignore: unused_field
  final $Res Function(VideosByCategoryEvent) _then;

  @override
  $Res call({
    Object topic = freezed,
    Object userId = freezed,
  }) {
    return _then(_value.copyWith(
      topic: topic == freezed ? _value.topic : topic as Topic,
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }

  @override
  $TopicCopyWith<$Res> get topic {
    if (_value.topic == null) {
      return null;
    }
    return $TopicCopyWith<$Res>(_value.topic, (value) {
      return _then(_value.copyWith(topic: value));
    });
  }
}

/// @nodoc
abstract class _$VideosByCategoryEventCopyWith<$Res>
    implements $VideosByCategoryEventCopyWith<$Res> {
  factory _$VideosByCategoryEventCopyWith(_VideosByCategoryEvent value,
          $Res Function(_VideosByCategoryEvent) then) =
      __$VideosByCategoryEventCopyWithImpl<$Res>;
  @override
  $Res call({Topic topic, String userId});

  @override
  $TopicCopyWith<$Res> get topic;
}

/// @nodoc
class __$VideosByCategoryEventCopyWithImpl<$Res>
    extends _$VideosByCategoryEventCopyWithImpl<$Res>
    implements _$VideosByCategoryEventCopyWith<$Res> {
  __$VideosByCategoryEventCopyWithImpl(_VideosByCategoryEvent _value,
      $Res Function(_VideosByCategoryEvent) _then)
      : super(_value, (v) => _then(v as _VideosByCategoryEvent));

  @override
  _VideosByCategoryEvent get _value => super._value as _VideosByCategoryEvent;

  @override
  $Res call({
    Object topic = freezed,
    Object userId = freezed,
  }) {
    return _then(_VideosByCategoryEvent(
      topic == freezed ? _value.topic : topic as Topic,
      userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
class _$_VideosByCategoryEvent implements _VideosByCategoryEvent {
  const _$_VideosByCategoryEvent(this.topic, this.userId)
      : assert(topic != null),
        assert(userId != null);

  @override
  final Topic topic;
  @override
  final String userId;

  @override
  String toString() {
    return 'VideosByCategoryEvent.load(topic: $topic, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideosByCategoryEvent &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(topic) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$VideosByCategoryEventCopyWith<_VideosByCategoryEvent> get copyWith =>
      __$VideosByCategoryEventCopyWithImpl<_VideosByCategoryEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult load(Topic topic, String userId),
  }) {
    assert(load != null);
    return load(topic, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult load(Topic topic, String userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(topic, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult load(_VideosByCategoryEvent value),
  }) {
    assert(load != null);
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult load(_VideosByCategoryEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _VideosByCategoryEvent implements VideosByCategoryEvent {
  const factory _VideosByCategoryEvent(Topic topic, String userId) =
      _$_VideosByCategoryEvent;

  @override
  Topic get topic;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$VideosByCategoryEventCopyWith<_VideosByCategoryEvent> get copyWith;
}

/// @nodoc
class _$VideosByCategoryStateTearOff {
  const _$VideosByCategoryStateTearOff();

// ignore: unused_element
  _VideosByCategoryState call(
      {Topic topic,
      List<Post> allPosts,
      List<Post> lastLazilyLoadedPosts,
      Failure failure}) {
    return _VideosByCategoryState(
      topic: topic,
      allPosts: allPosts,
      lastLazilyLoadedPosts: lastLazilyLoadedPosts,
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VideosByCategoryState = _$VideosByCategoryStateTearOff();

/// @nodoc
mixin _$VideosByCategoryState {
  Topic get topic;
  List<Post> get allPosts;
  List<Post> get lastLazilyLoadedPosts;
  Failure get failure;

  @JsonKey(ignore: true)
  $VideosByCategoryStateCopyWith<VideosByCategoryState> get copyWith;
}

/// @nodoc
abstract class $VideosByCategoryStateCopyWith<$Res> {
  factory $VideosByCategoryStateCopyWith(VideosByCategoryState value,
          $Res Function(VideosByCategoryState) then) =
      _$VideosByCategoryStateCopyWithImpl<$Res>;
  $Res call(
      {Topic topic,
      List<Post> allPosts,
      List<Post> lastLazilyLoadedPosts,
      Failure failure});

  $TopicCopyWith<$Res> get topic;
  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$VideosByCategoryStateCopyWithImpl<$Res>
    implements $VideosByCategoryStateCopyWith<$Res> {
  _$VideosByCategoryStateCopyWithImpl(this._value, this._then);

  final VideosByCategoryState _value;
  // ignore: unused_field
  final $Res Function(VideosByCategoryState) _then;

  @override
  $Res call({
    Object topic = freezed,
    Object allPosts = freezed,
    Object lastLazilyLoadedPosts = freezed,
    Object failure = freezed,
  }) {
    return _then(_value.copyWith(
      topic: topic == freezed ? _value.topic : topic as Topic,
      allPosts: allPosts == freezed ? _value.allPosts : allPosts as List<Post>,
      lastLazilyLoadedPosts: lastLazilyLoadedPosts == freezed
          ? _value.lastLazilyLoadedPosts
          : lastLazilyLoadedPosts as List<Post>,
      failure: failure == freezed ? _value.failure : failure as Failure,
    ));
  }

  @override
  $TopicCopyWith<$Res> get topic {
    if (_value.topic == null) {
      return null;
    }
    return $TopicCopyWith<$Res>(_value.topic, (value) {
      return _then(_value.copyWith(topic: value));
    });
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
abstract class _$VideosByCategoryStateCopyWith<$Res>
    implements $VideosByCategoryStateCopyWith<$Res> {
  factory _$VideosByCategoryStateCopyWith(_VideosByCategoryState value,
          $Res Function(_VideosByCategoryState) then) =
      __$VideosByCategoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Topic topic,
      List<Post> allPosts,
      List<Post> lastLazilyLoadedPosts,
      Failure failure});

  @override
  $TopicCopyWith<$Res> get topic;
  @override
  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$VideosByCategoryStateCopyWithImpl<$Res>
    extends _$VideosByCategoryStateCopyWithImpl<$Res>
    implements _$VideosByCategoryStateCopyWith<$Res> {
  __$VideosByCategoryStateCopyWithImpl(_VideosByCategoryState _value,
      $Res Function(_VideosByCategoryState) _then)
      : super(_value, (v) => _then(v as _VideosByCategoryState));

  @override
  _VideosByCategoryState get _value => super._value as _VideosByCategoryState;

  @override
  $Res call({
    Object topic = freezed,
    Object allPosts = freezed,
    Object lastLazilyLoadedPosts = freezed,
    Object failure = freezed,
  }) {
    return _then(_VideosByCategoryState(
      topic: topic == freezed ? _value.topic : topic as Topic,
      allPosts: allPosts == freezed ? _value.allPosts : allPosts as List<Post>,
      lastLazilyLoadedPosts: lastLazilyLoadedPosts == freezed
          ? _value.lastLazilyLoadedPosts
          : lastLazilyLoadedPosts as List<Post>,
      failure: failure == freezed ? _value.failure : failure as Failure,
    ));
  }
}

/// @nodoc
class _$_VideosByCategoryState implements _VideosByCategoryState {
  const _$_VideosByCategoryState(
      {this.topic, this.allPosts, this.lastLazilyLoadedPosts, this.failure});

  @override
  final Topic topic;
  @override
  final List<Post> allPosts;
  @override
  final List<Post> lastLazilyLoadedPosts;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'VideosByCategoryState(topic: $topic, allPosts: $allPosts, lastLazilyLoadedPosts: $lastLazilyLoadedPosts, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideosByCategoryState &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)) &&
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
      const DeepCollectionEquality().hash(topic) ^
      const DeepCollectionEquality().hash(allPosts) ^
      const DeepCollectionEquality().hash(lastLazilyLoadedPosts) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$VideosByCategoryStateCopyWith<_VideosByCategoryState> get copyWith =>
      __$VideosByCategoryStateCopyWithImpl<_VideosByCategoryState>(
          this, _$identity);
}

abstract class _VideosByCategoryState implements VideosByCategoryState {
  const factory _VideosByCategoryState(
      {Topic topic,
      List<Post> allPosts,
      List<Post> lastLazilyLoadedPosts,
      Failure failure}) = _$_VideosByCategoryState;

  @override
  Topic get topic;
  @override
  List<Post> get allPosts;
  @override
  List<Post> get lastLazilyLoadedPosts;
  @override
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$VideosByCategoryStateCopyWith<_VideosByCategoryState> get copyWith;
}
