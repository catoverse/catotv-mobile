// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FeedEventTearOff {
  const _$FeedEventTearOff();

// ignore: unused_element
  _Load load(int nextPageKey, int limit) {
    return _Load(
      nextPageKey,
      limit,
    );
  }

// ignore: unused_element
  _LoadFinished loadFinished() {
    return const _LoadFinished();
  }

// ignore: unused_element
  _SelectTopic selectTopic({String topicId}) {
    return _SelectTopic(
      topicId: topicId,
    );
  }
}

// ignore: unused_element
const $FeedEvent = _$FeedEventTearOff();

mixin _$FeedEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(int nextPageKey, int limit),
    @required Result loadFinished(),
    @required Result selectTopic(String topicId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(int nextPageKey, int limit),
    Result loadFinished(),
    Result selectTopic(String topicId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result loadFinished(_LoadFinished value),
    @required Result selectTopic(_SelectTopic value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result loadFinished(_LoadFinished value),
    Result selectTopic(_SelectTopic value),
    @required Result orElse(),
  });
}

abstract class $FeedEventCopyWith<$Res> {
  factory $FeedEventCopyWith(FeedEvent value, $Res Function(FeedEvent) then) =
      _$FeedEventCopyWithImpl<$Res>;
}

class _$FeedEventCopyWithImpl<$Res> implements $FeedEventCopyWith<$Res> {
  _$FeedEventCopyWithImpl(this._value, this._then);

  final FeedEvent _value;
  // ignore: unused_field
  final $Res Function(FeedEvent) _then;
}

abstract class _$LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
  $Res call({int nextPageKey, int limit});
}

class __$LoadCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(_Load _value, $Res Function(_Load) _then)
      : super(_value, (v) => _then(v as _Load));

  @override
  _Load get _value => super._value as _Load;

  @override
  $Res call({
    Object nextPageKey = freezed,
    Object limit = freezed,
  }) {
    return _then(_Load(
      nextPageKey == freezed ? _value.nextPageKey : nextPageKey as int,
      limit == freezed ? _value.limit : limit as int,
    ));
  }
}

class _$_Load implements _Load {
  const _$_Load(this.nextPageKey, this.limit)
      : assert(nextPageKey != null),
        assert(limit != null);

  @override
  final int nextPageKey;
  @override
  final int limit;

  @override
  String toString() {
    return 'FeedEvent.load(nextPageKey: $nextPageKey, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Load &&
            (identical(other.nextPageKey, nextPageKey) ||
                const DeepCollectionEquality()
                    .equals(other.nextPageKey, nextPageKey)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nextPageKey) ^
      const DeepCollectionEquality().hash(limit);

  @override
  _$LoadCopyWith<_Load> get copyWith =>
      __$LoadCopyWithImpl<_Load>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(int nextPageKey, int limit),
    @required Result loadFinished(),
    @required Result selectTopic(String topicId),
  }) {
    assert(load != null);
    assert(loadFinished != null);
    assert(selectTopic != null);
    return load(nextPageKey, limit);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(int nextPageKey, int limit),
    Result loadFinished(),
    Result selectTopic(String topicId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(nextPageKey, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result loadFinished(_LoadFinished value),
    @required Result selectTopic(_SelectTopic value),
  }) {
    assert(load != null);
    assert(loadFinished != null);
    assert(selectTopic != null);
    return load(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result loadFinished(_LoadFinished value),
    Result selectTopic(_SelectTopic value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements FeedEvent {
  const factory _Load(int nextPageKey, int limit) = _$_Load;

  int get nextPageKey;
  int get limit;
  _$LoadCopyWith<_Load> get copyWith;
}

abstract class _$LoadFinishedCopyWith<$Res> {
  factory _$LoadFinishedCopyWith(
          _LoadFinished value, $Res Function(_LoadFinished) then) =
      __$LoadFinishedCopyWithImpl<$Res>;
}

class __$LoadFinishedCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements _$LoadFinishedCopyWith<$Res> {
  __$LoadFinishedCopyWithImpl(
      _LoadFinished _value, $Res Function(_LoadFinished) _then)
      : super(_value, (v) => _then(v as _LoadFinished));

  @override
  _LoadFinished get _value => super._value as _LoadFinished;
}

class _$_LoadFinished implements _LoadFinished {
  const _$_LoadFinished();

  @override
  String toString() {
    return 'FeedEvent.loadFinished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadFinished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(int nextPageKey, int limit),
    @required Result loadFinished(),
    @required Result selectTopic(String topicId),
  }) {
    assert(load != null);
    assert(loadFinished != null);
    assert(selectTopic != null);
    return loadFinished();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(int nextPageKey, int limit),
    Result loadFinished(),
    Result selectTopic(String topicId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFinished != null) {
      return loadFinished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result loadFinished(_LoadFinished value),
    @required Result selectTopic(_SelectTopic value),
  }) {
    assert(load != null);
    assert(loadFinished != null);
    assert(selectTopic != null);
    return loadFinished(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result loadFinished(_LoadFinished value),
    Result selectTopic(_SelectTopic value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFinished != null) {
      return loadFinished(this);
    }
    return orElse();
  }
}

abstract class _LoadFinished implements FeedEvent {
  const factory _LoadFinished() = _$_LoadFinished;
}

abstract class _$SelectTopicCopyWith<$Res> {
  factory _$SelectTopicCopyWith(
          _SelectTopic value, $Res Function(_SelectTopic) then) =
      __$SelectTopicCopyWithImpl<$Res>;
  $Res call({String topicId});
}

class __$SelectTopicCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
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
      topicId: topicId == freezed ? _value.topicId : topicId as String,
    ));
  }
}

class _$_SelectTopic implements _SelectTopic {
  const _$_SelectTopic({this.topicId});

  @override
  final String topicId;

  @override
  String toString() {
    return 'FeedEvent.selectTopic(topicId: $topicId)';
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
    @required Result load(int nextPageKey, int limit),
    @required Result loadFinished(),
    @required Result selectTopic(String topicId),
  }) {
    assert(load != null);
    assert(loadFinished != null);
    assert(selectTopic != null);
    return selectTopic(topicId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(int nextPageKey, int limit),
    Result loadFinished(),
    Result selectTopic(String topicId),
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
    @required Result load(_Load value),
    @required Result loadFinished(_LoadFinished value),
    @required Result selectTopic(_SelectTopic value),
  }) {
    assert(load != null);
    assert(loadFinished != null);
    assert(selectTopic != null);
    return selectTopic(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result loadFinished(_LoadFinished value),
    Result selectTopic(_SelectTopic value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectTopic != null) {
      return selectTopic(this);
    }
    return orElse();
  }
}

abstract class _SelectTopic implements FeedEvent {
  const factory _SelectTopic({String topicId}) = _$_SelectTopic;

  String get topicId;
  _$SelectTopicCopyWith<_SelectTopic> get copyWith;
}

class _$FeedStateTearOff {
  const _$FeedStateTearOff();

// ignore: unused_element
  _FeedState call(
      {int nextPageKey, String selectedTopicId, int pageSize, bool isLoading}) {
    return _FeedState(
      nextPageKey: nextPageKey,
      selectedTopicId: selectedTopicId,
      pageSize: pageSize,
      isLoading: isLoading,
    );
  }
}

// ignore: unused_element
const $FeedState = _$FeedStateTearOff();

mixin _$FeedState {
  int get nextPageKey;
  String get selectedTopicId;
  int get pageSize;
  bool get isLoading;

  $FeedStateCopyWith<FeedState> get copyWith;
}

abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res>;
  $Res call(
      {int nextPageKey, String selectedTopicId, int pageSize, bool isLoading});
}

class _$FeedStateCopyWithImpl<$Res> implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  final FeedState _value;
  // ignore: unused_field
  final $Res Function(FeedState) _then;

  @override
  $Res call({
    Object nextPageKey = freezed,
    Object selectedTopicId = freezed,
    Object pageSize = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      nextPageKey:
          nextPageKey == freezed ? _value.nextPageKey : nextPageKey as int,
      selectedTopicId: selectedTopicId == freezed
          ? _value.selectedTopicId
          : selectedTopicId as String,
      pageSize: pageSize == freezed ? _value.pageSize : pageSize as int,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

abstract class _$FeedStateCopyWith<$Res> implements $FeedStateCopyWith<$Res> {
  factory _$FeedStateCopyWith(
          _FeedState value, $Res Function(_FeedState) then) =
      __$FeedStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int nextPageKey, String selectedTopicId, int pageSize, bool isLoading});
}

class __$FeedStateCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$FeedStateCopyWith<$Res> {
  __$FeedStateCopyWithImpl(_FeedState _value, $Res Function(_FeedState) _then)
      : super(_value, (v) => _then(v as _FeedState));

  @override
  _FeedState get _value => super._value as _FeedState;

  @override
  $Res call({
    Object nextPageKey = freezed,
    Object selectedTopicId = freezed,
    Object pageSize = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_FeedState(
      nextPageKey:
          nextPageKey == freezed ? _value.nextPageKey : nextPageKey as int,
      selectedTopicId: selectedTopicId == freezed
          ? _value.selectedTopicId
          : selectedTopicId as String,
      pageSize: pageSize == freezed ? _value.pageSize : pageSize as int,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

class _$_FeedState implements _FeedState {
  const _$_FeedState(
      {this.nextPageKey, this.selectedTopicId, this.pageSize, this.isLoading});

  @override
  final int nextPageKey;
  @override
  final String selectedTopicId;
  @override
  final int pageSize;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'FeedState(nextPageKey: $nextPageKey, selectedTopicId: $selectedTopicId, pageSize: $pageSize, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeedState &&
            (identical(other.nextPageKey, nextPageKey) ||
                const DeepCollectionEquality()
                    .equals(other.nextPageKey, nextPageKey)) &&
            (identical(other.selectedTopicId, selectedTopicId) ||
                const DeepCollectionEquality()
                    .equals(other.selectedTopicId, selectedTopicId)) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality()
                    .equals(other.pageSize, pageSize)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nextPageKey) ^
      const DeepCollectionEquality().hash(selectedTopicId) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(isLoading);

  @override
  _$FeedStateCopyWith<_FeedState> get copyWith =>
      __$FeedStateCopyWithImpl<_FeedState>(this, _$identity);
}

abstract class _FeedState implements FeedState {
  const factory _FeedState(
      {int nextPageKey,
      String selectedTopicId,
      int pageSize,
      bool isLoading}) = _$_FeedState;

  @override
  int get nextPageKey;
  @override
  String get selectedTopicId;
  @override
  int get pageSize;
  @override
  bool get isLoading;
  @override
  _$FeedStateCopyWith<_FeedState> get copyWith;
}
