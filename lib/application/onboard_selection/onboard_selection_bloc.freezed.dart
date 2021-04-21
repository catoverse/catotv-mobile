// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'onboard_selection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$OnboardSelectionEventTearOff {
  const _$OnboardSelectionEventTearOff();

// ignore: unused_element
  _UpdateSelectedTopic updateSelectedTopics(KtList<Topic> topic) {
    return _UpdateSelectedTopic(
      topic,
    );
  }

// ignore: unused_element
  _SelectTopic selectTopic(Topic topic) {
    return _SelectTopic(
      topic,
    );
  }

// ignore: unused_element
  _UnSelectTopic unSelectTopic(Topic topic) {
    return _UnSelectTopic(
      topic,
    );
  }

// ignore: unused_element
  _SaveButtonClicked saveButtonClicked() {
    return const _SaveButtonClicked();
  }

// ignore: unused_element
  _Failure failure(Failure failure) {
    return _Failure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OnboardSelectionEvent = _$OnboardSelectionEventTearOff();

/// @nodoc
mixin _$OnboardSelectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateSelectedTopics(KtList<Topic> topic),
    @required TResult selectTopic(Topic topic),
    @required TResult unSelectTopic(Topic topic),
    @required TResult saveButtonClicked(),
    @required TResult failure(Failure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateSelectedTopics(KtList<Topic> topic),
    TResult selectTopic(Topic topic),
    TResult unSelectTopic(Topic topic),
    TResult saveButtonClicked(),
    TResult failure(Failure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateSelectedTopics(_UpdateSelectedTopic value),
    @required TResult selectTopic(_SelectTopic value),
    @required TResult unSelectTopic(_UnSelectTopic value),
    @required TResult saveButtonClicked(_SaveButtonClicked value),
    @required TResult failure(_Failure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateSelectedTopics(_UpdateSelectedTopic value),
    TResult selectTopic(_SelectTopic value),
    TResult unSelectTopic(_UnSelectTopic value),
    TResult saveButtonClicked(_SaveButtonClicked value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $OnboardSelectionEventCopyWith<$Res> {
  factory $OnboardSelectionEventCopyWith(OnboardSelectionEvent value,
          $Res Function(OnboardSelectionEvent) then) =
      _$OnboardSelectionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardSelectionEventCopyWithImpl<$Res>
    implements $OnboardSelectionEventCopyWith<$Res> {
  _$OnboardSelectionEventCopyWithImpl(this._value, this._then);

  final OnboardSelectionEvent _value;
  // ignore: unused_field
  final $Res Function(OnboardSelectionEvent) _then;
}

/// @nodoc
abstract class _$UpdateSelectedTopicCopyWith<$Res> {
  factory _$UpdateSelectedTopicCopyWith(_UpdateSelectedTopic value,
          $Res Function(_UpdateSelectedTopic) then) =
      __$UpdateSelectedTopicCopyWithImpl<$Res>;
  $Res call({KtList<Topic> topic});
}

/// @nodoc
class __$UpdateSelectedTopicCopyWithImpl<$Res>
    extends _$OnboardSelectionEventCopyWithImpl<$Res>
    implements _$UpdateSelectedTopicCopyWith<$Res> {
  __$UpdateSelectedTopicCopyWithImpl(
      _UpdateSelectedTopic _value, $Res Function(_UpdateSelectedTopic) _then)
      : super(_value, (v) => _then(v as _UpdateSelectedTopic));

  @override
  _UpdateSelectedTopic get _value => super._value as _UpdateSelectedTopic;

  @override
  $Res call({
    Object topic = freezed,
  }) {
    return _then(_UpdateSelectedTopic(
      topic == freezed ? _value.topic : topic as KtList<Topic>,
    ));
  }
}

/// @nodoc
class _$_UpdateSelectedTopic implements _UpdateSelectedTopic {
  const _$_UpdateSelectedTopic(this.topic) : assert(topic != null);

  @override
  final KtList<Topic> topic;

  @override
  String toString() {
    return 'OnboardSelectionEvent.updateSelectedTopics(topic: $topic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateSelectedTopic &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(topic);

  @JsonKey(ignore: true)
  @override
  _$UpdateSelectedTopicCopyWith<_UpdateSelectedTopic> get copyWith =>
      __$UpdateSelectedTopicCopyWithImpl<_UpdateSelectedTopic>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateSelectedTopics(KtList<Topic> topic),
    @required TResult selectTopic(Topic topic),
    @required TResult unSelectTopic(Topic topic),
    @required TResult saveButtonClicked(),
    @required TResult failure(Failure failure),
  }) {
    assert(updateSelectedTopics != null);
    assert(selectTopic != null);
    assert(unSelectTopic != null);
    assert(saveButtonClicked != null);
    assert(failure != null);
    return updateSelectedTopics(topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateSelectedTopics(KtList<Topic> topic),
    TResult selectTopic(Topic topic),
    TResult unSelectTopic(Topic topic),
    TResult saveButtonClicked(),
    TResult failure(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateSelectedTopics != null) {
      return updateSelectedTopics(topic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateSelectedTopics(_UpdateSelectedTopic value),
    @required TResult selectTopic(_SelectTopic value),
    @required TResult unSelectTopic(_UnSelectTopic value),
    @required TResult saveButtonClicked(_SaveButtonClicked value),
    @required TResult failure(_Failure value),
  }) {
    assert(updateSelectedTopics != null);
    assert(selectTopic != null);
    assert(unSelectTopic != null);
    assert(saveButtonClicked != null);
    assert(failure != null);
    return updateSelectedTopics(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateSelectedTopics(_UpdateSelectedTopic value),
    TResult selectTopic(_SelectTopic value),
    TResult unSelectTopic(_UnSelectTopic value),
    TResult saveButtonClicked(_SaveButtonClicked value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateSelectedTopics != null) {
      return updateSelectedTopics(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedTopic implements OnboardSelectionEvent {
  const factory _UpdateSelectedTopic(KtList<Topic> topic) =
      _$_UpdateSelectedTopic;

  KtList<Topic> get topic;
  @JsonKey(ignore: true)
  _$UpdateSelectedTopicCopyWith<_UpdateSelectedTopic> get copyWith;
}

/// @nodoc
abstract class _$SelectTopicCopyWith<$Res> {
  factory _$SelectTopicCopyWith(
          _SelectTopic value, $Res Function(_SelectTopic) then) =
      __$SelectTopicCopyWithImpl<$Res>;
  $Res call({Topic topic});

  $TopicCopyWith<$Res> get topic;
}

/// @nodoc
class __$SelectTopicCopyWithImpl<$Res>
    extends _$OnboardSelectionEventCopyWithImpl<$Res>
    implements _$SelectTopicCopyWith<$Res> {
  __$SelectTopicCopyWithImpl(
      _SelectTopic _value, $Res Function(_SelectTopic) _then)
      : super(_value, (v) => _then(v as _SelectTopic));

  @override
  _SelectTopic get _value => super._value as _SelectTopic;

  @override
  $Res call({
    Object topic = freezed,
  }) {
    return _then(_SelectTopic(
      topic == freezed ? _value.topic : topic as Topic,
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
class _$_SelectTopic implements _SelectTopic {
  const _$_SelectTopic(this.topic) : assert(topic != null);

  @override
  final Topic topic;

  @override
  String toString() {
    return 'OnboardSelectionEvent.selectTopic(topic: $topic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectTopic &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(topic);

  @JsonKey(ignore: true)
  @override
  _$SelectTopicCopyWith<_SelectTopic> get copyWith =>
      __$SelectTopicCopyWithImpl<_SelectTopic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateSelectedTopics(KtList<Topic> topic),
    @required TResult selectTopic(Topic topic),
    @required TResult unSelectTopic(Topic topic),
    @required TResult saveButtonClicked(),
    @required TResult failure(Failure failure),
  }) {
    assert(updateSelectedTopics != null);
    assert(selectTopic != null);
    assert(unSelectTopic != null);
    assert(saveButtonClicked != null);
    assert(failure != null);
    return selectTopic(topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateSelectedTopics(KtList<Topic> topic),
    TResult selectTopic(Topic topic),
    TResult unSelectTopic(Topic topic),
    TResult saveButtonClicked(),
    TResult failure(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectTopic != null) {
      return selectTopic(topic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateSelectedTopics(_UpdateSelectedTopic value),
    @required TResult selectTopic(_SelectTopic value),
    @required TResult unSelectTopic(_UnSelectTopic value),
    @required TResult saveButtonClicked(_SaveButtonClicked value),
    @required TResult failure(_Failure value),
  }) {
    assert(updateSelectedTopics != null);
    assert(selectTopic != null);
    assert(unSelectTopic != null);
    assert(saveButtonClicked != null);
    assert(failure != null);
    return selectTopic(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateSelectedTopics(_UpdateSelectedTopic value),
    TResult selectTopic(_SelectTopic value),
    TResult unSelectTopic(_UnSelectTopic value),
    TResult saveButtonClicked(_SaveButtonClicked value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectTopic != null) {
      return selectTopic(this);
    }
    return orElse();
  }
}

abstract class _SelectTopic implements OnboardSelectionEvent {
  const factory _SelectTopic(Topic topic) = _$_SelectTopic;

  Topic get topic;
  @JsonKey(ignore: true)
  _$SelectTopicCopyWith<_SelectTopic> get copyWith;
}

/// @nodoc
abstract class _$UnSelectTopicCopyWith<$Res> {
  factory _$UnSelectTopicCopyWith(
          _UnSelectTopic value, $Res Function(_UnSelectTopic) then) =
      __$UnSelectTopicCopyWithImpl<$Res>;
  $Res call({Topic topic});

  $TopicCopyWith<$Res> get topic;
}

/// @nodoc
class __$UnSelectTopicCopyWithImpl<$Res>
    extends _$OnboardSelectionEventCopyWithImpl<$Res>
    implements _$UnSelectTopicCopyWith<$Res> {
  __$UnSelectTopicCopyWithImpl(
      _UnSelectTopic _value, $Res Function(_UnSelectTopic) _then)
      : super(_value, (v) => _then(v as _UnSelectTopic));

  @override
  _UnSelectTopic get _value => super._value as _UnSelectTopic;

  @override
  $Res call({
    Object topic = freezed,
  }) {
    return _then(_UnSelectTopic(
      topic == freezed ? _value.topic : topic as Topic,
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
class _$_UnSelectTopic implements _UnSelectTopic {
  const _$_UnSelectTopic(this.topic) : assert(topic != null);

  @override
  final Topic topic;

  @override
  String toString() {
    return 'OnboardSelectionEvent.unSelectTopic(topic: $topic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnSelectTopic &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(topic);

  @JsonKey(ignore: true)
  @override
  _$UnSelectTopicCopyWith<_UnSelectTopic> get copyWith =>
      __$UnSelectTopicCopyWithImpl<_UnSelectTopic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateSelectedTopics(KtList<Topic> topic),
    @required TResult selectTopic(Topic topic),
    @required TResult unSelectTopic(Topic topic),
    @required TResult saveButtonClicked(),
    @required TResult failure(Failure failure),
  }) {
    assert(updateSelectedTopics != null);
    assert(selectTopic != null);
    assert(unSelectTopic != null);
    assert(saveButtonClicked != null);
    assert(failure != null);
    return unSelectTopic(topic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateSelectedTopics(KtList<Topic> topic),
    TResult selectTopic(Topic topic),
    TResult unSelectTopic(Topic topic),
    TResult saveButtonClicked(),
    TResult failure(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unSelectTopic != null) {
      return unSelectTopic(topic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateSelectedTopics(_UpdateSelectedTopic value),
    @required TResult selectTopic(_SelectTopic value),
    @required TResult unSelectTopic(_UnSelectTopic value),
    @required TResult saveButtonClicked(_SaveButtonClicked value),
    @required TResult failure(_Failure value),
  }) {
    assert(updateSelectedTopics != null);
    assert(selectTopic != null);
    assert(unSelectTopic != null);
    assert(saveButtonClicked != null);
    assert(failure != null);
    return unSelectTopic(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateSelectedTopics(_UpdateSelectedTopic value),
    TResult selectTopic(_SelectTopic value),
    TResult unSelectTopic(_UnSelectTopic value),
    TResult saveButtonClicked(_SaveButtonClicked value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unSelectTopic != null) {
      return unSelectTopic(this);
    }
    return orElse();
  }
}

abstract class _UnSelectTopic implements OnboardSelectionEvent {
  const factory _UnSelectTopic(Topic topic) = _$_UnSelectTopic;

  Topic get topic;
  @JsonKey(ignore: true)
  _$UnSelectTopicCopyWith<_UnSelectTopic> get copyWith;
}

/// @nodoc
abstract class _$SaveButtonClickedCopyWith<$Res> {
  factory _$SaveButtonClickedCopyWith(
          _SaveButtonClicked value, $Res Function(_SaveButtonClicked) then) =
      __$SaveButtonClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SaveButtonClickedCopyWithImpl<$Res>
    extends _$OnboardSelectionEventCopyWithImpl<$Res>
    implements _$SaveButtonClickedCopyWith<$Res> {
  __$SaveButtonClickedCopyWithImpl(
      _SaveButtonClicked _value, $Res Function(_SaveButtonClicked) _then)
      : super(_value, (v) => _then(v as _SaveButtonClicked));

  @override
  _SaveButtonClicked get _value => super._value as _SaveButtonClicked;
}

/// @nodoc
class _$_SaveButtonClicked implements _SaveButtonClicked {
  const _$_SaveButtonClicked();

  @override
  String toString() {
    return 'OnboardSelectionEvent.saveButtonClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SaveButtonClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateSelectedTopics(KtList<Topic> topic),
    @required TResult selectTopic(Topic topic),
    @required TResult unSelectTopic(Topic topic),
    @required TResult saveButtonClicked(),
    @required TResult failure(Failure failure),
  }) {
    assert(updateSelectedTopics != null);
    assert(selectTopic != null);
    assert(unSelectTopic != null);
    assert(saveButtonClicked != null);
    assert(failure != null);
    return saveButtonClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateSelectedTopics(KtList<Topic> topic),
    TResult selectTopic(Topic topic),
    TResult unSelectTopic(Topic topic),
    TResult saveButtonClicked(),
    TResult failure(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saveButtonClicked != null) {
      return saveButtonClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateSelectedTopics(_UpdateSelectedTopic value),
    @required TResult selectTopic(_SelectTopic value),
    @required TResult unSelectTopic(_UnSelectTopic value),
    @required TResult saveButtonClicked(_SaveButtonClicked value),
    @required TResult failure(_Failure value),
  }) {
    assert(updateSelectedTopics != null);
    assert(selectTopic != null);
    assert(unSelectTopic != null);
    assert(saveButtonClicked != null);
    assert(failure != null);
    return saveButtonClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateSelectedTopics(_UpdateSelectedTopic value),
    TResult selectTopic(_SelectTopic value),
    TResult unSelectTopic(_UnSelectTopic value),
    TResult saveButtonClicked(_SaveButtonClicked value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saveButtonClicked != null) {
      return saveButtonClicked(this);
    }
    return orElse();
  }
}

abstract class _SaveButtonClicked implements OnboardSelectionEvent {
  const factory _SaveButtonClicked() = _$_SaveButtonClicked;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res>
    extends _$OnboardSelectionEventCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Failure(
      failure == freezed ? _value.failure : failure as Failure,
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
class _$_Failure implements _Failure {
  const _$_Failure(this.failure) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'OnboardSelectionEvent.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updateSelectedTopics(KtList<Topic> topic),
    @required TResult selectTopic(Topic topic),
    @required TResult unSelectTopic(Topic topic),
    @required TResult saveButtonClicked(),
    @required TResult failure(Failure failure),
  }) {
    assert(updateSelectedTopics != null);
    assert(selectTopic != null);
    assert(unSelectTopic != null);
    assert(saveButtonClicked != null);
    assert(failure != null);
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateSelectedTopics(KtList<Topic> topic),
    TResult selectTopic(Topic topic),
    TResult unSelectTopic(Topic topic),
    TResult saveButtonClicked(),
    TResult failure(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateSelectedTopics(_UpdateSelectedTopic value),
    @required TResult selectTopic(_SelectTopic value),
    @required TResult unSelectTopic(_UnSelectTopic value),
    @required TResult saveButtonClicked(_SaveButtonClicked value),
    @required TResult failure(_Failure value),
  }) {
    assert(updateSelectedTopics != null);
    assert(selectTopic != null);
    assert(unSelectTopic != null);
    assert(saveButtonClicked != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateSelectedTopics(_UpdateSelectedTopic value),
    TResult selectTopic(_SelectTopic value),
    TResult unSelectTopic(_UnSelectTopic value),
    TResult saveButtonClicked(_SaveButtonClicked value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements OnboardSelectionEvent {
  const factory _Failure(Failure failure) = _$_Failure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith;
}

/// @nodoc
class _$OnboardSelectionStateTearOff {
  const _$OnboardSelectionStateTearOff();

// ignore: unused_element
  _OnboardSelectionState call(
      {@required KtList<Topic> selectedTopic,
      bool topicSavedSuccess,
      bool saveButtonClicked,
      Failure failure}) {
    return _OnboardSelectionState(
      selectedTopic: selectedTopic,
      topicSavedSuccess: topicSavedSuccess,
      saveButtonClicked: saveButtonClicked,
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OnboardSelectionState = _$OnboardSelectionStateTearOff();

/// @nodoc
mixin _$OnboardSelectionState {
  KtList<Topic> get selectedTopic;
  bool get topicSavedSuccess;
  bool get saveButtonClicked;
  Failure get failure;

  @JsonKey(ignore: true)
  $OnboardSelectionStateCopyWith<OnboardSelectionState> get copyWith;
}

/// @nodoc
abstract class $OnboardSelectionStateCopyWith<$Res> {
  factory $OnboardSelectionStateCopyWith(OnboardSelectionState value,
          $Res Function(OnboardSelectionState) then) =
      _$OnboardSelectionStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<Topic> selectedTopic,
      bool topicSavedSuccess,
      bool saveButtonClicked,
      Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$OnboardSelectionStateCopyWithImpl<$Res>
    implements $OnboardSelectionStateCopyWith<$Res> {
  _$OnboardSelectionStateCopyWithImpl(this._value, this._then);

  final OnboardSelectionState _value;
  // ignore: unused_field
  final $Res Function(OnboardSelectionState) _then;

  @override
  $Res call({
    Object selectedTopic = freezed,
    Object topicSavedSuccess = freezed,
    Object saveButtonClicked = freezed,
    Object failure = freezed,
  }) {
    return _then(_value.copyWith(
      selectedTopic: selectedTopic == freezed
          ? _value.selectedTopic
          : selectedTopic as KtList<Topic>,
      topicSavedSuccess: topicSavedSuccess == freezed
          ? _value.topicSavedSuccess
          : topicSavedSuccess as bool,
      saveButtonClicked: saveButtonClicked == freezed
          ? _value.saveButtonClicked
          : saveButtonClicked as bool,
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
abstract class _$OnboardSelectionStateCopyWith<$Res>
    implements $OnboardSelectionStateCopyWith<$Res> {
  factory _$OnboardSelectionStateCopyWith(_OnboardSelectionState value,
          $Res Function(_OnboardSelectionState) then) =
      __$OnboardSelectionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<Topic> selectedTopic,
      bool topicSavedSuccess,
      bool saveButtonClicked,
      Failure failure});

  @override
  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$OnboardSelectionStateCopyWithImpl<$Res>
    extends _$OnboardSelectionStateCopyWithImpl<$Res>
    implements _$OnboardSelectionStateCopyWith<$Res> {
  __$OnboardSelectionStateCopyWithImpl(_OnboardSelectionState _value,
      $Res Function(_OnboardSelectionState) _then)
      : super(_value, (v) => _then(v as _OnboardSelectionState));

  @override
  _OnboardSelectionState get _value => super._value as _OnboardSelectionState;

  @override
  $Res call({
    Object selectedTopic = freezed,
    Object topicSavedSuccess = freezed,
    Object saveButtonClicked = freezed,
    Object failure = freezed,
  }) {
    return _then(_OnboardSelectionState(
      selectedTopic: selectedTopic == freezed
          ? _value.selectedTopic
          : selectedTopic as KtList<Topic>,
      topicSavedSuccess: topicSavedSuccess == freezed
          ? _value.topicSavedSuccess
          : topicSavedSuccess as bool,
      saveButtonClicked: saveButtonClicked == freezed
          ? _value.saveButtonClicked
          : saveButtonClicked as bool,
      failure: failure == freezed ? _value.failure : failure as Failure,
    ));
  }
}

/// @nodoc
class _$_OnboardSelectionState implements _OnboardSelectionState {
  const _$_OnboardSelectionState(
      {@required this.selectedTopic,
      this.topicSavedSuccess,
      this.saveButtonClicked,
      this.failure})
      : assert(selectedTopic != null);

  @override
  final KtList<Topic> selectedTopic;
  @override
  final bool topicSavedSuccess;
  @override
  final bool saveButtonClicked;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'OnboardSelectionState(selectedTopic: $selectedTopic, topicSavedSuccess: $topicSavedSuccess, saveButtonClicked: $saveButtonClicked, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnboardSelectionState &&
            (identical(other.selectedTopic, selectedTopic) ||
                const DeepCollectionEquality()
                    .equals(other.selectedTopic, selectedTopic)) &&
            (identical(other.topicSavedSuccess, topicSavedSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.topicSavedSuccess, topicSavedSuccess)) &&
            (identical(other.saveButtonClicked, saveButtonClicked) ||
                const DeepCollectionEquality()
                    .equals(other.saveButtonClicked, saveButtonClicked)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedTopic) ^
      const DeepCollectionEquality().hash(topicSavedSuccess) ^
      const DeepCollectionEquality().hash(saveButtonClicked) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$OnboardSelectionStateCopyWith<_OnboardSelectionState> get copyWith =>
      __$OnboardSelectionStateCopyWithImpl<_OnboardSelectionState>(
          this, _$identity);
}

abstract class _OnboardSelectionState implements OnboardSelectionState {
  const factory _OnboardSelectionState(
      {@required KtList<Topic> selectedTopic,
      bool topicSavedSuccess,
      bool saveButtonClicked,
      Failure failure}) = _$_OnboardSelectionState;

  @override
  KtList<Topic> get selectedTopic;
  @override
  bool get topicSavedSuccess;
  @override
  bool get saveButtonClicked;
  @override
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$OnboardSelectionStateCopyWith<_OnboardSelectionState> get copyWith;
}
