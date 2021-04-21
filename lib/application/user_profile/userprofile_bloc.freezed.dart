// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'userprofile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserProfileEventTearOff {
  const _$UserProfileEventTearOff();

// ignore: unused_element
  _UserProfile get(String userId) {
    return _UserProfile(
      userId,
    );
  }

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

// ignore: unused_element
  _UpdateTopicSelection updateTopicSelection(
      String name, String userId, List<String> selectedTopics) {
    return _UpdateTopicSelection(
      name,
      userId,
      selectedTopics,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserProfileEvent = _$UserProfileEventTearOff();

/// @nodoc
mixin _$UserProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult get(String userId),
    @required TResult refresh(),
    @required TResult likePost(String postId),
    @required TResult unlikePost(String postId),
    @required TResult savePost(String postId),
    @required TResult unSavePost(String postId),
    @required
        TResult updateTopicSelection(
            String name, String userId, List<String> selectedTopics),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(String userId),
    TResult refresh(),
    TResult likePost(String postId),
    TResult unlikePost(String postId),
    TResult savePost(String postId),
    TResult unSavePost(String postId),
    TResult updateTopicSelection(
        String name, String userId, List<String> selectedTopics),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_UserProfile value),
    @required TResult refresh(_Refresh value),
    @required TResult likePost(_LikePost value),
    @required TResult unlikePost(_UnLikePost value),
    @required TResult savePost(_SavePost value),
    @required TResult unSavePost(_UnSavePost value),
    @required TResult updateTopicSelection(_UpdateTopicSelection value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_UserProfile value),
    TResult refresh(_Refresh value),
    TResult likePost(_LikePost value),
    TResult unlikePost(_UnLikePost value),
    TResult savePost(_SavePost value),
    TResult unSavePost(_UnSavePost value),
    TResult updateTopicSelection(_UpdateTopicSelection value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserProfileEventCopyWith<$Res> {
  factory $UserProfileEventCopyWith(
          UserProfileEvent value, $Res Function(UserProfileEvent) then) =
      _$UserProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileEventCopyWithImpl<$Res>
    implements $UserProfileEventCopyWith<$Res> {
  _$UserProfileEventCopyWithImpl(this._value, this._then);

  final UserProfileEvent _value;
  // ignore: unused_field
  final $Res Function(UserProfileEvent) _then;
}

/// @nodoc
abstract class _$UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(
          _UserProfile value, $Res Function(_UserProfile) then) =
      __$UserProfileCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$UserProfileCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(
      _UserProfile _value, $Res Function(_UserProfile) _then)
      : super(_value, (v) => _then(v as _UserProfile));

  @override
  _UserProfile get _value => super._value as _UserProfile;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_UserProfile(
      userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
class _$_UserProfile with DiagnosticableTreeMixin implements _UserProfile {
  const _$_UserProfile(this.userId) : assert(userId != null);

  @override
  final String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProfileEvent.get(userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserProfileEvent.get'))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserProfile &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult get(String userId),
    @required TResult refresh(),
    @required TResult likePost(String postId),
    @required TResult unlikePost(String postId),
    @required TResult savePost(String postId),
    @required TResult unSavePost(String postId),
    @required
        TResult updateTopicSelection(
            String name, String userId, List<String> selectedTopics),
  }) {
    assert(get != null);
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    assert(updateTopicSelection != null);
    return get(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(String userId),
    TResult refresh(),
    TResult likePost(String postId),
    TResult unlikePost(String postId),
    TResult savePost(String postId),
    TResult unSavePost(String postId),
    TResult updateTopicSelection(
        String name, String userId, List<String> selectedTopics),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (get != null) {
      return get(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_UserProfile value),
    @required TResult refresh(_Refresh value),
    @required TResult likePost(_LikePost value),
    @required TResult unlikePost(_UnLikePost value),
    @required TResult savePost(_SavePost value),
    @required TResult unSavePost(_UnSavePost value),
    @required TResult updateTopicSelection(_UpdateTopicSelection value),
  }) {
    assert(get != null);
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    assert(updateTopicSelection != null);
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_UserProfile value),
    TResult refresh(_Refresh value),
    TResult likePost(_LikePost value),
    TResult unlikePost(_UnLikePost value),
    TResult savePost(_SavePost value),
    TResult unSavePost(_UnSavePost value),
    TResult updateTopicSelection(_UpdateTopicSelection value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _UserProfile implements UserProfileEvent {
  const factory _UserProfile(String userId) = _$_UserProfile;

  String get userId;
  @JsonKey(ignore: true)
  _$UserProfileCopyWith<_UserProfile> get copyWith;
}

/// @nodoc
abstract class _$RefreshCopyWith<$Res> {
  factory _$RefreshCopyWith(_Refresh value, $Res Function(_Refresh) then) =
      __$RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$RefreshCopyWithImpl<$Res> extends _$UserProfileEventCopyWithImpl<$Res>
    implements _$RefreshCopyWith<$Res> {
  __$RefreshCopyWithImpl(_Refresh _value, $Res Function(_Refresh) _then)
      : super(_value, (v) => _then(v as _Refresh));

  @override
  _Refresh get _value => super._value as _Refresh;
}

/// @nodoc
class _$_Refresh with DiagnosticableTreeMixin implements _Refresh {
  const _$_Refresh();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProfileEvent.refresh()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'UserProfileEvent.refresh'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult get(String userId),
    @required TResult refresh(),
    @required TResult likePost(String postId),
    @required TResult unlikePost(String postId),
    @required TResult savePost(String postId),
    @required TResult unSavePost(String postId),
    @required
        TResult updateTopicSelection(
            String name, String userId, List<String> selectedTopics),
  }) {
    assert(get != null);
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    assert(updateTopicSelection != null);
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(String userId),
    TResult refresh(),
    TResult likePost(String postId),
    TResult unlikePost(String postId),
    TResult savePost(String postId),
    TResult unSavePost(String postId),
    TResult updateTopicSelection(
        String name, String userId, List<String> selectedTopics),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_UserProfile value),
    @required TResult refresh(_Refresh value),
    @required TResult likePost(_LikePost value),
    @required TResult unlikePost(_UnLikePost value),
    @required TResult savePost(_SavePost value),
    @required TResult unSavePost(_UnSavePost value),
    @required TResult updateTopicSelection(_UpdateTopicSelection value),
  }) {
    assert(get != null);
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    assert(updateTopicSelection != null);
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_UserProfile value),
    TResult refresh(_Refresh value),
    TResult likePost(_LikePost value),
    TResult unlikePost(_UnLikePost value),
    TResult savePost(_SavePost value),
    TResult unSavePost(_UnSavePost value),
    TResult updateTopicSelection(_UpdateTopicSelection value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$LikePostCopyWith<$Res> {
  factory _$LikePostCopyWith(_LikePost value, $Res Function(_LikePost) then) =
      __$LikePostCopyWithImpl<$Res>;
  $Res call({String postId});
}

/// @nodoc
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

/// @nodoc
class _$_LikePost with DiagnosticableTreeMixin implements _LikePost {
  const _$_LikePost(this.postId) : assert(postId != null);

  @override
  final String postId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProfileEvent.likePost(postId: $postId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserProfileEvent.likePost'))
      ..add(DiagnosticsProperty('postId', postId));
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

  @JsonKey(ignore: true)
  @override
  _$LikePostCopyWith<_LikePost> get copyWith =>
      __$LikePostCopyWithImpl<_LikePost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult get(String userId),
    @required TResult refresh(),
    @required TResult likePost(String postId),
    @required TResult unlikePost(String postId),
    @required TResult savePost(String postId),
    @required TResult unSavePost(String postId),
    @required
        TResult updateTopicSelection(
            String name, String userId, List<String> selectedTopics),
  }) {
    assert(get != null);
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    assert(updateTopicSelection != null);
    return likePost(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(String userId),
    TResult refresh(),
    TResult likePost(String postId),
    TResult unlikePost(String postId),
    TResult savePost(String postId),
    TResult unSavePost(String postId),
    TResult updateTopicSelection(
        String name, String userId, List<String> selectedTopics),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likePost != null) {
      return likePost(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_UserProfile value),
    @required TResult refresh(_Refresh value),
    @required TResult likePost(_LikePost value),
    @required TResult unlikePost(_UnLikePost value),
    @required TResult savePost(_SavePost value),
    @required TResult unSavePost(_UnSavePost value),
    @required TResult updateTopicSelection(_UpdateTopicSelection value),
  }) {
    assert(get != null);
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    assert(updateTopicSelection != null);
    return likePost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_UserProfile value),
    TResult refresh(_Refresh value),
    TResult likePost(_LikePost value),
    TResult unlikePost(_UnLikePost value),
    TResult savePost(_SavePost value),
    TResult unSavePost(_UnSavePost value),
    TResult updateTopicSelection(_UpdateTopicSelection value),
    @required TResult orElse(),
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
  @JsonKey(ignore: true)
  _$LikePostCopyWith<_LikePost> get copyWith;
}

/// @nodoc
abstract class _$UnLikePostCopyWith<$Res> {
  factory _$UnLikePostCopyWith(
          _UnLikePost value, $Res Function(_UnLikePost) then) =
      __$UnLikePostCopyWithImpl<$Res>;
  $Res call({String postId});
}

/// @nodoc
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

/// @nodoc
class _$_UnLikePost with DiagnosticableTreeMixin implements _UnLikePost {
  const _$_UnLikePost(this.postId) : assert(postId != null);

  @override
  final String postId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProfileEvent.unlikePost(postId: $postId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserProfileEvent.unlikePost'))
      ..add(DiagnosticsProperty('postId', postId));
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

  @JsonKey(ignore: true)
  @override
  _$UnLikePostCopyWith<_UnLikePost> get copyWith =>
      __$UnLikePostCopyWithImpl<_UnLikePost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult get(String userId),
    @required TResult refresh(),
    @required TResult likePost(String postId),
    @required TResult unlikePost(String postId),
    @required TResult savePost(String postId),
    @required TResult unSavePost(String postId),
    @required
        TResult updateTopicSelection(
            String name, String userId, List<String> selectedTopics),
  }) {
    assert(get != null);
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    assert(updateTopicSelection != null);
    return unlikePost(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(String userId),
    TResult refresh(),
    TResult likePost(String postId),
    TResult unlikePost(String postId),
    TResult savePost(String postId),
    TResult unSavePost(String postId),
    TResult updateTopicSelection(
        String name, String userId, List<String> selectedTopics),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unlikePost != null) {
      return unlikePost(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_UserProfile value),
    @required TResult refresh(_Refresh value),
    @required TResult likePost(_LikePost value),
    @required TResult unlikePost(_UnLikePost value),
    @required TResult savePost(_SavePost value),
    @required TResult unSavePost(_UnSavePost value),
    @required TResult updateTopicSelection(_UpdateTopicSelection value),
  }) {
    assert(get != null);
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    assert(updateTopicSelection != null);
    return unlikePost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_UserProfile value),
    TResult refresh(_Refresh value),
    TResult likePost(_LikePost value),
    TResult unlikePost(_UnLikePost value),
    TResult savePost(_SavePost value),
    TResult unSavePost(_UnSavePost value),
    TResult updateTopicSelection(_UpdateTopicSelection value),
    @required TResult orElse(),
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
  @JsonKey(ignore: true)
  _$UnLikePostCopyWith<_UnLikePost> get copyWith;
}

/// @nodoc
abstract class _$SavePostCopyWith<$Res> {
  factory _$SavePostCopyWith(_SavePost value, $Res Function(_SavePost) then) =
      __$SavePostCopyWithImpl<$Res>;
  $Res call({String postId});
}

/// @nodoc
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

/// @nodoc
class _$_SavePost with DiagnosticableTreeMixin implements _SavePost {
  const _$_SavePost(this.postId) : assert(postId != null);

  @override
  final String postId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProfileEvent.savePost(postId: $postId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserProfileEvent.savePost'))
      ..add(DiagnosticsProperty('postId', postId));
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

  @JsonKey(ignore: true)
  @override
  _$SavePostCopyWith<_SavePost> get copyWith =>
      __$SavePostCopyWithImpl<_SavePost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult get(String userId),
    @required TResult refresh(),
    @required TResult likePost(String postId),
    @required TResult unlikePost(String postId),
    @required TResult savePost(String postId),
    @required TResult unSavePost(String postId),
    @required
        TResult updateTopicSelection(
            String name, String userId, List<String> selectedTopics),
  }) {
    assert(get != null);
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    assert(updateTopicSelection != null);
    return savePost(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(String userId),
    TResult refresh(),
    TResult likePost(String postId),
    TResult unlikePost(String postId),
    TResult savePost(String postId),
    TResult unSavePost(String postId),
    TResult updateTopicSelection(
        String name, String userId, List<String> selectedTopics),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (savePost != null) {
      return savePost(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_UserProfile value),
    @required TResult refresh(_Refresh value),
    @required TResult likePost(_LikePost value),
    @required TResult unlikePost(_UnLikePost value),
    @required TResult savePost(_SavePost value),
    @required TResult unSavePost(_UnSavePost value),
    @required TResult updateTopicSelection(_UpdateTopicSelection value),
  }) {
    assert(get != null);
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    assert(updateTopicSelection != null);
    return savePost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_UserProfile value),
    TResult refresh(_Refresh value),
    TResult likePost(_LikePost value),
    TResult unlikePost(_UnLikePost value),
    TResult savePost(_SavePost value),
    TResult unSavePost(_UnSavePost value),
    TResult updateTopicSelection(_UpdateTopicSelection value),
    @required TResult orElse(),
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
  @JsonKey(ignore: true)
  _$SavePostCopyWith<_SavePost> get copyWith;
}

/// @nodoc
abstract class _$UnSavePostCopyWith<$Res> {
  factory _$UnSavePostCopyWith(
          _UnSavePost value, $Res Function(_UnSavePost) then) =
      __$UnSavePostCopyWithImpl<$Res>;
  $Res call({String postId});
}

/// @nodoc
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

/// @nodoc
class _$_UnSavePost with DiagnosticableTreeMixin implements _UnSavePost {
  const _$_UnSavePost(this.postId) : assert(postId != null);

  @override
  final String postId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProfileEvent.unSavePost(postId: $postId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserProfileEvent.unSavePost'))
      ..add(DiagnosticsProperty('postId', postId));
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

  @JsonKey(ignore: true)
  @override
  _$UnSavePostCopyWith<_UnSavePost> get copyWith =>
      __$UnSavePostCopyWithImpl<_UnSavePost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult get(String userId),
    @required TResult refresh(),
    @required TResult likePost(String postId),
    @required TResult unlikePost(String postId),
    @required TResult savePost(String postId),
    @required TResult unSavePost(String postId),
    @required
        TResult updateTopicSelection(
            String name, String userId, List<String> selectedTopics),
  }) {
    assert(get != null);
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    assert(updateTopicSelection != null);
    return unSavePost(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(String userId),
    TResult refresh(),
    TResult likePost(String postId),
    TResult unlikePost(String postId),
    TResult savePost(String postId),
    TResult unSavePost(String postId),
    TResult updateTopicSelection(
        String name, String userId, List<String> selectedTopics),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unSavePost != null) {
      return unSavePost(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_UserProfile value),
    @required TResult refresh(_Refresh value),
    @required TResult likePost(_LikePost value),
    @required TResult unlikePost(_UnLikePost value),
    @required TResult savePost(_SavePost value),
    @required TResult unSavePost(_UnSavePost value),
    @required TResult updateTopicSelection(_UpdateTopicSelection value),
  }) {
    assert(get != null);
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    assert(updateTopicSelection != null);
    return unSavePost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_UserProfile value),
    TResult refresh(_Refresh value),
    TResult likePost(_LikePost value),
    TResult unlikePost(_UnLikePost value),
    TResult savePost(_SavePost value),
    TResult unSavePost(_UnSavePost value),
    TResult updateTopicSelection(_UpdateTopicSelection value),
    @required TResult orElse(),
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
  @JsonKey(ignore: true)
  _$UnSavePostCopyWith<_UnSavePost> get copyWith;
}

/// @nodoc
abstract class _$UpdateTopicSelectionCopyWith<$Res> {
  factory _$UpdateTopicSelectionCopyWith(_UpdateTopicSelection value,
          $Res Function(_UpdateTopicSelection) then) =
      __$UpdateTopicSelectionCopyWithImpl<$Res>;
  $Res call({String name, String userId, List<String> selectedTopics});
}

/// @nodoc
class __$UpdateTopicSelectionCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res>
    implements _$UpdateTopicSelectionCopyWith<$Res> {
  __$UpdateTopicSelectionCopyWithImpl(
      _UpdateTopicSelection _value, $Res Function(_UpdateTopicSelection) _then)
      : super(_value, (v) => _then(v as _UpdateTopicSelection));

  @override
  _UpdateTopicSelection get _value => super._value as _UpdateTopicSelection;

  @override
  $Res call({
    Object name = freezed,
    Object userId = freezed,
    Object selectedTopics = freezed,
  }) {
    return _then(_UpdateTopicSelection(
      name == freezed ? _value.name : name as String,
      userId == freezed ? _value.userId : userId as String,
      selectedTopics == freezed
          ? _value.selectedTopics
          : selectedTopics as List<String>,
    ));
  }
}

/// @nodoc
class _$_UpdateTopicSelection
    with DiagnosticableTreeMixin
    implements _UpdateTopicSelection {
  const _$_UpdateTopicSelection(this.name, this.userId, this.selectedTopics)
      : assert(name != null),
        assert(userId != null),
        assert(selectedTopics != null);

  @override
  final String name;
  @override
  final String userId;
  @override
  final List<String> selectedTopics;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProfileEvent.updateTopicSelection(name: $name, userId: $userId, selectedTopics: $selectedTopics)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'UserProfileEvent.updateTopicSelection'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('selectedTopics', selectedTopics));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateTopicSelection &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.selectedTopics, selectedTopics) ||
                const DeepCollectionEquality()
                    .equals(other.selectedTopics, selectedTopics)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(selectedTopics);

  @JsonKey(ignore: true)
  @override
  _$UpdateTopicSelectionCopyWith<_UpdateTopicSelection> get copyWith =>
      __$UpdateTopicSelectionCopyWithImpl<_UpdateTopicSelection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult get(String userId),
    @required TResult refresh(),
    @required TResult likePost(String postId),
    @required TResult unlikePost(String postId),
    @required TResult savePost(String postId),
    @required TResult unSavePost(String postId),
    @required
        TResult updateTopicSelection(
            String name, String userId, List<String> selectedTopics),
  }) {
    assert(get != null);
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    assert(updateTopicSelection != null);
    return updateTopicSelection(name, userId, selectedTopics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult get(String userId),
    TResult refresh(),
    TResult likePost(String postId),
    TResult unlikePost(String postId),
    TResult savePost(String postId),
    TResult unSavePost(String postId),
    TResult updateTopicSelection(
        String name, String userId, List<String> selectedTopics),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateTopicSelection != null) {
      return updateTopicSelection(name, userId, selectedTopics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult get(_UserProfile value),
    @required TResult refresh(_Refresh value),
    @required TResult likePost(_LikePost value),
    @required TResult unlikePost(_UnLikePost value),
    @required TResult savePost(_SavePost value),
    @required TResult unSavePost(_UnSavePost value),
    @required TResult updateTopicSelection(_UpdateTopicSelection value),
  }) {
    assert(get != null);
    assert(refresh != null);
    assert(likePost != null);
    assert(unlikePost != null);
    assert(savePost != null);
    assert(unSavePost != null);
    assert(updateTopicSelection != null);
    return updateTopicSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult get(_UserProfile value),
    TResult refresh(_Refresh value),
    TResult likePost(_LikePost value),
    TResult unlikePost(_UnLikePost value),
    TResult savePost(_SavePost value),
    TResult unSavePost(_UnSavePost value),
    TResult updateTopicSelection(_UpdateTopicSelection value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateTopicSelection != null) {
      return updateTopicSelection(this);
    }
    return orElse();
  }
}

abstract class _UpdateTopicSelection implements UserProfileEvent {
  const factory _UpdateTopicSelection(
          String name, String userId, List<String> selectedTopics) =
      _$_UpdateTopicSelection;

  String get name;
  String get userId;
  List<String> get selectedTopics;
  @JsonKey(ignore: true)
  _$UpdateTopicSelectionCopyWith<_UpdateTopicSelection> get copyWith;
}

/// @nodoc
class _$UserProfileStateTearOff {
  const _$UserProfileStateTearOff();

// ignore: unused_element
  _UserProfileState call(
      {UserProfile profile,
      List<String> likedVideosId,
      List<String> savedVideosId,
      Failure failure}) {
    return _UserProfileState(
      profile: profile,
      likedVideosId: likedVideosId,
      savedVideosId: savedVideosId,
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserProfileState = _$UserProfileStateTearOff();

/// @nodoc
mixin _$UserProfileState {
  UserProfile get profile;
  List<String> get likedVideosId;
  List<String> get savedVideosId;
  Failure get failure;

  @JsonKey(ignore: true)
  $UserProfileStateCopyWith<UserProfileState> get copyWith;
}

/// @nodoc
abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res>;
  $Res call(
      {UserProfile profile,
      List<String> likedVideosId,
      List<String> savedVideosId,
      Failure failure});

  $UserProfileCopyWith<$Res> get profile;
  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  final UserProfileState _value;
  // ignore: unused_field
  final $Res Function(UserProfileState) _then;

  @override
  $Res call({
    Object profile = freezed,
    Object likedVideosId = freezed,
    Object savedVideosId = freezed,
    Object failure = freezed,
  }) {
    return _then(_value.copyWith(
      profile: profile == freezed ? _value.profile : profile as UserProfile,
      likedVideosId: likedVideosId == freezed
          ? _value.likedVideosId
          : likedVideosId as List<String>,
      savedVideosId: savedVideosId == freezed
          ? _value.savedVideosId
          : savedVideosId as List<String>,
      failure: failure == freezed ? _value.failure : failure as Failure,
    ));
  }

  @override
  $UserProfileCopyWith<$Res> get profile {
    if (_value.profile == null) {
      return null;
    }
    return $UserProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
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
abstract class _$UserProfileStateCopyWith<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  factory _$UserProfileStateCopyWith(
          _UserProfileState value, $Res Function(_UserProfileState) then) =
      __$UserProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserProfile profile,
      List<String> likedVideosId,
      List<String> savedVideosId,
      Failure failure});

  @override
  $UserProfileCopyWith<$Res> get profile;
  @override
  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
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
    Object profile = freezed,
    Object likedVideosId = freezed,
    Object savedVideosId = freezed,
    Object failure = freezed,
  }) {
    return _then(_UserProfileState(
      profile: profile == freezed ? _value.profile : profile as UserProfile,
      likedVideosId: likedVideosId == freezed
          ? _value.likedVideosId
          : likedVideosId as List<String>,
      savedVideosId: savedVideosId == freezed
          ? _value.savedVideosId
          : savedVideosId as List<String>,
      failure: failure == freezed ? _value.failure : failure as Failure,
    ));
  }
}

/// @nodoc
class _$_UserProfileState extends _UserProfileState
    with DiagnosticableTreeMixin {
  const _$_UserProfileState(
      {this.profile, this.likedVideosId, this.savedVideosId, this.failure})
      : super._();

  @override
  final UserProfile profile;
  @override
  final List<String> likedVideosId;
  @override
  final List<String> savedVideosId;
  @override
  final Failure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProfileState(profile: $profile, likedVideosId: $likedVideosId, savedVideosId: $savedVideosId, failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserProfileState'))
      ..add(DiagnosticsProperty('profile', profile))
      ..add(DiagnosticsProperty('likedVideosId', likedVideosId))
      ..add(DiagnosticsProperty('savedVideosId', savedVideosId))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserProfileState &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.likedVideosId, likedVideosId) ||
                const DeepCollectionEquality()
                    .equals(other.likedVideosId, likedVideosId)) &&
            (identical(other.savedVideosId, savedVideosId) ||
                const DeepCollectionEquality()
                    .equals(other.savedVideosId, savedVideosId)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(likedVideosId) ^
      const DeepCollectionEquality().hash(savedVideosId) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$UserProfileStateCopyWith<_UserProfileState> get copyWith =>
      __$UserProfileStateCopyWithImpl<_UserProfileState>(this, _$identity);
}

abstract class _UserProfileState extends UserProfileState {
  const _UserProfileState._() : super._();
  const factory _UserProfileState(
      {UserProfile profile,
      List<String> likedVideosId,
      List<String> savedVideosId,
      Failure failure}) = _$_UserProfileState;

  @override
  UserProfile get profile;
  @override
  List<String> get likedVideosId;
  @override
  List<String> get savedVideosId;
  @override
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$UserProfileStateCopyWith<_UserProfileState> get copyWith;
}
