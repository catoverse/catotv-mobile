// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'userprofile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserProfileEventTearOff {
  const _$UserProfileEventTearOff();

// ignore: unused_element
  _Refresh refresh() {
    return const _Refresh();
  }

// ignore: unused_element
  _LikePost likePost(String postId) {
    return _LikePost(
      postId,
    );
  }

// ignore: unused_element
  _UnLikePost unlikePost(String postId) {
    return _UnLikePost(
      postId,
    );
  }

// ignore: unused_element
  _SavePost savePost(String postId) {
    return _SavePost(
      postId,
    );
  }

// ignore: unused_element
  _UnSavePost unSavePost(String postId) {
    return _UnSavePost(
      postId,
    );
  }
}

// ignore: unused_element
const $UserProfileEvent = _$UserProfileEventTearOff();

mixin _$UserProfileEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result refresh(),
    @required Result likePost(String postId),
    @required Result unlikePost(String postId),
    @required Result savePost(String postId),
    @required Result unSavePost(String postId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result refresh(),
    Result likePost(String postId),
    Result unlikePost(String postId),
    Result savePost(String postId),
    Result unSavePost(String postId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result refresh(_Refresh value),
    @required Result likePost(_LikePost value),
    @required Result unlikePost(_UnLikePost value),
    @required Result savePost(_SavePost value),
    @required Result unSavePost(_UnSavePost value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result refresh(_Refresh value),
    Result likePost(_LikePost value),
    Result unlikePost(_UnLikePost value),
    Result savePost(_SavePost value),
    Result unSavePost(_UnSavePost value),
    @required Result orElse(),
  });
}

abstract class $UserProfileEventCopyWith<$Res> {
  factory $UserProfileEventCopyWith(
          UserProfileEvent value, $Res Function(UserProfileEvent) then) =
      _$UserProfileEventCopyWithImpl<$Res>;
}

class _$UserProfileEventCopyWithImpl<$Res>
    implements $UserProfileEventCopyWith<$Res> {
  _$UserProfileEventCopyWithImpl(this._value, this._then);

  final UserProfileEvent _value;
  // ignore: unused_field
  final $Res Function(UserProfileEvent) _then;
}

abstract class _$RefreshCopyWith<$Res> {
  factory _$RefreshCopyWith(_Refresh value, $Res Function(_Refresh) then) =
      __$RefreshCopyWithImpl<$Res>;
}

class __$RefreshCopyWithImpl<$Res> extends _$UserProfileEventCopyWithImpl<$Res>
    implements _$RefreshCopyWith<$Res> {
  __$RefreshCopyWithImpl(_Refresh _value, $Res Function(_Refresh) _then)
      : super(_value, (v) => _then(v as _Refresh));

  @override
  _Refresh get _value => super._value as _Refresh;
}

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'UserProfileEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result refresh(),
    @required Result likePost(String postId),
    @required Result unlikePost(String postId),
    @required Result savePost(String postId),
    @required Result unSavePost(String postId),
  }) {
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    return refresh();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result refresh(),
    Result likePost(String postId),
    Result unlikePost(String postId),
    Result savePost(String postId),
    Result unSavePost(String postId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result refresh(_Refresh value),
    @required Result likePost(_LikePost value),
    @required Result unlikePost(_UnLikePost value),
    @required Result savePost(_SavePost value),
    @required Result unSavePost(_UnSavePost value),
  }) {
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result refresh(_Refresh value),
    Result likePost(_LikePost value),
    Result unlikePost(_UnLikePost value),
    Result savePost(_SavePost value),
    Result unSavePost(_UnSavePost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements UserProfileEvent {
  const factory _Refresh() = _$_Refresh;
}

abstract class _$LikePostCopyWith<$Res> {
  factory _$LikePostCopyWith(_LikePost value, $Res Function(_LikePost) then) =
      __$LikePostCopyWithImpl<$Res>;
  $Res call({String postId});
}

class __$LikePostCopyWithImpl<$Res> extends _$UserProfileEventCopyWithImpl<$Res>
    implements _$LikePostCopyWith<$Res> {
  __$LikePostCopyWithImpl(_LikePost _value, $Res Function(_LikePost) _then)
      : super(_value, (v) => _then(v as _LikePost));

  @override
  _LikePost get _value => super._value as _LikePost;

  @override
  $Res call({
    Object postId = freezed,
  }) {
    return _then(_LikePost(
      postId == freezed ? _value.postId : postId as String,
    ));
  }
}

class _$_LikePost implements _LikePost {
  const _$_LikePost(this.postId) : assert(postId != null);

  @override
  final String postId;

  @override
  String toString() {
    return 'UserProfileEvent.likePost(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikePost &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postId);

  @override
  _$LikePostCopyWith<_LikePost> get copyWith =>
      __$LikePostCopyWithImpl<_LikePost>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result refresh(),
    @required Result likePost(String postId),
    @required Result unlikePost(String postId),
    @required Result savePost(String postId),
    @required Result unSavePost(String postId),
  }) {
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    return likePost(postId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result refresh(),
    Result likePost(String postId),
    Result unlikePost(String postId),
    Result savePost(String postId),
    Result unSavePost(String postId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likePost != null) {
      return likePost(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result refresh(_Refresh value),
    @required Result likePost(_LikePost value),
    @required Result unlikePost(_UnLikePost value),
    @required Result savePost(_SavePost value),
    @required Result unSavePost(_UnSavePost value),
  }) {
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    return likePost(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result refresh(_Refresh value),
    Result likePost(_LikePost value),
    Result unlikePost(_UnLikePost value),
    Result savePost(_SavePost value),
    Result unSavePost(_UnSavePost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likePost != null) {
      return likePost(this);
    }
    return orElse();
  }
}

abstract class _LikePost implements UserProfileEvent {
  const factory _LikePost(String postId) = _$_LikePost;

  String get postId;
  _$LikePostCopyWith<_LikePost> get copyWith;
}

abstract class _$UnLikePostCopyWith<$Res> {
  factory _$UnLikePostCopyWith(
          _UnLikePost value, $Res Function(_UnLikePost) then) =
      __$UnLikePostCopyWithImpl<$Res>;
  $Res call({String postId});
}

class __$UnLikePostCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res>
    implements _$UnLikePostCopyWith<$Res> {
  __$UnLikePostCopyWithImpl(
      _UnLikePost _value, $Res Function(_UnLikePost) _then)
      : super(_value, (v) => _then(v as _UnLikePost));

  @override
  _UnLikePost get _value => super._value as _UnLikePost;

  @override
  $Res call({
    Object postId = freezed,
  }) {
    return _then(_UnLikePost(
      postId == freezed ? _value.postId : postId as String,
    ));
  }
}

class _$_UnLikePost implements _UnLikePost {
  const _$_UnLikePost(this.postId) : assert(postId != null);

  @override
  final String postId;

  @override
  String toString() {
    return 'UserProfileEvent.unlikePost(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnLikePost &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postId);

  @override
  _$UnLikePostCopyWith<_UnLikePost> get copyWith =>
      __$UnLikePostCopyWithImpl<_UnLikePost>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result refresh(),
    @required Result likePost(String postId),
    @required Result unlikePost(String postId),
    @required Result savePost(String postId),
    @required Result unSavePost(String postId),
  }) {
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    return unlikePost(postId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result refresh(),
    Result likePost(String postId),
    Result unlikePost(String postId),
    Result savePost(String postId),
    Result unSavePost(String postId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unlikePost != null) {
      return unlikePost(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result refresh(_Refresh value),
    @required Result likePost(_LikePost value),
    @required Result unlikePost(_UnLikePost value),
    @required Result savePost(_SavePost value),
    @required Result unSavePost(_UnSavePost value),
  }) {
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    return unlikePost(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result refresh(_Refresh value),
    Result likePost(_LikePost value),
    Result unlikePost(_UnLikePost value),
    Result savePost(_SavePost value),
    Result unSavePost(_UnSavePost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unlikePost != null) {
      return unlikePost(this);
    }
    return orElse();
  }
}

abstract class _UnLikePost implements UserProfileEvent {
  const factory _UnLikePost(String postId) = _$_UnLikePost;

  String get postId;
  _$UnLikePostCopyWith<_UnLikePost> get copyWith;
}

abstract class _$SavePostCopyWith<$Res> {
  factory _$SavePostCopyWith(_SavePost value, $Res Function(_SavePost) then) =
      __$SavePostCopyWithImpl<$Res>;
  $Res call({String postId});
}

class __$SavePostCopyWithImpl<$Res> extends _$UserProfileEventCopyWithImpl<$Res>
    implements _$SavePostCopyWith<$Res> {
  __$SavePostCopyWithImpl(_SavePost _value, $Res Function(_SavePost) _then)
      : super(_value, (v) => _then(v as _SavePost));

  @override
  _SavePost get _value => super._value as _SavePost;

  @override
  $Res call({
    Object postId = freezed,
  }) {
    return _then(_SavePost(
      postId == freezed ? _value.postId : postId as String,
    ));
  }
}

class _$_SavePost implements _SavePost {
  const _$_SavePost(this.postId) : assert(postId != null);

  @override
  final String postId;

  @override
  String toString() {
    return 'UserProfileEvent.savePost(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SavePost &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postId);

  @override
  _$SavePostCopyWith<_SavePost> get copyWith =>
      __$SavePostCopyWithImpl<_SavePost>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result refresh(),
    @required Result likePost(String postId),
    @required Result unlikePost(String postId),
    @required Result savePost(String postId),
    @required Result unSavePost(String postId),
  }) {
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    return savePost(postId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result refresh(),
    Result likePost(String postId),
    Result unlikePost(String postId),
    Result savePost(String postId),
    Result unSavePost(String postId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (savePost != null) {
      return savePost(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result refresh(_Refresh value),
    @required Result likePost(_LikePost value),
    @required Result unlikePost(_UnLikePost value),
    @required Result savePost(_SavePost value),
    @required Result unSavePost(_UnSavePost value),
  }) {
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    return savePost(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result refresh(_Refresh value),
    Result likePost(_LikePost value),
    Result unlikePost(_UnLikePost value),
    Result savePost(_SavePost value),
    Result unSavePost(_UnSavePost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (savePost != null) {
      return savePost(this);
    }
    return orElse();
  }
}

abstract class _SavePost implements UserProfileEvent {
  const factory _SavePost(String postId) = _$_SavePost;

  String get postId;
  _$SavePostCopyWith<_SavePost> get copyWith;
}

abstract class _$UnSavePostCopyWith<$Res> {
  factory _$UnSavePostCopyWith(
          _UnSavePost value, $Res Function(_UnSavePost) then) =
      __$UnSavePostCopyWithImpl<$Res>;
  $Res call({String postId});
}

class __$UnSavePostCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res>
    implements _$UnSavePostCopyWith<$Res> {
  __$UnSavePostCopyWithImpl(
      _UnSavePost _value, $Res Function(_UnSavePost) _then)
      : super(_value, (v) => _then(v as _UnSavePost));

  @override
  _UnSavePost get _value => super._value as _UnSavePost;

  @override
  $Res call({
    Object postId = freezed,
  }) {
    return _then(_UnSavePost(
      postId == freezed ? _value.postId : postId as String,
    ));
  }
}

class _$_UnSavePost implements _UnSavePost {
  const _$_UnSavePost(this.postId) : assert(postId != null);

  @override
  final String postId;

  @override
  String toString() {
    return 'UserProfileEvent.unSavePost(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnSavePost &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postId);

  @override
  _$UnSavePostCopyWith<_UnSavePost> get copyWith =>
      __$UnSavePostCopyWithImpl<_UnSavePost>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result refresh(),
    @required Result likePost(String postId),
    @required Result unlikePost(String postId),
    @required Result savePost(String postId),
    @required Result unSavePost(String postId),
  }) {
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    return unSavePost(postId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result refresh(),
    Result likePost(String postId),
    Result unlikePost(String postId),
    Result savePost(String postId),
    Result unSavePost(String postId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unSavePost != null) {
      return unSavePost(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result refresh(_Refresh value),
    @required Result likePost(_LikePost value),
    @required Result unlikePost(_UnLikePost value),
    @required Result savePost(_SavePost value),
    @required Result unSavePost(_UnSavePost value),
  }) {
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    return unSavePost(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result refresh(_Refresh value),
    Result likePost(_LikePost value),
    Result unlikePost(_UnLikePost value),
    Result savePost(_SavePost value),
    Result unSavePost(_UnSavePost value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unSavePost != null) {
      return unSavePost(this);
    }
    return orElse();
  }
}

abstract class _UnSavePost implements UserProfileEvent {
  const factory _UnSavePost(String postId) = _$_UnSavePost;

  String get postId;
  _$UnSavePostCopyWith<_UnSavePost> get copyWith;
}

class _$UserProfileStateTearOff {
  const _$UserProfileStateTearOff();

// ignore: unused_element
  _UserProfileState call(
      {List<String> likedVideosId, List<String> savedVideosId}) {
    return _UserProfileState(
      likedVideosId: likedVideosId,
      savedVideosId: savedVideosId,
    );
  }
}

// ignore: unused_element
const $UserProfileState = _$UserProfileStateTearOff();

mixin _$UserProfileState {
  List<String> get likedVideosId;
  List<String> get savedVideosId;

  $UserProfileStateCopyWith<UserProfileState> get copyWith;
}

abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res>;
  $Res call({List<String> likedVideosId, List<String> savedVideosId});
}

class _$UserProfileStateCopyWithImpl<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  final UserProfileState _value;
  // ignore: unused_field
  final $Res Function(UserProfileState) _then;

  @override
  $Res call({
    Object likedVideosId = freezed,
    Object savedVideosId = freezed,
  }) {
    return _then(_value.copyWith(
      likedVideosId: likedVideosId == freezed
          ? _value.likedVideosId
          : likedVideosId as List<String>,
      savedVideosId: savedVideosId == freezed
          ? _value.savedVideosId
          : savedVideosId as List<String>,
    ));
  }
}

abstract class _$UserProfileStateCopyWith<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  factory _$UserProfileStateCopyWith(
          _UserProfileState value, $Res Function(_UserProfileState) then) =
      __$UserProfileStateCopyWithImpl<$Res>;
  @override
  $Res call({List<String> likedVideosId, List<String> savedVideosId});
}

class __$UserProfileStateCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res>
    implements _$UserProfileStateCopyWith<$Res> {
  __$UserProfileStateCopyWithImpl(
      _UserProfileState _value, $Res Function(_UserProfileState) _then)
      : super(_value, (v) => _then(v as _UserProfileState));

  @override
  _UserProfileState get _value => super._value as _UserProfileState;

  @override
  $Res call({
    Object likedVideosId = freezed,
    Object savedVideosId = freezed,
  }) {
    return _then(_UserProfileState(
      likedVideosId: likedVideosId == freezed
          ? _value.likedVideosId
          : likedVideosId as List<String>,
      savedVideosId: savedVideosId == freezed
          ? _value.savedVideosId
          : savedVideosId as List<String>,
    ));
  }
}

class _$_UserProfileState extends _UserProfileState {
  const _$_UserProfileState({this.likedVideosId, this.savedVideosId})
      : super._();

  @override
  final List<String> likedVideosId;
  @override
  final List<String> savedVideosId;

  @override
  String toString() {
    return 'UserProfileState(likedVideosId: $likedVideosId, savedVideosId: $savedVideosId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserProfileState &&
            (identical(other.likedVideosId, likedVideosId) ||
                const DeepCollectionEquality()
                    .equals(other.likedVideosId, likedVideosId)) &&
            (identical(other.savedVideosId, savedVideosId) ||
                const DeepCollectionEquality()
                    .equals(other.savedVideosId, savedVideosId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(likedVideosId) ^
      const DeepCollectionEquality().hash(savedVideosId);

  @override
  _$UserProfileStateCopyWith<_UserProfileState> get copyWith =>
      __$UserProfileStateCopyWithImpl<_UserProfileState>(this, _$identity);
}

abstract class _UserProfileState extends UserProfileState {
  const _UserProfileState._() : super._();
  const factory _UserProfileState(
      {List<String> likedVideosId,
      List<String> savedVideosId}) = _$_UserProfileState;

  @override
  List<String> get likedVideosId;
  @override
  List<String> get savedVideosId;
  @override
  _$UserProfileStateCopyWith<_UserProfileState> get copyWith;
}
