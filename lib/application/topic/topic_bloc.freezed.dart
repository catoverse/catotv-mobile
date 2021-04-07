// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'topic_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TopicEventTearOff {
  const _$TopicEventTearOff();

// ignore: unused_element
  _GetTopics get() {
    return const _GetTopics();
  }
}

/// @nodoc
// ignore: unused_element
const $TopicEvent = _$TopicEventTearOff();

/// @nodoc
mixin _$TopicEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult get(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_GetTopics value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_GetTopics value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TopicEventCopyWith<$Res> {
  factory $TopicEventCopyWith(
          TopicEvent value, $Res Function(TopicEvent) then) =
      _$TopicEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TopicEventCopyWithImpl<$Res> implements $TopicEventCopyWith<$Res> {
  _$TopicEventCopyWithImpl(this._value, this._then);

  final TopicEvent _value;
  // ignore: unused_field
  final $Res Function(TopicEvent) _then;
}

/// @nodoc
abstract class _$GetTopicsCopyWith<$Res> {
  factory _$GetTopicsCopyWith(
          _GetTopics value, $Res Function(_GetTopics) then) =
      __$GetTopicsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetTopicsCopyWithImpl<$Res> extends _$TopicEventCopyWithImpl<$Res>
    implements _$GetTopicsCopyWith<$Res> {
  __$GetTopicsCopyWithImpl(_GetTopics _value, $Res Function(_GetTopics) _then)
      : super(_value, (v) => _then(v as _GetTopics));

  @override
  _GetTopics get _value => super._value as _GetTopics;
}

/// @nodoc
class _$_GetTopics implements _GetTopics {
  const _$_GetTopics();

  @override
  String toString() {
    return 'TopicEvent.get()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetTopics);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult get(),
  }) {
    assert(get != null);
    return get();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (get != null) {
      return get();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_GetTopics value),
  }) {
    assert(get != null);
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_GetTopics value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _GetTopics implements TopicEvent {
  const factory _GetTopics() = _$_GetTopics;
}

/// @nodoc
class _$TopicStateTearOff {
  const _$TopicStateTearOff();

// ignore: unused_element
  _TopicState call({List<Topic> allTopics, Failure failure}) {
    return _TopicState(
      allTopics: allTopics,
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TopicState = _$TopicStateTearOff();

/// @nodoc
mixin _$TopicState {
  List<Topic> get allTopics;
  Failure get failure;

  @JsonKey(ignore: true)
  $TopicStateCopyWith<TopicState> get copyWith;
}

/// @nodoc
abstract class $TopicStateCopyWith<$Res> {
  factory $TopicStateCopyWith(
          TopicState value, $Res Function(TopicState) then) =
      _$TopicStateCopyWithImpl<$Res>;
  $Res call({List<Topic> allTopics, Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$TopicStateCopyWithImpl<$Res> implements $TopicStateCopyWith<$Res> {
  _$TopicStateCopyWithImpl(this._value, this._then);

  final TopicState _value;
  // ignore: unused_field
  final $Res Function(TopicState) _then;

  @override
  $Res call({
    Object allTopics = freezed,
    Object failure = freezed,
  }) {
    return _then(_value.copyWith(
      allTopics:
          allTopics == freezed ? _value.allTopics : allTopics as List<Topic>,
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
abstract class _$TopicStateCopyWith<$Res> implements $TopicStateCopyWith<$Res> {
  factory _$TopicStateCopyWith(
          _TopicState value, $Res Function(_TopicState) then) =
      __$TopicStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Topic> allTopics, Failure failure});

  @override
  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$TopicStateCopyWithImpl<$Res> extends _$TopicStateCopyWithImpl<$Res>
    implements _$TopicStateCopyWith<$Res> {
  __$TopicStateCopyWithImpl(
      _TopicState _value, $Res Function(_TopicState) _then)
      : super(_value, (v) => _then(v as _TopicState));

  @override
  _TopicState get _value => super._value as _TopicState;

  @override
  $Res call({
    Object allTopics = freezed,
    Object failure = freezed,
  }) {
    return _then(_TopicState(
      allTopics:
          allTopics == freezed ? _value.allTopics : allTopics as List<Topic>,
      failure: failure == freezed ? _value.failure : failure as Failure,
    ));
  }
}

/// @nodoc
class _$_TopicState implements _TopicState {
  const _$_TopicState({this.allTopics, this.failure});

  @override
  final List<Topic> allTopics;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'TopicState(allTopics: $allTopics, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TopicState &&
            (identical(other.allTopics, allTopics) ||
                const DeepCollectionEquality()
                    .equals(other.allTopics, allTopics)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(allTopics) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$TopicStateCopyWith<_TopicState> get copyWith =>
      __$TopicStateCopyWithImpl<_TopicState>(this, _$identity);
}

abstract class _TopicState implements TopicState {
  const factory _TopicState({List<Topic> allTopics, Failure failure}) =
      _$_TopicState;

  @override
  List<Topic> get allTopics;
  @override
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$TopicStateCopyWith<_TopicState> get copyWith;
}
