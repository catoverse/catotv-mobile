// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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
  _AuthLogin login() {
    return const _AuthLogin();
  }
}

// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
    @required Result login(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    Result login(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(_AuthCheckRequested value),
    @required Result signedOut(_AuthSignedOut value),
    @required Result login(_AuthLogin value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(_AuthCheckRequested value),
    Result signedOut(_AuthSignedOut value),
    Result login(_AuthLogin value),
    @required Result orElse(),
  });
}

abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

abstract class _$AuthCheckRequestedCopyWith<$Res> {
  factory _$AuthCheckRequestedCopyWith(
          _AuthCheckRequested value, $Res Function(_AuthCheckRequested) then) =
      __$AuthCheckRequestedCopyWithImpl<$Res>;
}

class __$AuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthCheckRequestedCopyWith<$Res> {
  __$AuthCheckRequestedCopyWithImpl(
      _AuthCheckRequested _value, $Res Function(_AuthCheckRequested) _then)
      : super(_value, (v) => _then(v as _AuthCheckRequested));

  @override
  _AuthCheckRequested get _value => super._value as _AuthCheckRequested;
}

class _$_AuthCheckRequested implements _AuthCheckRequested {
  const _$_AuthCheckRequested();

  @override
  String toString() {
    return 'AuthEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
    @required Result login(),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(login != null);
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    Result login(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(_AuthCheckRequested value),
    @required Result signedOut(_AuthSignedOut value),
    @required Result login(_AuthLogin value),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(login != null);
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(_AuthCheckRequested value),
    Result signedOut(_AuthSignedOut value),
    Result login(_AuthLogin value),
    @required Result orElse(),
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

abstract class _$AuthSignedOutCopyWith<$Res> {
  factory _$AuthSignedOutCopyWith(
          _AuthSignedOut value, $Res Function(_AuthSignedOut) then) =
      __$AuthSignedOutCopyWithImpl<$Res>;
}

class __$AuthSignedOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthSignedOutCopyWith<$Res> {
  __$AuthSignedOutCopyWithImpl(
      _AuthSignedOut _value, $Res Function(_AuthSignedOut) _then)
      : super(_value, (v) => _then(v as _AuthSignedOut));

  @override
  _AuthSignedOut get _value => super._value as _AuthSignedOut;
}

class _$_AuthSignedOut implements _AuthSignedOut {
  const _$_AuthSignedOut();

  @override
  String toString() {
    return 'AuthEvent.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthSignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
    @required Result login(),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(login != null);
    return signedOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    Result login(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(_AuthCheckRequested value),
    @required Result signedOut(_AuthSignedOut value),
    @required Result login(_AuthLogin value),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(login != null);
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(_AuthCheckRequested value),
    Result signedOut(_AuthSignedOut value),
    Result login(_AuthLogin value),
    @required Result orElse(),
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

abstract class _$AuthLoginCopyWith<$Res> {
  factory _$AuthLoginCopyWith(
          _AuthLogin value, $Res Function(_AuthLogin) then) =
      __$AuthLoginCopyWithImpl<$Res>;
}

class __$AuthLoginCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthLoginCopyWith<$Res> {
  __$AuthLoginCopyWithImpl(_AuthLogin _value, $Res Function(_AuthLogin) _then)
      : super(_value, (v) => _then(v as _AuthLogin));

  @override
  _AuthLogin get _value => super._value as _AuthLogin;
}

class _$_AuthLogin implements _AuthLogin {
  const _$_AuthLogin();

  @override
  String toString() {
    return 'AuthEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
    @required Result login(),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(login != null);
    return login();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    Result login(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(_AuthCheckRequested value),
    @required Result signedOut(_AuthSignedOut value),
    @required Result login(_AuthLogin value),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(login != null);
    return login(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(_AuthCheckRequested value),
    Result signedOut(_AuthSignedOut value),
    Result login(_AuthLogin value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _AuthLogin implements AuthEvent {
  const factory _AuthLogin() = _$_AuthLogin;
}

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
  _AuthFailure failure(String message) {
    return _AuthFailure(
      message,
    );
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result unauthenticated(),
    @required Result authenticated(User user),
    @required Result failure(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unauthenticated(),
    Result authenticated(User user),
    Result failure(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result unauthenticated(_Unauthenticated value),
    @required Result authenticated(_Authenticated value),
    @required Result failure(_AuthFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result unauthenticated(_Unauthenticated value),
    Result authenticated(_Authenticated value),
    Result failure(_AuthFailure value),
    @required Result orElse(),
  });
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result unauthenticated(),
    @required Result authenticated(User user),
    @required Result failure(String message),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(failure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unauthenticated(),
    Result authenticated(User user),
    Result failure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result unauthenticated(_Unauthenticated value),
    @required Result authenticated(_Authenticated value),
    @required Result failure(_AuthFailure value),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(failure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result unauthenticated(_Unauthenticated value),
    Result authenticated(_Authenticated value),
    Result failure(_AuthFailure value),
    @required Result orElse(),
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

abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

class __$UnauthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;
}

class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result unauthenticated(),
    @required Result authenticated(User user),
    @required Result failure(String message),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(failure != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unauthenticated(),
    Result authenticated(User user),
    Result failure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result unauthenticated(_Unauthenticated value),
    @required Result authenticated(_Authenticated value),
    @required Result failure(_AuthFailure value),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(failure != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result unauthenticated(_Unauthenticated value),
    Result authenticated(_Authenticated value),
    Result failure(_AuthFailure value),
    @required Result orElse(),
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

abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

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

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
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

  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result unauthenticated(),
    @required Result authenticated(User user),
    @required Result failure(String message),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(failure != null);
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unauthenticated(),
    Result authenticated(User user),
    Result failure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result unauthenticated(_Unauthenticated value),
    @required Result authenticated(_Authenticated value),
    @required Result failure(_AuthFailure value),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(failure != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result unauthenticated(_Unauthenticated value),
    Result authenticated(_Authenticated value),
    Result failure(_AuthFailure value),
    @required Result orElse(),
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
  _$AuthenticatedCopyWith<_Authenticated> get copyWith;
}

abstract class _$AuthFailureCopyWith<$Res> {
  factory _$AuthFailureCopyWith(
          _AuthFailure value, $Res Function(_AuthFailure) then) =
      __$AuthFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

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

class _$_AuthFailure implements _AuthFailure {
  const _$_AuthFailure(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.failure(message: $message)';
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

  @override
  _$AuthFailureCopyWith<_AuthFailure> get copyWith =>
      __$AuthFailureCopyWithImpl<_AuthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result unauthenticated(),
    @required Result authenticated(User user),
    @required Result failure(String message),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(failure != null);
    return failure(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unauthenticated(),
    Result authenticated(User user),
    Result failure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result unauthenticated(_Unauthenticated value),
    @required Result authenticated(_Authenticated value),
    @required Result failure(_AuthFailure value),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result unauthenticated(_Unauthenticated value),
    Result authenticated(_Authenticated value),
    Result failure(_AuthFailure value),
    @required Result orElse(),
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
  _$AuthFailureCopyWith<_AuthFailure> get copyWith;
}
