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
  _RecommendedVideos loadRecommendedVideos() {
    return const _RecommendedVideos();
  }

// ignore: unused_element
  _LoadFeed loadFeed(int skip, int limit) {
    return _LoadFeed(
      skip,
      limit,
    );
  }

// ignore: unused_element
  _LoadFeedByTopic loadFeedByTopic(int skip, int limit, String topicId) {
    return _LoadFeedByTopic(
      skip,
      limit,
      topicId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostEvent = _$PostEventTearOff();

/// @nodoc
mixin _$PostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadRecommendedVideos(),
    @required TResult loadFeed(int skip, int limit),
    @required TResult loadFeedByTopic(int skip, int limit, String topicId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadRecommendedVideos(),
    TResult loadFeed(int skip, int limit),
    TResult loadFeedByTopic(int skip, int limit, String topicId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadRecommendedVideos(_RecommendedVideos value),
    @required TResult loadFeed(_LoadFeed value),
    @required TResult loadFeedByTopic(_LoadFeedByTopic value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadRecommendedVideos(_RecommendedVideos value),
    TResult loadFeed(_LoadFeed value),
    TResult loadFeedByTopic(_LoadFeedByTopic value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PostEventCopyWith<$Res> {
  factory $PostEventCopyWith(PostEvent value, $Res Function(PostEvent) then) =
      _$PostEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostEventCopyWithImpl<$Res> implements $PostEventCopyWith<$Res> {
  _$PostEventCopyWithImpl(this._value, this._then);

  final PostEvent _value;
  // ignore: unused_field
  final $Res Function(PostEvent) _then;
}

/// @nodoc
abstract class _$RecommendedVideosCopyWith<$Res> {
  factory _$RecommendedVideosCopyWith(
          _RecommendedVideos value, $Res Function(_RecommendedVideos) then) =
      __$RecommendedVideosCopyWithImpl<$Res>;
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
}

/// @nodoc
class _$_RecommendedVideos implements _RecommendedVideos {
  const _$_RecommendedVideos();

  @override
  String toString() {
    return 'PostEvent.loadRecommendedVideos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RecommendedVideos);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadRecommendedVideos(),
    @required TResult loadFeed(int skip, int limit),
    @required TResult loadFeedByTopic(int skip, int limit, String topicId),
  }) {
    assert(loadRecommendedVideos != null);
    assert(loadFeed != null);
    assert(loadFeedByTopic != null);
    return loadRecommendedVideos();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadRecommendedVideos(),
    TResult loadFeed(int skip, int limit),
    TResult loadFeedByTopic(int skip, int limit, String topicId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadRecommendedVideos != null) {
      return loadRecommendedVideos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadRecommendedVideos(_RecommendedVideos value),
    @required TResult loadFeed(_LoadFeed value),
    @required TResult loadFeedByTopic(_LoadFeedByTopic value),
  }) {
    assert(loadRecommendedVideos != null);
    assert(loadFeed != null);
    assert(loadFeedByTopic != null);
    return loadRecommendedVideos(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadRecommendedVideos(_RecommendedVideos value),
    TResult loadFeed(_LoadFeed value),
    TResult loadFeedByTopic(_LoadFeedByTopic value),
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
  const factory _RecommendedVideos() = _$_RecommendedVideos;
}

/// @nodoc
abstract class _$LoadFeedCopyWith<$Res> {
  factory _$LoadFeedCopyWith(_LoadFeed value, $Res Function(_LoadFeed) then) =
      __$LoadFeedCopyWithImpl<$Res>;
  $Res call({int skip, int limit});
}

/// @nodoc
class __$LoadFeedCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
    implements _$LoadFeedCopyWith<$Res> {
  __$LoadFeedCopyWithImpl(_LoadFeed _value, $Res Function(_LoadFeed) _then)
      : super(_value, (v) => _then(v as _LoadFeed));

  @override
  _LoadFeed get _value => super._value as _LoadFeed;

  @override
  $Res call({
    Object skip = freezed,
    Object limit = freezed,
  }) {
    return _then(_LoadFeed(
      skip == freezed ? _value.skip : skip as int,
      limit == freezed ? _value.limit : limit as int,
    ));
  }
}

/// @nodoc
class _$_LoadFeed implements _LoadFeed {
  const _$_LoadFeed(this.skip, this.limit)
      : assert(skip != null),
        assert(limit != null);

  @override
  final int skip;
  @override
  final int limit;

  @override
  String toString() {
    return 'PostEvent.loadFeed(skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFeed &&
            (identical(other.skip, skip) ||
                const DeepCollectionEquality().equals(other.skip, skip)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(skip) ^
      const DeepCollectionEquality().hash(limit);

  @JsonKey(ignore: true)
  @override
  _$LoadFeedCopyWith<_LoadFeed> get copyWith =>
      __$LoadFeedCopyWithImpl<_LoadFeed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadRecommendedVideos(),
    @required TResult loadFeed(int skip, int limit),
    @required TResult loadFeedByTopic(int skip, int limit, String topicId),
  }) {
    assert(loadRecommendedVideos != null);
    assert(loadFeed != null);
    assert(loadFeedByTopic != null);
    return loadFeed(skip, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadRecommendedVideos(),
    TResult loadFeed(int skip, int limit),
    TResult loadFeedByTopic(int skip, int limit, String topicId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFeed != null) {
      return loadFeed(skip, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadRecommendedVideos(_RecommendedVideos value),
    @required TResult loadFeed(_LoadFeed value),
    @required TResult loadFeedByTopic(_LoadFeedByTopic value),
  }) {
    assert(loadRecommendedVideos != null);
    assert(loadFeed != null);
    assert(loadFeedByTopic != null);
    return loadFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadRecommendedVideos(_RecommendedVideos value),
    TResult loadFeed(_LoadFeed value),
    TResult loadFeedByTopic(_LoadFeedByTopic value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFeed != null) {
      return loadFeed(this);
    }
    return orElse();
  }
}

abstract class _LoadFeed implements PostEvent {
  const factory _LoadFeed(int skip, int limit) = _$_LoadFeed;

  int get skip;
  int get limit;
  @JsonKey(ignore: true)
  _$LoadFeedCopyWith<_LoadFeed> get copyWith;
}

/// @nodoc
abstract class _$LoadFeedByTopicCopyWith<$Res> {
  factory _$LoadFeedByTopicCopyWith(
          _LoadFeedByTopic value, $Res Function(_LoadFeedByTopic) then) =
      __$LoadFeedByTopicCopyWithImpl<$Res>;
  $Res call({int skip, int limit, String topicId});
}

/// @nodoc
class __$LoadFeedByTopicCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
    implements _$LoadFeedByTopicCopyWith<$Res> {
  __$LoadFeedByTopicCopyWithImpl(
      _LoadFeedByTopic _value, $Res Function(_LoadFeedByTopic) _then)
      : super(_value, (v) => _then(v as _LoadFeedByTopic));

  @override
  _LoadFeedByTopic get _value => super._value as _LoadFeedByTopic;

  @override
  $Res call({
    Object skip = freezed,
    Object limit = freezed,
    Object topicId = freezed,
  }) {
    return _then(_LoadFeedByTopic(
      skip == freezed ? _value.skip : skip as int,
      limit == freezed ? _value.limit : limit as int,
      topicId == freezed ? _value.topicId : topicId as String,
    ));
  }
}

/// @nodoc
class _$_LoadFeedByTopic implements _LoadFeedByTopic {
  const _$_LoadFeedByTopic(this.skip, this.limit, this.topicId)
      : assert(skip != null),
        assert(limit != null),
        assert(topicId != null);

  @override
  final int skip;
  @override
  final int limit;
  @override
  final String topicId;

  @override
  String toString() {
    return 'PostEvent.loadFeedByTopic(skip: $skip, limit: $limit, topicId: $topicId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFeedByTopic &&
            (identical(other.skip, skip) ||
                const DeepCollectionEquality().equals(other.skip, skip)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.topicId, topicId) ||
                const DeepCollectionEquality().equals(other.topicId, topicId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(skip) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(topicId);

  @JsonKey(ignore: true)
  @override
  _$LoadFeedByTopicCopyWith<_LoadFeedByTopic> get copyWith =>
      __$LoadFeedByTopicCopyWithImpl<_LoadFeedByTopic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadRecommendedVideos(),
    @required TResult loadFeed(int skip, int limit),
    @required TResult loadFeedByTopic(int skip, int limit, String topicId),
  }) {
    assert(loadRecommendedVideos != null);
    assert(loadFeed != null);
    assert(loadFeedByTopic != null);
    return loadFeedByTopic(skip, limit, topicId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadRecommendedVideos(),
    TResult loadFeed(int skip, int limit),
    TResult loadFeedByTopic(int skip, int limit, String topicId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFeedByTopic != null) {
      return loadFeedByTopic(skip, limit, topicId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadRecommendedVideos(_RecommendedVideos value),
    @required TResult loadFeed(_LoadFeed value),
    @required TResult loadFeedByTopic(_LoadFeedByTopic value),
  }) {
    assert(loadRecommendedVideos != null);
    assert(loadFeed != null);
    assert(loadFeedByTopic != null);
    return loadFeedByTopic(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadRecommendedVideos(_RecommendedVideos value),
    TResult loadFeed(_LoadFeed value),
    TResult loadFeedByTopic(_LoadFeedByTopic value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFeedByTopic != null) {
      return loadFeedByTopic(this);
    }
    return orElse();
  }
}

abstract class _LoadFeedByTopic implements PostEvent {
  const factory _LoadFeedByTopic(int skip, int limit, String topicId) =
      _$_LoadFeedByTopic;

  int get skip;
  int get limit;
  String get topicId;
  @JsonKey(ignore: true)
  _$LoadFeedByTopicCopyWith<_LoadFeedByTopic> get copyWith;
}

/// @nodoc
class _$PostPageStateTearOff {
  const _$PostPageStateTearOff();

// ignore: unused_element
  _PostPageState call(int skip, int limit, {List<Post> posts, String topicId}) {
    return _PostPageState(
      skip,
      limit,
      posts: posts,
      topicId: topicId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostPageState = _$PostPageStateTearOff();

/// @nodoc
mixin _$PostPageState {
  int get skip;
  int get limit;
  List<Post> get posts;
  String get topicId;

  @JsonKey(ignore: true)
  $PostPageStateCopyWith<PostPageState> get copyWith;
}

/// @nodoc
abstract class $PostPageStateCopyWith<$Res> {
  factory $PostPageStateCopyWith(
          PostPageState value, $Res Function(PostPageState) then) =
      _$PostPageStateCopyWithImpl<$Res>;
  $Res call({int skip, int limit, List<Post> posts, String topicId});
}

/// @nodoc
class _$PostPageStateCopyWithImpl<$Res>
    implements $PostPageStateCopyWith<$Res> {
  _$PostPageStateCopyWithImpl(this._value, this._then);

  final PostPageState _value;
  // ignore: unused_field
  final $Res Function(PostPageState) _then;

  @override
  $Res call({
    Object skip = freezed,
    Object limit = freezed,
    Object posts = freezed,
    Object topicId = freezed,
  }) {
    return _then(_value.copyWith(
      skip: skip == freezed ? _value.skip : skip as int,
      limit: limit == freezed ? _value.limit : limit as int,
      posts: posts == freezed ? _value.posts : posts as List<Post>,
      topicId: topicId == freezed ? _value.topicId : topicId as String,
    ));
  }
}

/// @nodoc
abstract class _$PostPageStateCopyWith<$Res>
    implements $PostPageStateCopyWith<$Res> {
  factory _$PostPageStateCopyWith(
          _PostPageState value, $Res Function(_PostPageState) then) =
      __$PostPageStateCopyWithImpl<$Res>;
  @override
  $Res call({int skip, int limit, List<Post> posts, String topicId});
}

/// @nodoc
class __$PostPageStateCopyWithImpl<$Res>
    extends _$PostPageStateCopyWithImpl<$Res>
    implements _$PostPageStateCopyWith<$Res> {
  __$PostPageStateCopyWithImpl(
      _PostPageState _value, $Res Function(_PostPageState) _then)
      : super(_value, (v) => _then(v as _PostPageState));

  @override
  _PostPageState get _value => super._value as _PostPageState;

  @override
  $Res call({
    Object skip = freezed,
    Object limit = freezed,
    Object posts = freezed,
    Object topicId = freezed,
  }) {
    return _then(_PostPageState(
      skip == freezed ? _value.skip : skip as int,
      limit == freezed ? _value.limit : limit as int,
      posts: posts == freezed ? _value.posts : posts as List<Post>,
      topicId: topicId == freezed ? _value.topicId : topicId as String,
    ));
  }
}

/// @nodoc
class _$_PostPageState implements _PostPageState {
  const _$_PostPageState(this.skip, this.limit, {this.posts, this.topicId})
      : assert(skip != null),
        assert(limit != null);

  @override
  final int skip;
  @override
  final int limit;
  @override
  final List<Post> posts;
  @override
  final String topicId;

  @override
  String toString() {
    return 'PostPageState(skip: $skip, limit: $limit, posts: $posts, topicId: $topicId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostPageState &&
            (identical(other.skip, skip) ||
                const DeepCollectionEquality().equals(other.skip, skip)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)) &&
            (identical(other.topicId, topicId) ||
                const DeepCollectionEquality().equals(other.topicId, topicId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(skip) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(posts) ^
      const DeepCollectionEquality().hash(topicId);

  @JsonKey(ignore: true)
  @override
  _$PostPageStateCopyWith<_PostPageState> get copyWith =>
      __$PostPageStateCopyWithImpl<_PostPageState>(this, _$identity);
}

abstract class _PostPageState implements PostPageState {
  const factory _PostPageState(int skip, int limit,
      {List<Post> posts, String topicId}) = _$_PostPageState;

  @override
  int get skip;
  @override
  int get limit;
  @override
  List<Post> get posts;
  @override
  String get topicId;
  @override
  @JsonKey(ignore: true)
  _$PostPageStateCopyWith<_PostPageState> get copyWith;
}

/// @nodoc
class _$PostStateTearOff {
  const _$PostStateTearOff();

// ignore: unused_element
  _PostState call(PostPageState allFeed, PostPageState feedByTopic,
      {Failure failure}) {
    return _PostState(
      allFeed,
      feedByTopic,
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostState = _$PostStateTearOff();

/// @nodoc
mixin _$PostState {
  PostPageState get allFeed;
  PostPageState get feedByTopic;
  Failure get failure;

  @JsonKey(ignore: true)
  $PostStateCopyWith<PostState> get copyWith;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res>;
  $Res call(
      {PostPageState allFeed, PostPageState feedByTopic, Failure failure});

  $PostPageStateCopyWith<$Res> get allFeed;
  $PostPageStateCopyWith<$Res> get feedByTopic;
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
    Object allFeed = freezed,
    Object feedByTopic = freezed,
    Object failure = freezed,
  }) {
    return _then(_value.copyWith(
      allFeed: allFeed == freezed ? _value.allFeed : allFeed as PostPageState,
      feedByTopic: feedByTopic == freezed
          ? _value.feedByTopic
          : feedByTopic as PostPageState,
      failure: failure == freezed ? _value.failure : failure as Failure,
    ));
  }

  @override
  $PostPageStateCopyWith<$Res> get allFeed {
    if (_value.allFeed == null) {
      return null;
    }
    return $PostPageStateCopyWith<$Res>(_value.allFeed, (value) {
      return _then(_value.copyWith(allFeed: value));
    });
  }

  @override
  $PostPageStateCopyWith<$Res> get feedByTopic {
    if (_value.feedByTopic == null) {
      return null;
    }
    return $PostPageStateCopyWith<$Res>(_value.feedByTopic, (value) {
      return _then(_value.copyWith(feedByTopic: value));
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
abstract class _$PostStateCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory _$PostStateCopyWith(
          _PostState value, $Res Function(_PostState) then) =
      __$PostStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PostPageState allFeed, PostPageState feedByTopic, Failure failure});

  @override
  $PostPageStateCopyWith<$Res> get allFeed;
  @override
  $PostPageStateCopyWith<$Res> get feedByTopic;
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
    Object allFeed = freezed,
    Object feedByTopic = freezed,
    Object failure = freezed,
  }) {
    return _then(_PostState(
      allFeed == freezed ? _value.allFeed : allFeed as PostPageState,
      feedByTopic == freezed
          ? _value.feedByTopic
          : feedByTopic as PostPageState,
      failure: failure == freezed ? _value.failure : failure as Failure,
    ));
  }
}

/// @nodoc
class _$_PostState implements _PostState {
  const _$_PostState(this.allFeed, this.feedByTopic, {this.failure})
      : assert(allFeed != null),
        assert(feedByTopic != null);

  @override
  final PostPageState allFeed;
  @override
  final PostPageState feedByTopic;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'PostState(allFeed: $allFeed, feedByTopic: $feedByTopic, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostState &&
            (identical(other.allFeed, allFeed) ||
                const DeepCollectionEquality()
                    .equals(other.allFeed, allFeed)) &&
            (identical(other.feedByTopic, feedByTopic) ||
                const DeepCollectionEquality()
                    .equals(other.feedByTopic, feedByTopic)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(allFeed) ^
      const DeepCollectionEquality().hash(feedByTopic) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$PostStateCopyWith<_PostState> get copyWith =>
      __$PostStateCopyWithImpl<_PostState>(this, _$identity);
}

abstract class _PostState implements PostState {
  const factory _PostState(PostPageState allFeed, PostPageState feedByTopic,
      {Failure failure}) = _$_PostState;

  @override
  PostPageState get allFeed;
  @override
  PostPageState get feedByTopic;
  @override
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$PostStateCopyWith<_PostState> get copyWith;
}
