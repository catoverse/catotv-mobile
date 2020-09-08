// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'topicselection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TopicSelectionEventTearOff {
  const _$TopicSelectionEventTearOff();

// ignore: unused_element
  _UpdateSelectedTopic updateSelectedTopics(KtList<String> topicIds) {
    return _UpdateSelectedTopic(
      topicIds,
    );
  }

// ignore: unused_element
  _SelectTopic selectTopic(String topicId) {
    return _SelectTopic(
      topicId,
    );
  }

// ignore: unused_element
  _UnSelectTopic unSelectTopic(String topicId) {
    return _UnSelectTopic(
      topicId,
    );
  }

// ignore: unused_element
  _SaveTopics saveTopics(User user) {
    return _SaveTopics(
      user,
    );
  }
}

// ignore: unused_element
const $TopicSelectionEvent = _$TopicSelectionEventTearOff();

mixin _$TopicSelectionEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateSelectedTopics(KtList<String> topicIds),
    @required Result selectTopic(String topicId),
    @required Result unSelectTopic(String topicId),
    @required Result saveTopics(User user),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateSelectedTopics(KtList<String> topicIds),
    Result selectTopic(String topicId),
    Result unSelectTopic(String topicId),
    Result saveTopics(User user),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateSelectedTopics(_UpdateSelectedTopic value),
    @required Result selectTopic(_SelectTopic value),
    @required Result unSelectTopic(_UnSelectTopic value),
    @required Result saveTopics(_SaveTopics value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateSelectedTopics(_UpdateSelectedTopic value),
    Result selectTopic(_SelectTopic value),
    Result unSelectTopic(_UnSelectTopic value),
    Result saveTopics(_SaveTopics value),
    @required Result orElse(),
  });
}

abstract class $TopicSelectionEventCopyWith<$Res> {
  factory $TopicSelectionEventCopyWith(
          TopicSelectionEvent value, $Res Function(TopicSelectionEvent) then) =
      _$TopicSelectionEventCopyWithImpl<$Res>;
}

class _$TopicSelectionEventCopyWithImpl<$Res>
    implements $TopicSelectionEventCopyWith<$Res> {
  _$TopicSelectionEventCopyWithImpl(this._value, this._then);

  final TopicSelectionEvent _value;
  // ignore: unused_field
  final $Res Function(TopicSelectionEvent) _then;
}

abstract class _$UpdateSelectedTopicCopyWith<$Res> {
  factory _$UpdateSelectedTopicCopyWith(_UpdateSelectedTopic value,
          $Res Function(_UpdateSelectedTopic) then) =
      __$UpdateSelectedTopicCopyWithImpl<$Res>;
  $Res call({KtList<String> topicIds});
}

class __$UpdateSelectedTopicCopyWithImpl<$Res>
    extends _$TopicSelectionEventCopyWithImpl<$Res>
    implements _$UpdateSelectedTopicCopyWith<$Res> {
  __$UpdateSelectedTopicCopyWithImpl(
      _UpdateSelectedTopic _value, $Res Function(_UpdateSelectedTopic) _then)
      : super(_value, (v) => _then(v as _UpdateSelectedTopic));

  @override
  _UpdateSelectedTopic get _value => super._value as _UpdateSelectedTopic;

  @override
  $Res call({
    Object topicIds = freezed,
  }) {
    return _then(_UpdateSelectedTopic(
      topicIds == freezed ? _value.topicIds : topicIds as KtList<String>,
    ));
  }
}

class _$_UpdateSelectedTopic implements _UpdateSelectedTopic {
  const _$_UpdateSelectedTopic(this.topicIds) : assert(topicIds != null);

  @override
  final KtList<String> topicIds;

  @override
  String toString() {
    return 'TopicSelectionEvent.updateSelectedTopics(topicIds: $topicIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateSelectedTopic &&
            (identical(other.topicIds, topicIds) ||
                const DeepCollectionEquality()
                    .equals(other.topicIds, topicIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(topicIds);

  @override
  _$UpdateSelectedTopicCopyWith<_UpdateSelectedTopic> get copyWith =>
      __$UpdateSelectedTopicCopyWithImpl<_UpdateSelectedTopic>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateSelectedTopics(KtList<String> topicIds),
    @required Result selectTopic(String topicId),
    @required Result unSelectTopic(String topicId),
    @required Result saveTopics(User user),
  }) {
    assert(updateSelectedTopics != null);
    assert(selectTopic != null);
    assert(unSelectTopic != null);
    assert(saveTopics != null);
    return updateSelectedTopics(topicIds);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateSelectedTopics(KtList<String> topicIds),
    Result selectTopic(String topicId),
    Result unSelectTopic(String topicId),
    Result saveTopics(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateSelectedTopics != null) {
      return updateSelectedTopics(topicIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateSelectedTopics(_UpdateSelectedTopic value),
    @required Result selectTopic(_SelectTopic value),
    @required Result unSelectTopic(_UnSelectTopic value),
    @required Result saveTopics(_SaveTopics value),
  }) {
    assert(updateSelectedTopics != null);
    assert(selectTopic != null);
    assert(unSelectTopic != null);
    assert(saveTopics != null);
    return updateSelectedTopics(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateSelectedTopics(_UpdateSelectedTopic value),
    Result selectTopic(_SelectTopic value),
    Result unSelectTopic(_UnSelectTopic value),
    Result saveTopics(_SaveTopics value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateSelectedTopics != null) {
      return updateSelectedTopics(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedTopic implements TopicSelectionEvent {
  const factory _UpdateSelectedTopic(KtList<String> topicIds) =
      _$_UpdateSelectedTopic;

  KtList<String> get topicIds;
  _$UpdateSelectedTopicCopyWith<_UpdateSelectedTopic> get copyWith;
}

abstract class _$SelectTopicCopyWith<$Res> {
  factory _$SelectTopicCopyWith(
          _SelectTopic value, $Res Function(_SelectTopic) then) =
      __$SelectTopicCopyWithImpl<$Res>;
  $Res call({String topicId});
}

class __$SelectTopicCopyWithImpl<$Res>
    extends _$TopicSelectionEventCopyWithImpl<$Res>
    implements _$SelectTopicCopyWith<$Res> {
  __$SelectTopicCopyWithImpl(
      _SelectTopic _value, $Res Function(_SelectTopic) _then)
      : super(_value, (v) => _then(v as _SelectTopic));

  @override
  _SelectTopic get _value => super._value as _SelectTopic;

  @override
  $Res call({
    Object topicId = freezed,
  }) {
    return _then(_SelectTopic(
      topicId == freezed ? _value.topicId : topicId as String,
    ));
  }
}

class _$_SelectTopic implements _SelectTopic {
  const _$_SelectTopic(this.topicId) : assert(topicId != null);

  @override
  final String topicId;

  @override
  String toString() {
    return 'TopicSelectionEvent.selectTopic(topicId: $topicId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectTopic &&
            (identical(other.topicId, topicId) ||
                const DeepCollectionEquality().equals(other.topicId, topicId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(topicId);

  @override
  _$SelectTopicCopyWith<_SelectTopic> get copyWith =>
      __$SelectTopicCopyWithImpl<_SelectTopic>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateSelectedTopics(KtList<String> topicIds),
    @required Result selectTopic(String topicId),
    @required Result unSelectTopic(String topicId),
    @required Result saveTopics(User user),
  }) {
    assert(updateSelectedTopics != null);
    assert(selectTopic != null);
    assert(unSelectTopic != null);
    assert(saveTopics != null);
    return selectTopic(topicId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateSelectedTopics(KtList<String> topicIds),
    Result selectTopic(String topicId),
    Result unSelectTopic(String topicId),
    Result saveTopics(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectTopic != null) {
      return selectTopic(topicId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateSelectedTopics(_UpdateSelectedTopic value),
    @required Result selectTopic(_SelectTopic value),
    @required Result unSelectTopic(_UnSelectTopic value),
    @required Result saveTopics(_SaveTopics value),
  }) {
    assert(updateSelectedTopics != null);
    assert(selectTopic != null);
    assert(unSelectTopic != null);
    assert(saveTopics != null);
    return selectTopic(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateSelectedTopics(_UpdateSelectedTopic value),
    Result selectTopic(_SelectTopic value),
    Result unSelectTopic(_UnSelectTopic value),
    Result saveTopics(_SaveTopics value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectTopic != null) {
      return selectTopic(this);
    }
    return orElse();
  }
}

abstract class _SelectTopic implements TopicSelectionEvent {
  const factory _SelectTopic(String topicId) = _$_SelectTopic;

  String get topicId;
  _$SelectTopicCopyWith<_SelectTopic> get copyWith;
}

abstract class _$UnSelectTopicCopyWith<$Res> {
  factory _$UnSelectTopicCopyWith(
          _UnSelectTopic value, $Res Function(_UnSelectTopic) then) =
      __$UnSelectTopicCopyWithImpl<$Res>;
  $Res call({String topicId});
}

class __$UnSelectTopicCopyWithImpl<$Res>
    extends _$TopicSelectionEventCopyWithImpl<$Res>
    implements _$UnSelectTopicCopyWith<$Res> {
  __$UnSelectTopicCopyWithImpl(
      _UnSelectTopic _value, $Res Function(_UnSelectTopic) _then)
      : super(_value, (v) => _then(v as _UnSelectTopic));

  @override
  _UnSelectTopic get _value => super._value as _UnSelectTopic;

  @override
  $Res call({
    Object topicId = freezed,
  }) {
    return _then(_UnSelectTopic(
      topicId == freezed ? _value.topicId : topicId as String,
    ));
  }
}

class _$_UnSelectTopic implements _UnSelectTopic {
  const _$_UnSelectTopic(this.topicId) : assert(topicId != null);

  @override
  final String topicId;

  @override
  String toString() {
    return 'TopicSelectionEvent.unSelectTopic(topicId: $topicId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnSelectTopic &&
            (identical(other.topicId, topicId) ||
                const DeepCollectionEquality().equals(other.topicId, topicId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(topicId);

  @override
  _$UnSelectTopicCopyWith<_UnSelectTopic> get copyWith =>
      __$UnSelectTopicCopyWithImpl<_UnSelectTopic>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateSelectedTopics(KtList<String> topicIds),
    @required Result selectTopic(String topicId),
    @required Result unSelectTopic(String topicId),
    @required Result saveTopics(User user),
  }) {
    assert(updateSelectedTopics != null);
    assert(selectTopic != null);
    assert(unSelectTopic != null);
    assert(saveTopics != null);
    return unSelectTopic(topicId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateSelectedTopics(KtList<String> topicIds),
    Result selectTopic(String topicId),
    Result unSelectTopic(String topicId),
    Result saveTopics(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unSelectTopic != null) {
      return unSelectTopic(topicId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateSelectedTopics(_UpdateSelectedTopic value),
    @required Result selectTopic(_SelectTopic value),
    @required Result unSelectTopic(_UnSelectTopic value),
    @required Result saveTopics(_SaveTopics value),
  }) {
    assert(updateSelectedTopics != null);
    assert(selectTopic != null);
    assert(unSelectTopic != null);
    assert(saveTopics != null);
    return unSelectTopic(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateSelectedTopics(_UpdateSelectedTopic value),
    Result selectTopic(_SelectTopic value),
    Result unSelectTopic(_UnSelectTopic value),
    Result saveTopics(_SaveTopics value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unSelectTopic != null) {
      return unSelectTopic(this);
    }
    return orElse();
  }
}

abstract class _UnSelectTopic implements TopicSelectionEvent {
  const factory _UnSelectTopic(String topicId) = _$_UnSelectTopic;

  String get topicId;
  _$UnSelectTopicCopyWith<_UnSelectTopic> get copyWith;
}

abstract class _$SaveTopicsCopyWith<$Res> {
  factory _$SaveTopicsCopyWith(
          _SaveTopics value, $Res Function(_SaveTopics) then) =
      __$SaveTopicsCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class __$SaveTopicsCopyWithImpl<$Res>
    extends _$TopicSelectionEventCopyWithImpl<$Res>
    implements _$SaveTopicsCopyWith<$Res> {
  __$SaveTopicsCopyWithImpl(
      _SaveTopics _value, $Res Function(_SaveTopics) _then)
      : super(_value, (v) => _then(v as _SaveTopics));

  @override
  _SaveTopics get _value => super._value as _SaveTopics;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_SaveTopics(
      user == freezed ? _value.user : user as User,
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

class _$_SaveTopics implements _SaveTopics {
  const _$_SaveTopics(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'TopicSelectionEvent.saveTopics(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SaveTopics &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$SaveTopicsCopyWith<_SaveTopics> get copyWith =>
      __$SaveTopicsCopyWithImpl<_SaveTopics>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateSelectedTopics(KtList<String> topicIds),
    @required Result selectTopic(String topicId),
    @required Result unSelectTopic(String topicId),
    @required Result saveTopics(User user),
  }) {
    assert(updateSelectedTopics != null);
    assert(selectTopic != null);
    assert(unSelectTopic != null);
    assert(saveTopics != null);
    return saveTopics(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateSelectedTopics(KtList<String> topicIds),
    Result selectTopic(String topicId),
    Result unSelectTopic(String topicId),
    Result saveTopics(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveTopics != null) {
      return saveTopics(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateSelectedTopics(_UpdateSelectedTopic value),
    @required Result selectTopic(_SelectTopic value),
    @required Result unSelectTopic(_UnSelectTopic value),
    @required Result saveTopics(_SaveTopics value),
  }) {
    assert(updateSelectedTopics != null);
    assert(selectTopic != null);
    assert(unSelectTopic != null);
    assert(saveTopics != null);
    return saveTopics(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateSelectedTopics(_UpdateSelectedTopic value),
    Result selectTopic(_SelectTopic value),
    Result unSelectTopic(_UnSelectTopic value),
    Result saveTopics(_SaveTopics value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveTopics != null) {
      return saveTopics(this);
    }
    return orElse();
  }
}

abstract class _SaveTopics implements TopicSelectionEvent {
  const factory _SaveTopics(User user) = _$_SaveTopics;

  User get user;
  _$SaveTopicsCopyWith<_SaveTopics> get copyWith;
}

class _$TopicSelectionStateTearOff {
  const _$TopicSelectionStateTearOff();

// ignore: unused_element
  _TopicSelectionState call(
      {KtList<String> selectedTopicIds,
      bool topicSavedSuccess,
      Failure failure}) {
    return _TopicSelectionState(
      selectedTopicIds: selectedTopicIds,
      topicSavedSuccess: topicSavedSuccess,
      failure: failure,
    );
  }
}

// ignore: unused_element
const $TopicSelectionState = _$TopicSelectionStateTearOff();

mixin _$TopicSelectionState {
  KtList<String> get selectedTopicIds;
  bool get topicSavedSuccess;
  Failure get failure;

  $TopicSelectionStateCopyWith<TopicSelectionState> get copyWith;
}

abstract class $TopicSelectionStateCopyWith<$Res> {
  factory $TopicSelectionStateCopyWith(
          TopicSelectionState value, $Res Function(TopicSelectionState) then) =
      _$TopicSelectionStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<String> selectedTopicIds,
      bool topicSavedSuccess,
      Failure failure});

  $FailureCopyWith<$Res> get failure;
}

class _$TopicSelectionStateCopyWithImpl<$Res>
    implements $TopicSelectionStateCopyWith<$Res> {
  _$TopicSelectionStateCopyWithImpl(this._value, this._then);

  final TopicSelectionState _value;
  // ignore: unused_field
  final $Res Function(TopicSelectionState) _then;

  @override
  $Res call({
    Object selectedTopicIds = freezed,
    Object topicSavedSuccess = freezed,
    Object failure = freezed,
  }) {
    return _then(_value.copyWith(
      selectedTopicIds: selectedTopicIds == freezed
          ? _value.selectedTopicIds
          : selectedTopicIds as KtList<String>,
      topicSavedSuccess: topicSavedSuccess == freezed
          ? _value.topicSavedSuccess
          : topicSavedSuccess as bool,
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

abstract class _$TopicSelectionStateCopyWith<$Res>
    implements $TopicSelectionStateCopyWith<$Res> {
  factory _$TopicSelectionStateCopyWith(_TopicSelectionState value,
          $Res Function(_TopicSelectionState) then) =
      __$TopicSelectionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<String> selectedTopicIds,
      bool topicSavedSuccess,
      Failure failure});

  @override
  $FailureCopyWith<$Res> get failure;
}

class __$TopicSelectionStateCopyWithImpl<$Res>
    extends _$TopicSelectionStateCopyWithImpl<$Res>
    implements _$TopicSelectionStateCopyWith<$Res> {
  __$TopicSelectionStateCopyWithImpl(
      _TopicSelectionState _value, $Res Function(_TopicSelectionState) _then)
      : super(_value, (v) => _then(v as _TopicSelectionState));

  @override
  _TopicSelectionState get _value => super._value as _TopicSelectionState;

  @override
  $Res call({
    Object selectedTopicIds = freezed,
    Object topicSavedSuccess = freezed,
    Object failure = freezed,
  }) {
    return _then(_TopicSelectionState(
      selectedTopicIds: selectedTopicIds == freezed
          ? _value.selectedTopicIds
          : selectedTopicIds as KtList<String>,
      topicSavedSuccess: topicSavedSuccess == freezed
          ? _value.topicSavedSuccess
          : topicSavedSuccess as bool,
      failure: failure == freezed ? _value.failure : failure as Failure,
    ));
  }
}

class _$_TopicSelectionState implements _TopicSelectionState {
  const _$_TopicSelectionState(
      {this.selectedTopicIds, this.topicSavedSuccess, this.failure});

  @override
  final KtList<String> selectedTopicIds;
  @override
  final bool topicSavedSuccess;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'TopicSelectionState(selectedTopicIds: $selectedTopicIds, topicSavedSuccess: $topicSavedSuccess, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TopicSelectionState &&
            (identical(other.selectedTopicIds, selectedTopicIds) ||
                const DeepCollectionEquality()
                    .equals(other.selectedTopicIds, selectedTopicIds)) &&
            (identical(other.topicSavedSuccess, topicSavedSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.topicSavedSuccess, topicSavedSuccess)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedTopicIds) ^
      const DeepCollectionEquality().hash(topicSavedSuccess) ^
      const DeepCollectionEquality().hash(failure);

  @override
  _$TopicSelectionStateCopyWith<_TopicSelectionState> get copyWith =>
      __$TopicSelectionStateCopyWithImpl<_TopicSelectionState>(
          this, _$identity);
}

abstract class _TopicSelectionState implements TopicSelectionState {
  const factory _TopicSelectionState(
      {KtList<String> selectedTopicIds,
      bool topicSavedSuccess,
      Failure failure}) = _$_TopicSelectionState;

  @override
  KtList<String> get selectedTopicIds;
  @override
  bool get topicSavedSuccess;
  @override
  Failure get failure;
  @override
  _$TopicSelectionStateCopyWith<_TopicSelectionState> get copyWith;
}
