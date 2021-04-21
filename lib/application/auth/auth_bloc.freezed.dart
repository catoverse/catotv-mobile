// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  _AuthCheckRequested authCheckRequested() {
    return const _AuthCheckRequested();
  }

// ignore: unused_element
  _AuthSignedOut signedOut() {
    return const _AuthSignedOut();
  }

// ignore: unused_element
  _AuthGoogleLogin googleLogin() {
    return const _AuthGoogleLogin();
  }

// ignore: unused_element
  _AuthSessionLogin sessionLogin({String name, String inviteCode}) {
    return _AuthSessionLogin(
      name: name,
      inviteCode: inviteCode,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authCheckRequested(),
    @required TResult signedOut(),
    @required TResult googleLogin(),
    @required TResult sessionLogin(String name, String inviteCode),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authCheckRequested(),
    TResult signedOut(),
    TResult googleLogin(),
    TResult sessionLogin(String name, String inviteCode),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authCheckRequested(_AuthCheckRequested value),
    @required TResult signedOut(_AuthSignedOut value),
    @required TResult googleLogin(_AuthGoogleLogin value),
    @required TResult sessionLogin(_AuthSessionLogin value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authCheckRequested(_AuthCheckRequested value),
    TResult signedOut(_AuthSignedOut value),
    TResult googleLogin(_AuthGoogleLogin value),
    TResult sessionLogin(_AuthSessionLogin value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$AuthCheckRequestedCopyWith<$Res> {
  factory _$AuthCheckRequestedCopyWith(
          _AuthCheckRequested value, $Res Function(_AuthCheckRequested) then) =
      __$AuthCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthCheckRequestedCopyWith<$Res> {
  __$AuthCheckRequestedCopyWithImpl(
      _AuthCheckRequested _value, $Res Function(_AuthCheckRequested) _then)
      : super(_value, (v) => _then(v as _AuthCheckRequested));

  @override
  _AuthCheckRequested get _value => super._value as _AuthCheckRequested;
}

/// @nodoc
class _$_AuthCheckRequested
    with DiagnosticableTreeMixin
    implements _AuthCheckRequested {
  const _$_AuthCheckRequested();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.authCheckRequested()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.authCheckRequested'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authCheckRequested(),
    @required TResult signedOut(),
    @required TResult googleLogin(),
    @required TResult sessionLogin(String name, String inviteCode),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(googleLogin != null);
    assert(sessionLogin != null);
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authCheckRequested(),
    TResult signedOut(),
    TResult googleLogin(),
    TResult sessionLogin(String name, String inviteCode),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authCheckRequested(_AuthCheckRequested value),
    @required TResult signedOut(_AuthSignedOut value),
    @required TResult googleLogin(_AuthGoogleLogin value),
    @required TResult sessionLogin(_AuthSessionLogin value),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(googleLogin != null);
    assert(sessionLogin != null);
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authCheckRequested(_AuthCheckRequested value),
    TResult signedOut(_AuthSignedOut value),
    TResult googleLogin(_AuthGoogleLogin value),
    TResult sessionLogin(_AuthSessionLogin value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class _AuthCheckRequested implements AuthEvent {
  const factory _AuthCheckRequested() = _$_AuthCheckRequested;
}

/// @nodoc
abstract class _$AuthSignedOutCopyWith<$Res> {
  factory _$AuthSignedOutCopyWith(
          _AuthSignedOut value, $Res Function(_AuthSignedOut) then) =
      __$AuthSignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthSignedOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthSignedOutCopyWith<$Res> {
  __$AuthSignedOutCopyWithImpl(
      _AuthSignedOut _value, $Res Function(_AuthSignedOut) _then)
      : super(_value, (v) => _then(v as _AuthSignedOut));

  @override
  _AuthSignedOut get _value => super._value as _AuthSignedOut;
}

/// @nodoc
class _$_AuthSignedOut with DiagnosticableTreeMixin implements _AuthSignedOut {
  const _$_AuthSignedOut();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signedOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthEvent.signedOut'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthSignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authCheckRequested(),
    @required TResult signedOut(),
    @required TResult googleLogin(),
    @required TResult sessionLogin(String name, String inviteCode),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(googleLogin != null);
    assert(sessionLogin != null);
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authCheckRequested(),
    TResult signedOut(),
    TResult googleLogin(),
    TResult sessionLogin(String name, String inviteCode),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authCheckRequested(_AuthCheckRequested value),
    @required TResult signedOut(_AuthSignedOut value),
    @required TResult googleLogin(_AuthGoogleLogin value),
    @required TResult sessionLogin(_AuthSessionLogin value),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(googleLogin != null);
    assert(sessionLogin != null);
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authCheckRequested(_AuthCheckRequested value),
    TResult signedOut(_AuthSignedOut value),
    TResult googleLogin(_AuthGoogleLogin value),
    TResult sessionLogin(_AuthSessionLogin value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _AuthSignedOut implements AuthEvent {
  const factory _AuthSignedOut() = _$_AuthSignedOut;
}

/// @nodoc
abstract class _$AuthGoogleLoginCopyWith<$Res> {
  factory _$AuthGoogleLoginCopyWith(
          _AuthGoogleLogin value, $Res Function(_AuthGoogleLogin) then) =
      __$AuthGoogleLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthGoogleLoginCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthGoogleLoginCopyWith<$Res> {
  __$AuthGoogleLoginCopyWithImpl(
      _AuthGoogleLogin _value, $Res Function(_AuthGoogleLogin) _then)
      : super(_value, (v) => _then(v as _AuthGoogleLogin));

  @override
  _AuthGoogleLogin get _value => super._value as _AuthGoogleLogin;
}

/// @nodoc
class _$_AuthGoogleLogin
    with DiagnosticableTreeMixin
    implements _AuthGoogleLogin {
  const _$_AuthGoogleLogin();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.googleLogin()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthEvent.googleLogin'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthGoogleLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authCheckRequested(),
    @required TResult signedOut(),
    @required TResult googleLogin(),
    @required TResult sessionLogin(String name, String inviteCode),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(googleLogin != null);
    assert(sessionLogin != null);
    return googleLogin();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authCheckRequested(),
    TResult signedOut(),
    TResult googleLogin(),
    TResult sessionLogin(String name, String inviteCode),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (googleLogin != null) {
      return googleLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authCheckRequested(_AuthCheckRequested value),
    @required TResult signedOut(_AuthSignedOut value),
    @required TResult googleLogin(_AuthGoogleLogin value),
    @required TResult sessionLogin(_AuthSessionLogin value),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(googleLogin != null);
    assert(sessionLogin != null);
    return googleLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authCheckRequested(_AuthCheckRequested value),
    TResult signedOut(_AuthSignedOut value),
    TResult googleLogin(_AuthGoogleLogin value),
    TResult sessionLogin(_AuthSessionLogin value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (googleLogin != null) {
      return googleLogin(this);
    }
    return orElse();
  }
}

abstract class _AuthGoogleLogin implements AuthEvent {
  const factory _AuthGoogleLogin() = _$_AuthGoogleLogin;
}

/// @nodoc
abstract class _$AuthSessionLoginCopyWith<$Res> {
  factory _$AuthSessionLoginCopyWith(
          _AuthSessionLogin value, $Res Function(_AuthSessionLogin) then) =
      __$AuthSessionLoginCopyWithImpl<$Res>;
  $Res call({String name, String inviteCode});
}

/// @nodoc
class __$AuthSessionLoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthSessionLoginCopyWith<$Res> {
  __$AuthSessionLoginCopyWithImpl(
      _AuthSessionLogin _value, $Res Function(_AuthSessionLogin) _then)
      : super(_value, (v) => _then(v as _AuthSessionLogin));

  @override
  _AuthSessionLogin get _value => super._value as _AuthSessionLogin;

  @override
  $Res call({
    Object name = freezed,
    Object inviteCode = freezed,
  }) {
    return _then(_AuthSessionLogin(
      name: name == freezed ? _value.name : name as String,
      inviteCode:
          inviteCode == freezed ? _value.inviteCode : inviteCode as String,
    ));
  }
}

/// @nodoc
class _$_AuthSessionLogin
    with DiagnosticableTreeMixin
    implements _AuthSessionLogin {
  const _$_AuthSessionLogin({this.name, this.inviteCode});

  @override
  final String name;
  @override
  final String inviteCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.sessionLogin(name: $name, inviteCode: $inviteCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.sessionLogin'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('inviteCode', inviteCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthSessionLogin &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.inviteCode, inviteCode) ||
                const DeepCollectionEquality()
                    .equals(other.inviteCode, inviteCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(inviteCode);

  @JsonKey(ignore: true)
  @override
  _$AuthSessionLoginCopyWith<_AuthSessionLogin> get copyWith =>
      __$AuthSessionLoginCopyWithImpl<_AuthSessionLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authCheckRequested(),
    @required TResult signedOut(),
    @required TResult googleLogin(),
    @required TResult sessionLogin(String name, String inviteCode),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(googleLogin != null);
    assert(sessionLogin != null);
    return sessionLogin(name, inviteCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authCheckRequested(),
    TResult signedOut(),
    TResult googleLogin(),
    TResult sessionLogin(String name, String inviteCode),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessionLogin != null) {
      return sessionLogin(name, inviteCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authCheckRequested(_AuthCheckRequested value),
    @required TResult signedOut(_AuthSignedOut value),
    @required TResult googleLogin(_AuthGoogleLogin value),
    @required TResult sessionLogin(_AuthSessionLogin value),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(googleLogin != null);
    assert(sessionLogin != null);
    return sessionLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authCheckRequested(_AuthCheckRequested value),
    TResult signedOut(_AuthSignedOut value),
    TResult googleLogin(_AuthGoogleLogin value),
    TResult sessionLogin(_AuthSessionLogin value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessionLogin != null) {
      return sessionLogin(this);
    }
    return orElse();
  }
}

abstract class _AuthSessionLogin implements AuthEvent {
  const factory _AuthSessionLogin({String name, String inviteCode}) =
      _$_AuthSessionLogin;

  String get name;
  String get inviteCode;
  @JsonKey(ignore: true)
  _$AuthSessionLoginCopyWith<_AuthSessionLogin> get copyWith;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }

// ignore: unused_element
  _Authenticated authenticated(User user) {
    return _Authenticated(
      user,
    );
  }

// ignore: unused_element
  _SessionLoggedIn sessionLoggedIn(User user) {
    return _SessionLoggedIn(
      user,
    );
  }

// ignore: unused_element
  _AuthFailure failure(String message) {
    return _AuthFailure(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult unauthenticated(),
    @required TResult authenticated(User user),
    @required TResult sessionLoggedIn(User user),
    @required TResult failure(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult unauthenticated(),
    TResult authenticated(User user),
    TResult sessionLoggedIn(User user),
    TResult failure(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult sessionLoggedIn(_SessionLoggedIn value),
    @required TResult failure(_AuthFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
    TResult sessionLoggedIn(_SessionLoggedIn value),
    TResult failure(_AuthFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult unauthenticated(),
    @required TResult authenticated(User user),
    @required TResult sessionLoggedIn(User user),
    @required TResult failure(String message),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(sessionLoggedIn != null);
    assert(failure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult unauthenticated(),
    TResult authenticated(User user),
    TResult sessionLoggedIn(User user),
    TResult failure(String message),
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
    @required TResult initial(_Initial value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult sessionLoggedIn(_SessionLoggedIn value),
    @required TResult failure(_AuthFailure value),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(sessionLoggedIn != null);
    assert(failure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
    TResult sessionLoggedIn(_SessionLoggedIn value),
    TResult failure(_AuthFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;
}

/// @nodoc
class _$_Unauthenticated
    with DiagnosticableTreeMixin
    implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.unauthenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthState.unauthenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult unauthenticated(),
    @required TResult authenticated(User user),
    @required TResult sessionLoggedIn(User user),
    @required TResult failure(String message),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(sessionLoggedIn != null);
    assert(failure != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult unauthenticated(),
    TResult authenticated(User user),
    TResult sessionLoggedIn(User user),
    TResult failure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult sessionLoggedIn(_SessionLoggedIn value),
    @required TResult failure(_AuthFailure value),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(sessionLoggedIn != null);
    assert(failure != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
    TResult sessionLoggedIn(_SessionLoggedIn value),
    TResult failure(_AuthFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_Authenticated(
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

/// @nodoc
class _$_Authenticated with DiagnosticableTreeMixin implements _Authenticated {
  const _$_Authenticated(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.authenticated'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authenticated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult unauthenticated(),
    @required TResult authenticated(User user),
    @required TResult sessionLoggedIn(User user),
    @required TResult failure(String message),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(sessionLoggedIn != null);
    assert(failure != null);
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult unauthenticated(),
    TResult authenticated(User user),
    TResult sessionLoggedIn(User user),
    TResult failure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult sessionLoggedIn(_SessionLoggedIn value),
    @required TResult failure(_AuthFailure value),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(sessionLoggedIn != null);
    assert(failure != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
    TResult sessionLoggedIn(_SessionLoggedIn value),
    TResult failure(_AuthFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated(User user) = _$_Authenticated;

  User get user;
  @JsonKey(ignore: true)
  _$AuthenticatedCopyWith<_Authenticated> get copyWith;
}

/// @nodoc
abstract class _$SessionLoggedInCopyWith<$Res> {
  factory _$SessionLoggedInCopyWith(
          _SessionLoggedIn value, $Res Function(_SessionLoggedIn) then) =
      __$SessionLoggedInCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$SessionLoggedInCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$SessionLoggedInCopyWith<$Res> {
  __$SessionLoggedInCopyWithImpl(
      _SessionLoggedIn _value, $Res Function(_SessionLoggedIn) _then)
      : super(_value, (v) => _then(v as _SessionLoggedIn));

  @override
  _SessionLoggedIn get _value => super._value as _SessionLoggedIn;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_SessionLoggedIn(
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

/// @nodoc
class _$_SessionLoggedIn
    with DiagnosticableTreeMixin
    implements _SessionLoggedIn {
  const _$_SessionLoggedIn(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.sessionLoggedIn(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.sessionLoggedIn'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SessionLoggedIn &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$SessionLoggedInCopyWith<_SessionLoggedIn> get copyWith =>
      __$SessionLoggedInCopyWithImpl<_SessionLoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult unauthenticated(),
    @required TResult authenticated(User user),
    @required TResult sessionLoggedIn(User user),
    @required TResult failure(String message),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(sessionLoggedIn != null);
    assert(failure != null);
    return sessionLoggedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult unauthenticated(),
    TResult authenticated(User user),
    TResult sessionLoggedIn(User user),
    TResult failure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessionLoggedIn != null) {
      return sessionLoggedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult sessionLoggedIn(_SessionLoggedIn value),
    @required TResult failure(_AuthFailure value),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(sessionLoggedIn != null);
    assert(failure != null);
    return sessionLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
    TResult sessionLoggedIn(_SessionLoggedIn value),
    TResult failure(_AuthFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sessionLoggedIn != null) {
      return sessionLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _SessionLoggedIn implements AuthState {
  const factory _SessionLoggedIn(User user) = _$_SessionLoggedIn;

  User get user;
  @JsonKey(ignore: true)
  _$SessionLoggedInCopyWith<_SessionLoggedIn> get copyWith;
}

/// @nodoc
abstract class _$AuthFailureCopyWith<$Res> {
  factory _$AuthFailureCopyWith(
          _AuthFailure value, $Res Function(_AuthFailure) then) =
      __$AuthFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$AuthFailureCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthFailureCopyWith<$Res> {
  __$AuthFailureCopyWithImpl(
      _AuthFailure _value, $Res Function(_AuthFailure) _then)
      : super(_value, (v) => _then(v as _AuthFailure));

  @override
  _AuthFailure get _value => super._value as _AuthFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_AuthFailure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_AuthFailure with DiagnosticableTreeMixin implements _AuthFailure {
  const _$_AuthFailure(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.failure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.failure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$AuthFailureCopyWith<_AuthFailure> get copyWith =>
      __$AuthFailureCopyWithImpl<_AuthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult unauthenticated(),
    @required TResult authenticated(User user),
    @required TResult sessionLoggedIn(User user),
    @required TResult failure(String message),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(sessionLoggedIn != null);
    assert(failure != null);
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult unauthenticated(),
    TResult authenticated(User user),
    TResult sessionLoggedIn(User user),
    TResult failure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
    @required TResult sessionLoggedIn(_SessionLoggedIn value),
    @required TResult failure(_AuthFailure value),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(sessionLoggedIn != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
    TResult sessionLoggedIn(_SessionLoggedIn value),
    TResult failure(_AuthFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _AuthFailure implements AuthState {
  const factory _AuthFailure(String message) = _$_AuthFailure;

  String get message;
  @JsonKey(ignore: true)
  _$AuthFailureCopyWith<_AuthFailure> get copyWith;
}
