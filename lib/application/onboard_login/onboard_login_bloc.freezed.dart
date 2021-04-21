// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'onboard_login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$OnboardLoginEventTearOff {
  const _$OnboardLoginEventTearOff();

// ignore: unused_element
  _OnboardLoginWithGoogle loginWithGoogle() {
    return const _OnboardLoginWithGoogle();
  }

// ignore: unused_element
  _OnboardLoginWithGoogleSuccess loginWithGoogleSuccess() {
    return const _OnboardLoginWithGoogleSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $OnboardLoginEvent = _$OnboardLoginEventTearOff();

/// @nodoc
mixin _$OnboardLoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loginWithGoogle(),
    @required TResult loginWithGoogleSuccess(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loginWithGoogle(),
    TResult loginWithGoogleSuccess(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loginWithGoogle(_OnboardLoginWithGoogle value),
    @required
        TResult loginWithGoogleSuccess(_OnboardLoginWithGoogleSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loginWithGoogle(_OnboardLoginWithGoogle value),
    TResult loginWithGoogleSuccess(_OnboardLoginWithGoogleSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $OnboardLoginEventCopyWith<$Res> {
  factory $OnboardLoginEventCopyWith(
          OnboardLoginEvent value, $Res Function(OnboardLoginEvent) then) =
      _$OnboardLoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardLoginEventCopyWithImpl<$Res>
    implements $OnboardLoginEventCopyWith<$Res> {
  _$OnboardLoginEventCopyWithImpl(this._value, this._then);

  final OnboardLoginEvent _value;
  // ignore: unused_field
  final $Res Function(OnboardLoginEvent) _then;
}

/// @nodoc
abstract class _$OnboardLoginWithGoogleCopyWith<$Res> {
  factory _$OnboardLoginWithGoogleCopyWith(_OnboardLoginWithGoogle value,
          $Res Function(_OnboardLoginWithGoogle) then) =
      __$OnboardLoginWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnboardLoginWithGoogleCopyWithImpl<$Res>
    extends _$OnboardLoginEventCopyWithImpl<$Res>
    implements _$OnboardLoginWithGoogleCopyWith<$Res> {
  __$OnboardLoginWithGoogleCopyWithImpl(_OnboardLoginWithGoogle _value,
      $Res Function(_OnboardLoginWithGoogle) _then)
      : super(_value, (v) => _then(v as _OnboardLoginWithGoogle));

  @override
  _OnboardLoginWithGoogle get _value => super._value as _OnboardLoginWithGoogle;
}

/// @nodoc
class _$_OnboardLoginWithGoogle
    with DiagnosticableTreeMixin
    implements _OnboardLoginWithGoogle {
  const _$_OnboardLoginWithGoogle();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnboardLoginEvent.loginWithGoogle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OnboardLoginEvent.loginWithGoogle'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnboardLoginWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loginWithGoogle(),
    @required TResult loginWithGoogleSuccess(),
  }) {
    assert(loginWithGoogle != null);
    assert(loginWithGoogleSuccess != null);
    return loginWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loginWithGoogle(),
    TResult loginWithGoogleSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginWithGoogle != null) {
      return loginWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loginWithGoogle(_OnboardLoginWithGoogle value),
    @required
        TResult loginWithGoogleSuccess(_OnboardLoginWithGoogleSuccess value),
  }) {
    assert(loginWithGoogle != null);
    assert(loginWithGoogleSuccess != null);
    return loginWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loginWithGoogle(_OnboardLoginWithGoogle value),
    TResult loginWithGoogleSuccess(_OnboardLoginWithGoogleSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginWithGoogle != null) {
      return loginWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _OnboardLoginWithGoogle implements OnboardLoginEvent {
  const factory _OnboardLoginWithGoogle() = _$_OnboardLoginWithGoogle;
}

/// @nodoc
abstract class _$OnboardLoginWithGoogleSuccessCopyWith<$Res> {
  factory _$OnboardLoginWithGoogleSuccessCopyWith(
          _OnboardLoginWithGoogleSuccess value,
          $Res Function(_OnboardLoginWithGoogleSuccess) then) =
      __$OnboardLoginWithGoogleSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnboardLoginWithGoogleSuccessCopyWithImpl<$Res>
    extends _$OnboardLoginEventCopyWithImpl<$Res>
    implements _$OnboardLoginWithGoogleSuccessCopyWith<$Res> {
  __$OnboardLoginWithGoogleSuccessCopyWithImpl(
      _OnboardLoginWithGoogleSuccess _value,
      $Res Function(_OnboardLoginWithGoogleSuccess) _then)
      : super(_value, (v) => _then(v as _OnboardLoginWithGoogleSuccess));

  @override
  _OnboardLoginWithGoogleSuccess get _value =>
      super._value as _OnboardLoginWithGoogleSuccess;
}

/// @nodoc
class _$_OnboardLoginWithGoogleSuccess
    with DiagnosticableTreeMixin
    implements _OnboardLoginWithGoogleSuccess {
  const _$_OnboardLoginWithGoogleSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnboardLoginEvent.loginWithGoogleSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'OnboardLoginEvent.loginWithGoogleSuccess'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnboardLoginWithGoogleSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loginWithGoogle(),
    @required TResult loginWithGoogleSuccess(),
  }) {
    assert(loginWithGoogle != null);
    assert(loginWithGoogleSuccess != null);
    return loginWithGoogleSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loginWithGoogle(),
    TResult loginWithGoogleSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginWithGoogleSuccess != null) {
      return loginWithGoogleSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loginWithGoogle(_OnboardLoginWithGoogle value),
    @required
        TResult loginWithGoogleSuccess(_OnboardLoginWithGoogleSuccess value),
  }) {
    assert(loginWithGoogle != null);
    assert(loginWithGoogleSuccess != null);
    return loginWithGoogleSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loginWithGoogle(_OnboardLoginWithGoogle value),
    TResult loginWithGoogleSuccess(_OnboardLoginWithGoogleSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginWithGoogleSuccess != null) {
      return loginWithGoogleSuccess(this);
    }
    return orElse();
  }
}

abstract class _OnboardLoginWithGoogleSuccess implements OnboardLoginEvent {
  const factory _OnboardLoginWithGoogleSuccess() =
      _$_OnboardLoginWithGoogleSuccess;
}

/// @nodoc
class _$OnboardLoginStateTearOff {
  const _$OnboardLoginStateTearOff();

// ignore: unused_element
  _OnboardLoginInitial initial() {
    return const _OnboardLoginInitial();
  }

// ignore: unused_element
  _GoogleLoginLoading loginWithGoogleLoading() {
    return const _GoogleLoginLoading();
  }
}

/// @nodoc
// ignore: unused_element
const $OnboardLoginState = _$OnboardLoginStateTearOff();

/// @nodoc
mixin _$OnboardLoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loginWithGoogleLoading(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loginWithGoogleLoading(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_OnboardLoginInitial value),
    @required TResult loginWithGoogleLoading(_GoogleLoginLoading value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_OnboardLoginInitial value),
    TResult loginWithGoogleLoading(_GoogleLoginLoading value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $OnboardLoginStateCopyWith<$Res> {
  factory $OnboardLoginStateCopyWith(
          OnboardLoginState value, $Res Function(OnboardLoginState) then) =
      _$OnboardLoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardLoginStateCopyWithImpl<$Res>
    implements $OnboardLoginStateCopyWith<$Res> {
  _$OnboardLoginStateCopyWithImpl(this._value, this._then);

  final OnboardLoginState _value;
  // ignore: unused_field
  final $Res Function(OnboardLoginState) _then;
}

/// @nodoc
abstract class _$OnboardLoginInitialCopyWith<$Res> {
  factory _$OnboardLoginInitialCopyWith(_OnboardLoginInitial value,
          $Res Function(_OnboardLoginInitial) then) =
      __$OnboardLoginInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnboardLoginInitialCopyWithImpl<$Res>
    extends _$OnboardLoginStateCopyWithImpl<$Res>
    implements _$OnboardLoginInitialCopyWith<$Res> {
  __$OnboardLoginInitialCopyWithImpl(
      _OnboardLoginInitial _value, $Res Function(_OnboardLoginInitial) _then)
      : super(_value, (v) => _then(v as _OnboardLoginInitial));

  @override
  _OnboardLoginInitial get _value => super._value as _OnboardLoginInitial;
}

/// @nodoc
class _$_OnboardLoginInitial
    with DiagnosticableTreeMixin
    implements _OnboardLoginInitial {
  const _$_OnboardLoginInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnboardLoginState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OnboardLoginState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnboardLoginInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loginWithGoogleLoading(),
  }) {
    assert(initial != null);
    assert(loginWithGoogleLoading != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loginWithGoogleLoading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_OnboardLoginInitial value),
    @required TResult loginWithGoogleLoading(_GoogleLoginLoading value),
  }) {
    assert(initial != null);
    assert(loginWithGoogleLoading != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_OnboardLoginInitial value),
    TResult loginWithGoogleLoading(_GoogleLoginLoading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _OnboardLoginInitial implements OnboardLoginState {
  const factory _OnboardLoginInitial() = _$_OnboardLoginInitial;
}

/// @nodoc
abstract class _$GoogleLoginLoadingCopyWith<$Res> {
  factory _$GoogleLoginLoadingCopyWith(
          _GoogleLoginLoading value, $Res Function(_GoogleLoginLoading) then) =
      __$GoogleLoginLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$GoogleLoginLoadingCopyWithImpl<$Res>
    extends _$OnboardLoginStateCopyWithImpl<$Res>
    implements _$GoogleLoginLoadingCopyWith<$Res> {
  __$GoogleLoginLoadingCopyWithImpl(
      _GoogleLoginLoading _value, $Res Function(_GoogleLoginLoading) _then)
      : super(_value, (v) => _then(v as _GoogleLoginLoading));

  @override
  _GoogleLoginLoading get _value => super._value as _GoogleLoginLoading;
}

/// @nodoc
class _$_GoogleLoginLoading
    with DiagnosticableTreeMixin
    implements _GoogleLoginLoading {
  const _$_GoogleLoginLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnboardLoginState.loginWithGoogleLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'OnboardLoginState.loginWithGoogleLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GoogleLoginLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loginWithGoogleLoading(),
  }) {
    assert(initial != null);
    assert(loginWithGoogleLoading != null);
    return loginWithGoogleLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loginWithGoogleLoading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginWithGoogleLoading != null) {
      return loginWithGoogleLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_OnboardLoginInitial value),
    @required TResult loginWithGoogleLoading(_GoogleLoginLoading value),
  }) {
    assert(initial != null);
    assert(loginWithGoogleLoading != null);
    return loginWithGoogleLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_OnboardLoginInitial value),
    TResult loginWithGoogleLoading(_GoogleLoginLoading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loginWithGoogleLoading != null) {
      return loginWithGoogleLoading(this);
    }
    return orElse();
  }
}

abstract class _GoogleLoginLoading implements OnboardLoginState {
  const factory _GoogleLoginLoading() = _$_GoogleLoginLoading;
}
