// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserProfileTearOff {
  const _$UserProfileTearOff();

// ignore: unused_element
  _UserProfile call(
      {@required String name,
      @required int totalWatchTime,
      @required int videoCount,
      @required String userId,
      @required String id,
      @required String watchHistory,
      @required List<String> selectedTopics,
      @required Map<String, int> videoWatched,
      @required Map<String, int> lastFiveCount}) {
    return _UserProfile(
      name: name,
      totalWatchTime: totalWatchTime,
      videoCount: videoCount,
      userId: userId,
      id: id,
      watchHistory: watchHistory,
      selectedTopics: selectedTopics,
      videoWatched: videoWatched,
      lastFiveCount: lastFiveCount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserProfile = _$UserProfileTearOff();

/// @nodoc
mixin _$UserProfile {
  String get name;
  int get totalWatchTime;
  int get videoCount;
  String get userId;
  String get id;
  String get watchHistory;
  List<String> get selectedTopics;
  Map<String, int> get videoWatched;
  Map<String, int> get lastFiveCount;

  @JsonKey(ignore: true)
  $UserProfileCopyWith<UserProfile> get copyWith;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res>;
  $Res call(
      {String name,
      int totalWatchTime,
      int videoCount,
      String userId,
      String id,
      String watchHistory,
      List<String> selectedTopics,
      Map<String, int> videoWatched,
      Map<String, int> lastFiveCount});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res> implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  final UserProfile _value;
  // ignore: unused_field
  final $Res Function(UserProfile) _then;

  @override
  $Res call({
    Object name = freezed,
    Object totalWatchTime = freezed,
    Object videoCount = freezed,
    Object userId = freezed,
    Object id = freezed,
    Object watchHistory = freezed,
    Object selectedTopics = freezed,
    Object videoWatched = freezed,
    Object lastFiveCount = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      totalWatchTime: totalWatchTime == freezed
          ? _value.totalWatchTime
          : totalWatchTime as int,
      videoCount: videoCount == freezed ? _value.videoCount : videoCount as int,
      userId: userId == freezed ? _value.userId : userId as String,
      id: id == freezed ? _value.id : id as String,
      watchHistory: watchHistory == freezed
          ? _value.watchHistory
          : watchHistory as String,
      selectedTopics: selectedTopics == freezed
          ? _value.selectedTopics
          : selectedTopics as List<String>,
      videoWatched: videoWatched == freezed
          ? _value.videoWatched
          : videoWatched as Map<String, int>,
      lastFiveCount: lastFiveCount == freezed
          ? _value.lastFiveCount
          : lastFiveCount as Map<String, int>,
    ));
  }
}

/// @nodoc
abstract class _$UserProfileCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(
          _UserProfile value, $Res Function(_UserProfile) then) =
      __$UserProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      int totalWatchTime,
      int videoCount,
      String userId,
      String id,
      String watchHistory,
      List<String> selectedTopics,
      Map<String, int> videoWatched,
      Map<String, int> lastFiveCount});
}

/// @nodoc
class __$UserProfileCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(
      _UserProfile _value, $Res Function(_UserProfile) _then)
      : super(_value, (v) => _then(v as _UserProfile));

  @override
  _UserProfile get _value => super._value as _UserProfile;

  @override
  $Res call({
    Object name = freezed,
    Object totalWatchTime = freezed,
    Object videoCount = freezed,
    Object userId = freezed,
    Object id = freezed,
    Object watchHistory = freezed,
    Object selectedTopics = freezed,
    Object videoWatched = freezed,
    Object lastFiveCount = freezed,
  }) {
    return _then(_UserProfile(
      name: name == freezed ? _value.name : name as String,
      totalWatchTime: totalWatchTime == freezed
          ? _value.totalWatchTime
          : totalWatchTime as int,
      videoCount: videoCount == freezed ? _value.videoCount : videoCount as int,
      userId: userId == freezed ? _value.userId : userId as String,
      id: id == freezed ? _value.id : id as String,
      watchHistory: watchHistory == freezed
          ? _value.watchHistory
          : watchHistory as String,
      selectedTopics: selectedTopics == freezed
          ? _value.selectedTopics
          : selectedTopics as List<String>,
      videoWatched: videoWatched == freezed
          ? _value.videoWatched
          : videoWatched as Map<String, int>,
      lastFiveCount: lastFiveCount == freezed
          ? _value.lastFiveCount
          : lastFiveCount as Map<String, int>,
    ));
  }
}

/// @nodoc
class _$_UserProfile with DiagnosticableTreeMixin implements _UserProfile {
  const _$_UserProfile(
      {@required this.name,
      @required this.totalWatchTime,
      @required this.videoCount,
      @required this.userId,
      @required this.id,
      @required this.watchHistory,
      @required this.selectedTopics,
      @required this.videoWatched,
      @required this.lastFiveCount})
      : assert(name != null),
        assert(totalWatchTime != null),
        assert(videoCount != null),
        assert(userId != null),
        assert(id != null),
        assert(watchHistory != null),
        assert(selectedTopics != null),
        assert(videoWatched != null),
        assert(lastFiveCount != null);

  @override
  final String name;
  @override
  final int totalWatchTime;
  @override
  final int videoCount;
  @override
  final String userId;
  @override
  final String id;
  @override
  final String watchHistory;
  @override
  final List<String> selectedTopics;
  @override
  final Map<String, int> videoWatched;
  @override
  final Map<String, int> lastFiveCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProfile(name: $name, totalWatchTime: $totalWatchTime, videoCount: $videoCount, userId: $userId, id: $id, watchHistory: $watchHistory, selectedTopics: $selectedTopics, videoWatched: $videoWatched, lastFiveCount: $lastFiveCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserProfile'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('totalWatchTime', totalWatchTime))
      ..add(DiagnosticsProperty('videoCount', videoCount))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('watchHistory', watchHistory))
      ..add(DiagnosticsProperty('selectedTopics', selectedTopics))
      ..add(DiagnosticsProperty('videoWatched', videoWatched))
      ..add(DiagnosticsProperty('lastFiveCount', lastFiveCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserProfile &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.totalWatchTime, totalWatchTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalWatchTime, totalWatchTime)) &&
            (identical(other.videoCount, videoCount) ||
                const DeepCollectionEquality()
                    .equals(other.videoCount, videoCount)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.watchHistory, watchHistory) ||
                const DeepCollectionEquality()
                    .equals(other.watchHistory, watchHistory)) &&
            (identical(other.selectedTopics, selectedTopics) ||
                const DeepCollectionEquality()
                    .equals(other.selectedTopics, selectedTopics)) &&
            (identical(other.videoWatched, videoWatched) ||
                const DeepCollectionEquality()
                    .equals(other.videoWatched, videoWatched)) &&
            (identical(other.lastFiveCount, lastFiveCount) ||
                const DeepCollectionEquality()
                    .equals(other.lastFiveCount, lastFiveCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(totalWatchTime) ^
      const DeepCollectionEquality().hash(videoCount) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(watchHistory) ^
      const DeepCollectionEquality().hash(selectedTopics) ^
      const DeepCollectionEquality().hash(videoWatched) ^
      const DeepCollectionEquality().hash(lastFiveCount);

  @JsonKey(ignore: true)
  @override
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile(
      {@required String name,
      @required int totalWatchTime,
      @required int videoCount,
      @required String userId,
      @required String id,
      @required String watchHistory,
      @required List<String> selectedTopics,
      @required Map<String, int> videoWatched,
      @required Map<String, int> lastFiveCount}) = _$_UserProfile;

  @override
  String get name;
  @override
  int get totalWatchTime;
  @override
  int get videoCount;
  @override
  String get userId;
  @override
  String get id;
  @override
  String get watchHistory;
  @override
  List<String> get selectedTopics;
  @override
  Map<String, int> get videoWatched;
  @override
  Map<String, int> get lastFiveCount;
  @override
  @JsonKey(ignore: true)
  _$UserProfileCopyWith<_UserProfile> get copyWith;
}
