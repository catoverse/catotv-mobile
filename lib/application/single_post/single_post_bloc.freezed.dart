// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'single_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SinglePostEventTearOff {
  const _$SinglePostEventTearOff();

// ignore: unused_element
  _LoadPost loadPost(String postId) {
    return _LoadPost(
      postId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SinglePostEvent = _$SinglePostEventTearOff();

/// @nodoc
mixin _$SinglePostEvent {
  String get postId;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPost(String postId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPost(String postId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPost(_LoadPost value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPost(_LoadPost value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $SinglePostEventCopyWith<SinglePostEvent> get copyWith;
}

/// @nodoc
abstract class $SinglePostEventCopyWith<$Res> {
  factory $SinglePostEventCopyWith(
          SinglePostEvent value, $Res Function(SinglePostEvent) then) =
      _$SinglePostEventCopyWithImpl<$Res>;
  $Res call({String postId});
}

/// @nodoc
class _$SinglePostEventCopyWithImpl<$Res>
    implements $SinglePostEventCopyWith<$Res> {
  _$SinglePostEventCopyWithImpl(this._value, this._then);

  final SinglePostEvent _value;
  // ignore: unused_field
  final $Res Function(SinglePostEvent) _then;

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
abstract class _$LoadPostCopyWith<$Res>
    implements $SinglePostEventCopyWith<$Res> {
  factory _$LoadPostCopyWith(_LoadPost value, $Res Function(_LoadPost) then) =
      __$LoadPostCopyWithImpl<$Res>;
  @override
  $Res call({String postId});
}

/// @nodoc
class __$LoadPostCopyWithImpl<$Res> extends _$SinglePostEventCopyWithImpl<$Res>
    implements _$LoadPostCopyWith<$Res> {
  __$LoadPostCopyWithImpl(_LoadPost _value, $Res Function(_LoadPost) _then)
      : super(_value, (v) => _then(v as _LoadPost));

  @override
  _LoadPost get _value => super._value as _LoadPost;

  @override
  $Res call({
    Object postId = freezed,
  }) {
    return _then(_LoadPost(
      postId == freezed ? _value.postId : postId as String,
    ));
  }
}

/// @nodoc
class _$_LoadPost with DiagnosticableTreeMixin implements _LoadPost {
  const _$_LoadPost(this.postId) : assert(postId != null);

  @override
  final String postId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SinglePostEvent.loadPost(postId: $postId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SinglePostEvent.loadPost'))
      ..add(DiagnosticsProperty('postId', postId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadPost &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postId);

  @JsonKey(ignore: true)
  @override
  _$LoadPostCopyWith<_LoadPost> get copyWith =>
      __$LoadPostCopyWithImpl<_LoadPost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadPost(String postId),
  }) {
    assert(loadPost != null);
    return loadPost(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadPost(String postId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadPost != null) {
      return loadPost(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadPost(_LoadPost value),
  }) {
    assert(loadPost != null);
    return loadPost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadPost(_LoadPost value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadPost != null) {
      return loadPost(this);
    }
    return orElse();
  }
}

abstract class _LoadPost implements SinglePostEvent {
  const factory _LoadPost(String postId) = _$_LoadPost;

  @override
  String get postId;
  @override
  @JsonKey(ignore: true)
  _$LoadPostCopyWith<_LoadPost> get copyWith;
}

/// @nodoc
class _$SinglePostStateTearOff {
  const _$SinglePostStateTearOff();

// ignore: unused_element
  _SinglePostState call({Post post, Failure failure}) {
    return _SinglePostState(
      post: post,
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SinglePostState = _$SinglePostStateTearOff();

/// @nodoc
mixin _$SinglePostState {
  Post get post;
  Failure get failure;

  @JsonKey(ignore: true)
  $SinglePostStateCopyWith<SinglePostState> get copyWith;
}

/// @nodoc
abstract class $SinglePostStateCopyWith<$Res> {
  factory $SinglePostStateCopyWith(
          SinglePostState value, $Res Function(SinglePostState) then) =
      _$SinglePostStateCopyWithImpl<$Res>;
  $Res call({Post post, Failure failure});

  $PostCopyWith<$Res> get post;
  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$SinglePostStateCopyWithImpl<$Res>
    implements $SinglePostStateCopyWith<$Res> {
  _$SinglePostStateCopyWithImpl(this._value, this._then);

  final SinglePostState _value;
  // ignore: unused_field
  final $Res Function(SinglePostState) _then;

  @override
  $Res call({
    Object post = freezed,
    Object failure = freezed,
  }) {
    return _then(_value.copyWith(
      post: post == freezed ? _value.post : post as Post,
      failure: failure == freezed ? _value.failure : failure as Failure,
    ));
  }

  @override
  $PostCopyWith<$Res> get post {
    if (_value.post == null) {
      return null;
    }
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
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
abstract class _$SinglePostStateCopyWith<$Res>
    implements $SinglePostStateCopyWith<$Res> {
  factory _$SinglePostStateCopyWith(
          _SinglePostState value, $Res Function(_SinglePostState) then) =
      __$SinglePostStateCopyWithImpl<$Res>;
  @override
  $Res call({Post post, Failure failure});

  @override
  $PostCopyWith<$Res> get post;
  @override
  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$SinglePostStateCopyWithImpl<$Res>
    extends _$SinglePostStateCopyWithImpl<$Res>
    implements _$SinglePostStateCopyWith<$Res> {
  __$SinglePostStateCopyWithImpl(
      _SinglePostState _value, $Res Function(_SinglePostState) _then)
      : super(_value, (v) => _then(v as _SinglePostState));

  @override
  _SinglePostState get _value => super._value as _SinglePostState;

  @override
  $Res call({
    Object post = freezed,
    Object failure = freezed,
  }) {
    return _then(_SinglePostState(
      post: post == freezed ? _value.post : post as Post,
      failure: failure == freezed ? _value.failure : failure as Failure,
    ));
  }
}

/// @nodoc
class _$_SinglePostState
    with DiagnosticableTreeMixin
    implements _SinglePostState {
  const _$_SinglePostState({this.post, this.failure});

  @override
  final Post post;
  @override
  final Failure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SinglePostState(post: $post, failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SinglePostState'))
      ..add(DiagnosticsProperty('post', post))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SinglePostState &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(post) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$SinglePostStateCopyWith<_SinglePostState> get copyWith =>
      __$SinglePostStateCopyWithImpl<_SinglePostState>(this, _$identity);
}

abstract class _SinglePostState implements SinglePostState {
  const factory _SinglePostState({Post post, Failure failure}) =
      _$_SinglePostState;

  @override
  Post get post;
  @override
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$SinglePostStateCopyWith<_SinglePostState> get copyWith;
}
