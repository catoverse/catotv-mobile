// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'saved_posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SavedPostsEventTearOff {
  const _$SavedPostsEventTearOff();

// ignore: unused_element
  _Refresh refresh() {
    return const _Refresh();
  }

// ignore: unused_element
  _UpdateSelectedPage updateSelectedPage(SelectedPage selectedPage) {
    return _UpdateSelectedPage(
      selectedPage,
    );
  }
}

// ignore: unused_element
const $SavedPostsEvent = _$SavedPostsEventTearOff();

mixin _$SavedPostsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result refresh(),
    @required Result updateSelectedPage(SelectedPage selectedPage),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result refresh(),
    Result updateSelectedPage(SelectedPage selectedPage),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result refresh(_Refresh value),
    @required Result updateSelectedPage(_UpdateSelectedPage value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result refresh(_Refresh value),
    Result updateSelectedPage(_UpdateSelectedPage value),
    @required Result orElse(),
  });
}

abstract class $SavedPostsEventCopyWith<$Res> {
  factory $SavedPostsEventCopyWith(
          SavedPostsEvent value, $Res Function(SavedPostsEvent) then) =
      _$SavedPostsEventCopyWithImpl<$Res>;
}

class _$SavedPostsEventCopyWithImpl<$Res>
    implements $SavedPostsEventCopyWith<$Res> {
  _$SavedPostsEventCopyWithImpl(this._value, this._then);

  final SavedPostsEvent _value;
  // ignore: unused_field
  final $Res Function(SavedPostsEvent) _then;
}

abstract class _$RefreshCopyWith<$Res> {
  factory _$RefreshCopyWith(_Refresh value, $Res Function(_Refresh) then) =
      __$RefreshCopyWithImpl<$Res>;
}

class __$RefreshCopyWithImpl<$Res> extends _$SavedPostsEventCopyWithImpl<$Res>
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
    return 'SavedPostsEvent.refresh()';
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
    @required Result updateSelectedPage(SelectedPage selectedPage),
  }) {
    assert(refresh != null);
    assert(updateSelectedPage != null);
    return refresh();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result refresh(),
    Result updateSelectedPage(SelectedPage selectedPage),
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
    @required Result updateSelectedPage(_UpdateSelectedPage value),
  }) {
    assert(refresh != null);
    assert(updateSelectedPage != null);
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result refresh(_Refresh value),
    Result updateSelectedPage(_UpdateSelectedPage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements SavedPostsEvent {
  const factory _Refresh() = _$_Refresh;
}

abstract class _$UpdateSelectedPageCopyWith<$Res> {
  factory _$UpdateSelectedPageCopyWith(
          _UpdateSelectedPage value, $Res Function(_UpdateSelectedPage) then) =
      __$UpdateSelectedPageCopyWithImpl<$Res>;
  $Res call({SelectedPage selectedPage});
}

class __$UpdateSelectedPageCopyWithImpl<$Res>
    extends _$SavedPostsEventCopyWithImpl<$Res>
    implements _$UpdateSelectedPageCopyWith<$Res> {
  __$UpdateSelectedPageCopyWithImpl(
      _UpdateSelectedPage _value, $Res Function(_UpdateSelectedPage) _then)
      : super(_value, (v) => _then(v as _UpdateSelectedPage));

  @override
  _UpdateSelectedPage get _value => super._value as _UpdateSelectedPage;

  @override
  $Res call({
    Object selectedPage = freezed,
  }) {
    return _then(_UpdateSelectedPage(
      selectedPage == freezed
          ? _value.selectedPage
          : selectedPage as SelectedPage,
    ));
  }
}

class _$_UpdateSelectedPage implements _UpdateSelectedPage {
  const _$_UpdateSelectedPage(this.selectedPage) : assert(selectedPage != null);

  @override
  final SelectedPage selectedPage;

  @override
  String toString() {
    return 'SavedPostsEvent.updateSelectedPage(selectedPage: $selectedPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateSelectedPage &&
            (identical(other.selectedPage, selectedPage) ||
                const DeepCollectionEquality()
                    .equals(other.selectedPage, selectedPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(selectedPage);

  @override
  _$UpdateSelectedPageCopyWith<_UpdateSelectedPage> get copyWith =>
      __$UpdateSelectedPageCopyWithImpl<_UpdateSelectedPage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result refresh(),
    @required Result updateSelectedPage(SelectedPage selectedPage),
  }) {
    assert(refresh != null);
    assert(updateSelectedPage != null);
    return updateSelectedPage(selectedPage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result refresh(),
    Result updateSelectedPage(SelectedPage selectedPage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateSelectedPage != null) {
      return updateSelectedPage(selectedPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result refresh(_Refresh value),
    @required Result updateSelectedPage(_UpdateSelectedPage value),
  }) {
    assert(refresh != null);
    assert(updateSelectedPage != null);
    return updateSelectedPage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result refresh(_Refresh value),
    Result updateSelectedPage(_UpdateSelectedPage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateSelectedPage != null) {
      return updateSelectedPage(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedPage implements SavedPostsEvent {
  const factory _UpdateSelectedPage(SelectedPage selectedPage) =
      _$_UpdateSelectedPage;

  SelectedPage get selectedPage;
  _$UpdateSelectedPageCopyWith<_UpdateSelectedPage> get copyWith;
}

class _$SavedPostsStateTearOff {
  const _$SavedPostsStateTearOff();

// ignore: unused_element
  _SavedPostsState call(
      {List<Post> savedPosts,
      List<Post> likedPosts,
      SelectedPage selectedPage}) {
    return _SavedPostsState(
      savedPosts: savedPosts,
      likedPosts: likedPosts,
      selectedPage: selectedPage,
    );
  }
}

// ignore: unused_element
const $SavedPostsState = _$SavedPostsStateTearOff();

mixin _$SavedPostsState {
  List<Post> get savedPosts;
  List<Post> get likedPosts;
  SelectedPage get selectedPage;

  $SavedPostsStateCopyWith<SavedPostsState> get copyWith;
}

abstract class $SavedPostsStateCopyWith<$Res> {
  factory $SavedPostsStateCopyWith(
          SavedPostsState value, $Res Function(SavedPostsState) then) =
      _$SavedPostsStateCopyWithImpl<$Res>;
  $Res call(
      {List<Post> savedPosts,
      List<Post> likedPosts,
      SelectedPage selectedPage});
}

class _$SavedPostsStateCopyWithImpl<$Res>
    implements $SavedPostsStateCopyWith<$Res> {
  _$SavedPostsStateCopyWithImpl(this._value, this._then);

  final SavedPostsState _value;
  // ignore: unused_field
  final $Res Function(SavedPostsState) _then;

  @override
  $Res call({
    Object savedPosts = freezed,
    Object likedPosts = freezed,
    Object selectedPage = freezed,
  }) {
    return _then(_value.copyWith(
      savedPosts:
          savedPosts == freezed ? _value.savedPosts : savedPosts as List<Post>,
      likedPosts:
          likedPosts == freezed ? _value.likedPosts : likedPosts as List<Post>,
      selectedPage: selectedPage == freezed
          ? _value.selectedPage
          : selectedPage as SelectedPage,
    ));
  }
}

abstract class _$SavedPostsStateCopyWith<$Res>
    implements $SavedPostsStateCopyWith<$Res> {
  factory _$SavedPostsStateCopyWith(
          _SavedPostsState value, $Res Function(_SavedPostsState) then) =
      __$SavedPostsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Post> savedPosts,
      List<Post> likedPosts,
      SelectedPage selectedPage});
}

class __$SavedPostsStateCopyWithImpl<$Res>
    extends _$SavedPostsStateCopyWithImpl<$Res>
    implements _$SavedPostsStateCopyWith<$Res> {
  __$SavedPostsStateCopyWithImpl(
      _SavedPostsState _value, $Res Function(_SavedPostsState) _then)
      : super(_value, (v) => _then(v as _SavedPostsState));

  @override
  _SavedPostsState get _value => super._value as _SavedPostsState;

  @override
  $Res call({
    Object savedPosts = freezed,
    Object likedPosts = freezed,
    Object selectedPage = freezed,
  }) {
    return _then(_SavedPostsState(
      savedPosts:
          savedPosts == freezed ? _value.savedPosts : savedPosts as List<Post>,
      likedPosts:
          likedPosts == freezed ? _value.likedPosts : likedPosts as List<Post>,
      selectedPage: selectedPage == freezed
          ? _value.selectedPage
          : selectedPage as SelectedPage,
    ));
  }
}

class _$_SavedPostsState implements _SavedPostsState {
  const _$_SavedPostsState(
      {this.savedPosts, this.likedPosts, this.selectedPage});

  @override
  final List<Post> savedPosts;
  @override
  final List<Post> likedPosts;
  @override
  final SelectedPage selectedPage;

  @override
  String toString() {
    return 'SavedPostsState(savedPosts: $savedPosts, likedPosts: $likedPosts, selectedPage: $selectedPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SavedPostsState &&
            (identical(other.savedPosts, savedPosts) ||
                const DeepCollectionEquality()
                    .equals(other.savedPosts, savedPosts)) &&
            (identical(other.likedPosts, likedPosts) ||
                const DeepCollectionEquality()
                    .equals(other.likedPosts, likedPosts)) &&
            (identical(other.selectedPage, selectedPage) ||
                const DeepCollectionEquality()
                    .equals(other.selectedPage, selectedPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(savedPosts) ^
      const DeepCollectionEquality().hash(likedPosts) ^
      const DeepCollectionEquality().hash(selectedPage);

  @override
  _$SavedPostsStateCopyWith<_SavedPostsState> get copyWith =>
      __$SavedPostsStateCopyWithImpl<_SavedPostsState>(this, _$identity);
}

abstract class _SavedPostsState implements SavedPostsState {
  const factory _SavedPostsState(
      {List<Post> savedPosts,
      List<Post> likedPosts,
      SelectedPage selectedPage}) = _$_SavedPostsState;

  @override
  List<Post> get savedPosts;
  @override
  List<Post> get likedPosts;
  @override
  SelectedPage get selectedPage;
  @override
  _$SavedPostsStateCopyWith<_SavedPostsState> get copyWith;
}
