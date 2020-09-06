// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'topic_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TopicEventTearOff {
  const _$TopicEventTearOff();

// ignore: unused_element
  _GetTopics get(User user) {
    return _GetTopics(
      user,
    );
  }

// ignore: unused_element
  _RefreshTopicSelection refreshSelectedTopics(User user) {
    return _RefreshTopicSelection(
      user,
    );
  }
}

// ignore: unused_element
const $TopicEvent = _$TopicEventTearOff();

mixin _$TopicEvent {
  User get user;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result get(User user),
    @required Result refreshSelectedTopics(User user),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result get(User user),
    Result refreshSelectedTopics(User user),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result get(_GetTopics value),
    @required Result refreshSelectedTopics(_RefreshTopicSelection value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result get(_GetTopics value),
    Result refreshSelectedTopics(_RefreshTopicSelection value),
    @required Result orElse(),
  });

  $TopicEventCopyWith<TopicEvent> get copyWith;
}

abstract class $TopicEventCopyWith<$Res> {
  factory $TopicEventCopyWith(
          TopicEvent value, $Res Function(TopicEvent) then) =
      _$TopicEventCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$TopicEventCopyWithImpl<$Res> implements $TopicEventCopyWith<$Res> {
  _$TopicEventCopyWithImpl(this._value, this._then);

  final TopicEvent _value;
  // ignore: unused_field
  final $Res Function(TopicEvent) _then;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

abstract class _$GetTopicsCopyWith<$Res> implements $TopicEventCopyWith<$Res> {
  factory _$GetTopicsCopyWith(
          _GetTopics value, $Res Function(_GetTopics) then) =
      __$GetTopicsCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

class __$GetTopicsCopyWithImpl<$Res> extends _$TopicEventCopyWithImpl<$Res>
    implements _$GetTopicsCopyWith<$Res> {
  __$GetTopicsCopyWithImpl(_GetTopics _value, $Res Function(_GetTopics) _then)
      : super(_value, (v) => _then(v as _GetTopics));

  @override
  _GetTopics get _value => super._value as _GetTopics;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_GetTopics(
      user == freezed ? _value.user : user as User,
    ));
  }
}

class _$_GetTopics implements _GetTopics {
  const _$_GetTopics(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'TopicEvent.get(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetTopics &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$GetTopicsCopyWith<_GetTopics> get copyWith =>
      __$GetTopicsCopyWithImpl<_GetTopics>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result get(User user),
    @required Result refreshSelectedTopics(User user),
  }) {
    assert(get != null);
    assert(refreshSelectedTopics != null);
    return get(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result get(User user),
    Result refreshSelectedTopics(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (get != null) {
      return get(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result get(_GetTopics value),
    @required Result refreshSelectedTopics(_RefreshTopicSelection value),
  }) {
    assert(get != null);
    assert(refreshSelectedTopics != null);
    return get(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result get(_GetTopics value),
    Result refreshSelectedTopics(_RefreshTopicSelection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _GetTopics implements TopicEvent {
  const factory _GetTopics(User user) = _$_GetTopics;

  @override
  User get user;
  @override
  _$GetTopicsCopyWith<_GetTopics> get copyWith;
}

abstract class _$RefreshTopicSelectionCopyWith<$Res>
    implements $TopicEventCopyWith<$Res> {
  factory _$RefreshTopicSelectionCopyWith(_RefreshTopicSelection value,
          $Res Function(_RefreshTopicSelection) then) =
      __$RefreshTopicSelectionCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

class __$RefreshTopicSelectionCopyWithImpl<$Res>
    extends _$TopicEventCopyWithImpl<$Res>
    implements _$RefreshTopicSelectionCopyWith<$Res> {
  __$RefreshTopicSelectionCopyWithImpl(_RefreshTopicSelection _value,
      $Res Function(_RefreshTopicSelection) _then)
      : super(_value, (v) => _then(v as _RefreshTopicSelection));

  @override
  _RefreshTopicSelection get _value => super._value as _RefreshTopicSelection;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_RefreshTopicSelection(
      user == freezed ? _value.user : user as User,
    ));
  }
}

class _$_RefreshTopicSelection implements _RefreshTopicSelection {
  const _$_RefreshTopicSelection(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'TopicEvent.refreshSelectedTopics(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RefreshTopicSelection &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$RefreshTopicSelectionCopyWith<_RefreshTopicSelection> get copyWith =>
      __$RefreshTopicSelectionCopyWithImpl<_RefreshTopicSelection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result get(User user),
    @required Result refreshSelectedTopics(User user),
  }) {
    assert(get != null);
    assert(refreshSelectedTopics != null);
    return refreshSelectedTopics(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result get(User user),
    Result refreshSelectedTopics(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshSelectedTopics != null) {
      return refreshSelectedTopics(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result get(_GetTopics value),
    @required Result refreshSelectedTopics(_RefreshTopicSelection value),
  }) {
    assert(get != null);
    assert(refreshSelectedTopics != null);
    return refreshSelectedTopics(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result get(_GetTopics value),
    Result refreshSelectedTopics(_RefreshTopicSelection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refreshSelectedTopics != null) {
      return refreshSelectedTopics(this);
    }
    return orElse();
  }
}

abstract class _RefreshTopicSelection implements TopicEvent {
  const factory _RefreshTopicSelection(User user) = _$_RefreshTopicSelection;

  @override
  User get user;
  @override
  _$RefreshTopicSelectionCopyWith<_RefreshTopicSelection> get copyWith;
}

class _$TopicStateTearOff {
  const _$TopicStateTearOff();

// ignore: unused_element
  _TopicState call(
      {List<Topic> allTopics, List<String> selectedTopicIds, Failure failure}) {
    return _TopicState(
      allTopics: allTopics,
      selectedTopicIds: selectedTopicIds,
      failure: failure,
    );
  }
}

// ignore: unused_element
const $TopicState = _$TopicStateTearOff();

mixin _$TopicState {
  List<Topic> get allTopics;
  List<String> get selectedTopicIds;
  Failure get failure;

  $TopicStateCopyWith<TopicState> get copyWith;
}

abstract class $TopicStateCopyWith<$Res> {
  factory $TopicStateCopyWith(
          TopicState value, $Res Function(TopicState) then) =
      _$TopicStateCopyWithImpl<$Res>;
  $Res call(
      {List<Topic> allTopics, List<String> selectedTopicIds, Failure failure});

  $FailureCopyWith<$Res> get failure;
}

class _$TopicStateCopyWithImpl<$Res> implements $TopicStateCopyWith<$Res> {
  _$TopicStateCopyWithImpl(this._value, this._then);

  final TopicState _value;
  // ignore: unused_field
  final $Res Function(TopicState) _then;

  @override
  $Res call({
    Object allTopics = freezed,
    Object selectedTopicIds = freezed,
    Object failure = freezed,
  }) {
    return _then(_value.copyWith(
      allTopics:
          allTopics == freezed ? _value.allTopics : allTopics as List<Topic>,
      selectedTopicIds: selectedTopicIds == freezed
          ? _value.selectedTopicIds
          : selectedTopicIds as List<String>,
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

abstract class _$TopicStateCopyWith<$Res> implements $TopicStateCopyWith<$Res> {
  factory _$TopicStateCopyWith(
          _TopicState value, $Res Function(_TopicState) then) =
      __$TopicStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Topic> allTopics, List<String> selectedTopicIds, Failure failure});

  @override
  $FailureCopyWith<$Res> get failure;
}

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
    Object selectedTopicIds = freezed,
    Object failure = freezed,
  }) {
    return _then(_TopicState(
      allTopics:
          allTopics == freezed ? _value.allTopics : allTopics as List<Topic>,
      selectedTopicIds: selectedTopicIds == freezed
          ? _value.selectedTopicIds
          : selectedTopicIds as List<String>,
      failure: failure == freezed ? _value.failure : failure as Failure,
    ));
  }
}

class _$_TopicState implements _TopicState {
  const _$_TopicState({this.allTopics, this.selectedTopicIds, this.failure});

  @override
  final List<Topic> allTopics;
  @override
  final List<String> selectedTopicIds;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'TopicState(allTopics: $allTopics, selectedTopicIds: $selectedTopicIds, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TopicState &&
            (identical(other.allTopics, allTopics) ||
                const DeepCollectionEquality()
                    .equals(other.allTopics, allTopics)) &&
            (identical(other.selectedTopicIds, selectedTopicIds) ||
                const DeepCollectionEquality()
                    .equals(other.selectedTopicIds, selectedTopicIds)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(allTopics) ^
      const DeepCollectionEquality().hash(selectedTopicIds) ^
      const DeepCollectionEquality().hash(failure);

  @override
  _$TopicStateCopyWith<_TopicState> get copyWith =>
      __$TopicStateCopyWithImpl<_TopicState>(this, _$identity);
}

abstract class _TopicState implements TopicState {
  const factory _TopicState(
      {List<Topic> allTopics,
      List<String> selectedTopicIds,
      Failure failure}) = _$_TopicState;

  @override
  List<Topic> get allTopics;
  @override
  List<String> get selectedTopicIds;
  @override
  Failure get failure;
  @override
  _$TopicStateCopyWith<_TopicState> get copyWith;
}
