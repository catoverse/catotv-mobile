// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'onboard_invite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$OnboardInviteEventTearOff {
  const _$OnboardInviteEventTearOff();

// ignore: unused_element
  _VerifyInviteCode verifyInviteCode(String inviteCode) {
    return _VerifyInviteCode(
      inviteCode,
    );
  }

// ignore: unused_element
  _JoinWaitList joinWaitList(String email) {
    return _JoinWaitList(
      email,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OnboardInviteEvent = _$OnboardInviteEventTearOff();

/// @nodoc
mixin _$OnboardInviteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult verifyInviteCode(String inviteCode),
    @required TResult joinWaitList(String email),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult verifyInviteCode(String inviteCode),
    TResult joinWaitList(String email),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult verifyInviteCode(_VerifyInviteCode value),
    @required TResult joinWaitList(_JoinWaitList value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult verifyInviteCode(_VerifyInviteCode value),
    TResult joinWaitList(_JoinWaitList value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $OnboardInviteEventCopyWith<$Res> {
  factory $OnboardInviteEventCopyWith(
          OnboardInviteEvent value, $Res Function(OnboardInviteEvent) then) =
      _$OnboardInviteEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardInviteEventCopyWithImpl<$Res>
    implements $OnboardInviteEventCopyWith<$Res> {
  _$OnboardInviteEventCopyWithImpl(this._value, this._then);

  final OnboardInviteEvent _value;
  // ignore: unused_field
  final $Res Function(OnboardInviteEvent) _then;
}

/// @nodoc
abstract class _$VerifyInviteCodeCopyWith<$Res> {
  factory _$VerifyInviteCodeCopyWith(
          _VerifyInviteCode value, $Res Function(_VerifyInviteCode) then) =
      __$VerifyInviteCodeCopyWithImpl<$Res>;
  $Res call({String inviteCode});
}

/// @nodoc
class __$VerifyInviteCodeCopyWithImpl<$Res>
    extends _$OnboardInviteEventCopyWithImpl<$Res>
    implements _$VerifyInviteCodeCopyWith<$Res> {
  __$VerifyInviteCodeCopyWithImpl(
      _VerifyInviteCode _value, $Res Function(_VerifyInviteCode) _then)
      : super(_value, (v) => _then(v as _VerifyInviteCode));

  @override
  _VerifyInviteCode get _value => super._value as _VerifyInviteCode;

  @override
  $Res call({
    Object inviteCode = freezed,
  }) {
    return _then(_VerifyInviteCode(
      inviteCode == freezed ? _value.inviteCode : inviteCode as String,
    ));
  }
}

/// @nodoc
class _$_VerifyInviteCode
    with DiagnosticableTreeMixin
    implements _VerifyInviteCode {
  const _$_VerifyInviteCode(this.inviteCode) : assert(inviteCode != null);

  @override
  final String inviteCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnboardInviteEvent.verifyInviteCode(inviteCode: $inviteCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OnboardInviteEvent.verifyInviteCode'))
      ..add(DiagnosticsProperty('inviteCode', inviteCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifyInviteCode &&
            (identical(other.inviteCode, inviteCode) ||
                const DeepCollectionEquality()
                    .equals(other.inviteCode, inviteCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(inviteCode);

  @JsonKey(ignore: true)
  @override
  _$VerifyInviteCodeCopyWith<_VerifyInviteCode> get copyWith =>
      __$VerifyInviteCodeCopyWithImpl<_VerifyInviteCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult verifyInviteCode(String inviteCode),
    @required TResult joinWaitList(String email),
  }) {
    assert(verifyInviteCode != null);
    assert(joinWaitList != null);
    return verifyInviteCode(inviteCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult verifyInviteCode(String inviteCode),
    TResult joinWaitList(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (verifyInviteCode != null) {
      return verifyInviteCode(inviteCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult verifyInviteCode(_VerifyInviteCode value),
    @required TResult joinWaitList(_JoinWaitList value),
  }) {
    assert(verifyInviteCode != null);
    assert(joinWaitList != null);
    return verifyInviteCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult verifyInviteCode(_VerifyInviteCode value),
    TResult joinWaitList(_JoinWaitList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (verifyInviteCode != null) {
      return verifyInviteCode(this);
    }
    return orElse();
  }
}

abstract class _VerifyInviteCode implements OnboardInviteEvent {
  const factory _VerifyInviteCode(String inviteCode) = _$_VerifyInviteCode;

  String get inviteCode;
  @JsonKey(ignore: true)
  _$VerifyInviteCodeCopyWith<_VerifyInviteCode> get copyWith;
}

/// @nodoc
abstract class _$JoinWaitListCopyWith<$Res> {
  factory _$JoinWaitListCopyWith(
          _JoinWaitList value, $Res Function(_JoinWaitList) then) =
      __$JoinWaitListCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$JoinWaitListCopyWithImpl<$Res>
    extends _$OnboardInviteEventCopyWithImpl<$Res>
    implements _$JoinWaitListCopyWith<$Res> {
  __$JoinWaitListCopyWithImpl(
      _JoinWaitList _value, $Res Function(_JoinWaitList) _then)
      : super(_value, (v) => _then(v as _JoinWaitList));

  @override
  _JoinWaitList get _value => super._value as _JoinWaitList;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_JoinWaitList(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_JoinWaitList with DiagnosticableTreeMixin implements _JoinWaitList {
  const _$_JoinWaitList(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnboardInviteEvent.joinWaitList(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OnboardInviteEvent.joinWaitList'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JoinWaitList &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$JoinWaitListCopyWith<_JoinWaitList> get copyWith =>
      __$JoinWaitListCopyWithImpl<_JoinWaitList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult verifyInviteCode(String inviteCode),
    @required TResult joinWaitList(String email),
  }) {
    assert(verifyInviteCode != null);
    assert(joinWaitList != null);
    return joinWaitList(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult verifyInviteCode(String inviteCode),
    TResult joinWaitList(String email),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (joinWaitList != null) {
      return joinWaitList(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult verifyInviteCode(_VerifyInviteCode value),
    @required TResult joinWaitList(_JoinWaitList value),
  }) {
    assert(verifyInviteCode != null);
    assert(joinWaitList != null);
    return joinWaitList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult verifyInviteCode(_VerifyInviteCode value),
    TResult joinWaitList(_JoinWaitList value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (joinWaitList != null) {
      return joinWaitList(this);
    }
    return orElse();
  }
}

abstract class _JoinWaitList implements OnboardInviteEvent {
  const factory _JoinWaitList(String email) = _$_JoinWaitList;

  String get email;
  @JsonKey(ignore: true)
  _$JoinWaitListCopyWith<_JoinWaitList> get copyWith;
}

/// @nodoc
class _$OnboardInviteStateTearOff {
  const _$OnboardInviteStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ValidationLoading inviteCodeValidationLoading() {
    return const _ValidationLoading();
  }

// ignore: unused_element
  _WaitlistLoading joinWaitListLoading() {
    return const _WaitlistLoading();
  }

// ignore: unused_element
  _WaitListSuccess joinWaitListSuccess(String message) {
    return _WaitListSuccess(
      message,
    );
  }

// ignore: unused_element
  _Failure failure(Failure failure) {
    return _Failure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OnboardInviteState = _$OnboardInviteStateTearOff();

/// @nodoc
mixin _$OnboardInviteState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inviteCodeValidationLoading(),
    @required TResult joinWaitListLoading(),
    @required TResult joinWaitListSuccess(String message),
    @required TResult failure(Failure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inviteCodeValidationLoading(),
    TResult joinWaitListLoading(),
    TResult joinWaitListSuccess(String message),
    TResult failure(Failure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inviteCodeValidationLoading(_ValidationLoading value),
    @required TResult joinWaitListLoading(_WaitlistLoading value),
    @required TResult joinWaitListSuccess(_WaitListSuccess value),
    @required TResult failure(_Failure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inviteCodeValidationLoading(_ValidationLoading value),
    TResult joinWaitListLoading(_WaitlistLoading value),
    TResult joinWaitListSuccess(_WaitListSuccess value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $OnboardInviteStateCopyWith<$Res> {
  factory $OnboardInviteStateCopyWith(
          OnboardInviteState value, $Res Function(OnboardInviteState) then) =
      _$OnboardInviteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardInviteStateCopyWithImpl<$Res>
    implements $OnboardInviteStateCopyWith<$Res> {
  _$OnboardInviteStateCopyWithImpl(this._value, this._then);

  final OnboardInviteState _value;
  // ignore: unused_field
  final $Res Function(OnboardInviteState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$OnboardInviteStateCopyWithImpl<$Res>
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
    return 'OnboardInviteState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OnboardInviteState.initial'));
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
    @required TResult inviteCodeValidationLoading(),
    @required TResult joinWaitListLoading(),
    @required TResult joinWaitListSuccess(String message),
    @required TResult failure(Failure failure),
  }) {
    assert(initial != null);
    assert(inviteCodeValidationLoading != null);
    assert(joinWaitListLoading != null);
    assert(joinWaitListSuccess != null);
    assert(failure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inviteCodeValidationLoading(),
    TResult joinWaitListLoading(),
    TResult joinWaitListSuccess(String message),
    TResult failure(Failure failure),
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
    @required TResult inviteCodeValidationLoading(_ValidationLoading value),
    @required TResult joinWaitListLoading(_WaitlistLoading value),
    @required TResult joinWaitListSuccess(_WaitListSuccess value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(inviteCodeValidationLoading != null);
    assert(joinWaitListLoading != null);
    assert(joinWaitListSuccess != null);
    assert(failure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inviteCodeValidationLoading(_ValidationLoading value),
    TResult joinWaitListLoading(_WaitlistLoading value),
    TResult joinWaitListSuccess(_WaitListSuccess value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OnboardInviteState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ValidationLoadingCopyWith<$Res> {
  factory _$ValidationLoadingCopyWith(
          _ValidationLoading value, $Res Function(_ValidationLoading) then) =
      __$ValidationLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ValidationLoadingCopyWithImpl<$Res>
    extends _$OnboardInviteStateCopyWithImpl<$Res>
    implements _$ValidationLoadingCopyWith<$Res> {
  __$ValidationLoadingCopyWithImpl(
      _ValidationLoading _value, $Res Function(_ValidationLoading) _then)
      : super(_value, (v) => _then(v as _ValidationLoading));

  @override
  _ValidationLoading get _value => super._value as _ValidationLoading;
}

/// @nodoc
class _$_ValidationLoading
    with DiagnosticableTreeMixin
    implements _ValidationLoading {
  const _$_ValidationLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnboardInviteState.inviteCodeValidationLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'OnboardInviteState.inviteCodeValidationLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ValidationLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inviteCodeValidationLoading(),
    @required TResult joinWaitListLoading(),
    @required TResult joinWaitListSuccess(String message),
    @required TResult failure(Failure failure),
  }) {
    assert(initial != null);
    assert(inviteCodeValidationLoading != null);
    assert(joinWaitListLoading != null);
    assert(joinWaitListSuccess != null);
    assert(failure != null);
    return inviteCodeValidationLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inviteCodeValidationLoading(),
    TResult joinWaitListLoading(),
    TResult joinWaitListSuccess(String message),
    TResult failure(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inviteCodeValidationLoading != null) {
      return inviteCodeValidationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inviteCodeValidationLoading(_ValidationLoading value),
    @required TResult joinWaitListLoading(_WaitlistLoading value),
    @required TResult joinWaitListSuccess(_WaitListSuccess value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(inviteCodeValidationLoading != null);
    assert(joinWaitListLoading != null);
    assert(joinWaitListSuccess != null);
    assert(failure != null);
    return inviteCodeValidationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inviteCodeValidationLoading(_ValidationLoading value),
    TResult joinWaitListLoading(_WaitlistLoading value),
    TResult joinWaitListSuccess(_WaitListSuccess value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inviteCodeValidationLoading != null) {
      return inviteCodeValidationLoading(this);
    }
    return orElse();
  }
}

abstract class _ValidationLoading implements OnboardInviteState {
  const factory _ValidationLoading() = _$_ValidationLoading;
}

/// @nodoc
abstract class _$WaitlistLoadingCopyWith<$Res> {
  factory _$WaitlistLoadingCopyWith(
          _WaitlistLoading value, $Res Function(_WaitlistLoading) then) =
      __$WaitlistLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$WaitlistLoadingCopyWithImpl<$Res>
    extends _$OnboardInviteStateCopyWithImpl<$Res>
    implements _$WaitlistLoadingCopyWith<$Res> {
  __$WaitlistLoadingCopyWithImpl(
      _WaitlistLoading _value, $Res Function(_WaitlistLoading) _then)
      : super(_value, (v) => _then(v as _WaitlistLoading));

  @override
  _WaitlistLoading get _value => super._value as _WaitlistLoading;
}

/// @nodoc
class _$_WaitlistLoading
    with DiagnosticableTreeMixin
    implements _WaitlistLoading {
  const _$_WaitlistLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnboardInviteState.joinWaitListLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'OnboardInviteState.joinWaitListLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WaitlistLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inviteCodeValidationLoading(),
    @required TResult joinWaitListLoading(),
    @required TResult joinWaitListSuccess(String message),
    @required TResult failure(Failure failure),
  }) {
    assert(initial != null);
    assert(inviteCodeValidationLoading != null);
    assert(joinWaitListLoading != null);
    assert(joinWaitListSuccess != null);
    assert(failure != null);
    return joinWaitListLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inviteCodeValidationLoading(),
    TResult joinWaitListLoading(),
    TResult joinWaitListSuccess(String message),
    TResult failure(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (joinWaitListLoading != null) {
      return joinWaitListLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inviteCodeValidationLoading(_ValidationLoading value),
    @required TResult joinWaitListLoading(_WaitlistLoading value),
    @required TResult joinWaitListSuccess(_WaitListSuccess value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(inviteCodeValidationLoading != null);
    assert(joinWaitListLoading != null);
    assert(joinWaitListSuccess != null);
    assert(failure != null);
    return joinWaitListLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inviteCodeValidationLoading(_ValidationLoading value),
    TResult joinWaitListLoading(_WaitlistLoading value),
    TResult joinWaitListSuccess(_WaitListSuccess value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (joinWaitListLoading != null) {
      return joinWaitListLoading(this);
    }
    return orElse();
  }
}

abstract class _WaitlistLoading implements OnboardInviteState {
  const factory _WaitlistLoading() = _$_WaitlistLoading;
}

/// @nodoc
abstract class _$WaitListSuccessCopyWith<$Res> {
  factory _$WaitListSuccessCopyWith(
          _WaitListSuccess value, $Res Function(_WaitListSuccess) then) =
      __$WaitListSuccessCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$WaitListSuccessCopyWithImpl<$Res>
    extends _$OnboardInviteStateCopyWithImpl<$Res>
    implements _$WaitListSuccessCopyWith<$Res> {
  __$WaitListSuccessCopyWithImpl(
      _WaitListSuccess _value, $Res Function(_WaitListSuccess) _then)
      : super(_value, (v) => _then(v as _WaitListSuccess));

  @override
  _WaitListSuccess get _value => super._value as _WaitListSuccess;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_WaitListSuccess(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_WaitListSuccess
    with DiagnosticableTreeMixin
    implements _WaitListSuccess {
  const _$_WaitListSuccess(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnboardInviteState.joinWaitListSuccess(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'OnboardInviteState.joinWaitListSuccess'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WaitListSuccess &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$WaitListSuccessCopyWith<_WaitListSuccess> get copyWith =>
      __$WaitListSuccessCopyWithImpl<_WaitListSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inviteCodeValidationLoading(),
    @required TResult joinWaitListLoading(),
    @required TResult joinWaitListSuccess(String message),
    @required TResult failure(Failure failure),
  }) {
    assert(initial != null);
    assert(inviteCodeValidationLoading != null);
    assert(joinWaitListLoading != null);
    assert(joinWaitListSuccess != null);
    assert(failure != null);
    return joinWaitListSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inviteCodeValidationLoading(),
    TResult joinWaitListLoading(),
    TResult joinWaitListSuccess(String message),
    TResult failure(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (joinWaitListSuccess != null) {
      return joinWaitListSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inviteCodeValidationLoading(_ValidationLoading value),
    @required TResult joinWaitListLoading(_WaitlistLoading value),
    @required TResult joinWaitListSuccess(_WaitListSuccess value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(inviteCodeValidationLoading != null);
    assert(joinWaitListLoading != null);
    assert(joinWaitListSuccess != null);
    assert(failure != null);
    return joinWaitListSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inviteCodeValidationLoading(_ValidationLoading value),
    TResult joinWaitListLoading(_WaitlistLoading value),
    TResult joinWaitListSuccess(_WaitListSuccess value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (joinWaitListSuccess != null) {
      return joinWaitListSuccess(this);
    }
    return orElse();
  }
}

abstract class _WaitListSuccess implements OnboardInviteState {
  const factory _WaitListSuccess(String message) = _$_WaitListSuccess;

  String get message;
  @JsonKey(ignore: true)
  _$WaitListSuccessCopyWith<_WaitListSuccess> get copyWith;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res>
    extends _$OnboardInviteStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Failure(
      failure == freezed ? _value.failure : failure as Failure,
    ));
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
class _$_Failure with DiagnosticableTreeMixin implements _Failure {
  const _$_Failure(this.failure) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnboardInviteState.failure(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OnboardInviteState.failure'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult inviteCodeValidationLoading(),
    @required TResult joinWaitListLoading(),
    @required TResult joinWaitListSuccess(String message),
    @required TResult failure(Failure failure),
  }) {
    assert(initial != null);
    assert(inviteCodeValidationLoading != null);
    assert(joinWaitListLoading != null);
    assert(joinWaitListSuccess != null);
    assert(failure != null);
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult inviteCodeValidationLoading(),
    TResult joinWaitListLoading(),
    TResult joinWaitListSuccess(String message),
    TResult failure(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult inviteCodeValidationLoading(_ValidationLoading value),
    @required TResult joinWaitListLoading(_WaitlistLoading value),
    @required TResult joinWaitListSuccess(_WaitListSuccess value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(inviteCodeValidationLoading != null);
    assert(joinWaitListLoading != null);
    assert(joinWaitListSuccess != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult inviteCodeValidationLoading(_ValidationLoading value),
    TResult joinWaitListLoading(_WaitlistLoading value),
    TResult joinWaitListSuccess(_WaitListSuccess value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements OnboardInviteState {
  const factory _Failure(Failure failure) = _$_Failure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith;
}
