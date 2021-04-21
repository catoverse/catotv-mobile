// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'init_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$InitEventTearOff {
  const _$InitEventTearOff();

// ignore: unused_element
  _RequestAppVersionCheck requestAppVersionCheck() {
    return const _RequestAppVersionCheck();
  }
}

/// @nodoc
// ignore: unused_element
const $InitEvent = _$InitEventTearOff();

/// @nodoc
mixin _$InitEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestAppVersionCheck(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestAppVersionCheck(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestAppVersionCheck(_RequestAppVersionCheck value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestAppVersionCheck(_RequestAppVersionCheck value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $InitEventCopyWith<$Res> {
  factory $InitEventCopyWith(InitEvent value, $Res Function(InitEvent) then) =
      _$InitEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitEventCopyWithImpl<$Res> implements $InitEventCopyWith<$Res> {
  _$InitEventCopyWithImpl(this._value, this._then);

  final InitEvent _value;
  // ignore: unused_field
  final $Res Function(InitEvent) _then;
}

/// @nodoc
abstract class _$RequestAppVersionCheckCopyWith<$Res> {
  factory _$RequestAppVersionCheckCopyWith(_RequestAppVersionCheck value,
          $Res Function(_RequestAppVersionCheck) then) =
      __$RequestAppVersionCheckCopyWithImpl<$Res>;
}

/// @nodoc
class __$RequestAppVersionCheckCopyWithImpl<$Res>
    extends _$InitEventCopyWithImpl<$Res>
    implements _$RequestAppVersionCheckCopyWith<$Res> {
  __$RequestAppVersionCheckCopyWithImpl(_RequestAppVersionCheck _value,
      $Res Function(_RequestAppVersionCheck) _then)
      : super(_value, (v) => _then(v as _RequestAppVersionCheck));

  @override
  _RequestAppVersionCheck get _value => super._value as _RequestAppVersionCheck;
}

/// @nodoc
class _$_RequestAppVersionCheck
    with DiagnosticableTreeMixin
    implements _RequestAppVersionCheck {
  const _$_RequestAppVersionCheck();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InitEvent.requestAppVersionCheck()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InitEvent.requestAppVersionCheck'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RequestAppVersionCheck);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestAppVersionCheck(),
  }) {
    assert(requestAppVersionCheck != null);
    return requestAppVersionCheck();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestAppVersionCheck(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestAppVersionCheck != null) {
      return requestAppVersionCheck();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestAppVersionCheck(_RequestAppVersionCheck value),
  }) {
    assert(requestAppVersionCheck != null);
    return requestAppVersionCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestAppVersionCheck(_RequestAppVersionCheck value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestAppVersionCheck != null) {
      return requestAppVersionCheck(this);
    }
    return orElse();
  }
}

abstract class _RequestAppVersionCheck implements InitEvent {
  const factory _RequestAppVersionCheck() = _$_RequestAppVersionCheck;
}

/// @nodoc
class _$InitStateTearOff {
  const _$InitStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _UpdateRequired updateRequired() {
    return const _UpdateRequired();
  }

// ignore: unused_element
  _InitFailure failure(Failure failure) {
    return _InitFailure(
      failure,
    );
  }

// ignore: unused_element
  _InitSuccess success() {
    return const _InitSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $InitState = _$InitStateTearOff();

/// @nodoc
mixin _$InitState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult updateRequired(),
    @required TResult failure(Failure failure),
    @required TResult success(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult updateRequired(),
    TResult failure(Failure failure),
    TResult success(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult updateRequired(_UpdateRequired value),
    @required TResult failure(_InitFailure value),
    @required TResult success(_InitSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult updateRequired(_UpdateRequired value),
    TResult failure(_InitFailure value),
    TResult success(_InitSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $InitStateCopyWith<$Res> {
  factory $InitStateCopyWith(InitState value, $Res Function(InitState) then) =
      _$InitStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitStateCopyWithImpl<$Res> implements $InitStateCopyWith<$Res> {
  _$InitStateCopyWithImpl(this._value, this._then);

  final InitState _value;
  // ignore: unused_field
  final $Res Function(InitState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$InitStateCopyWithImpl<$Res>
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
    return 'InitState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'InitState.initial'));
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
    @required TResult updateRequired(),
    @required TResult failure(Failure failure),
    @required TResult success(),
  }) {
    assert(initial != null);
    assert(updateRequired != null);
    assert(failure != null);
    assert(success != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult updateRequired(),
    TResult failure(Failure failure),
    TResult success(),
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
    @required TResult updateRequired(_UpdateRequired value),
    @required TResult failure(_InitFailure value),
    @required TResult success(_InitSuccess value),
  }) {
    assert(initial != null);
    assert(updateRequired != null);
    assert(failure != null);
    assert(success != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult updateRequired(_UpdateRequired value),
    TResult failure(_InitFailure value),
    TResult success(_InitSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements InitState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UpdateRequiredCopyWith<$Res> {
  factory _$UpdateRequiredCopyWith(
          _UpdateRequired value, $Res Function(_UpdateRequired) then) =
      __$UpdateRequiredCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateRequiredCopyWithImpl<$Res> extends _$InitStateCopyWithImpl<$Res>
    implements _$UpdateRequiredCopyWith<$Res> {
  __$UpdateRequiredCopyWithImpl(
      _UpdateRequired _value, $Res Function(_UpdateRequired) _then)
      : super(_value, (v) => _then(v as _UpdateRequired));

  @override
  _UpdateRequired get _value => super._value as _UpdateRequired;
}

/// @nodoc
class _$_UpdateRequired
    with DiagnosticableTreeMixin
    implements _UpdateRequired {
  const _$_UpdateRequired();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InitState.updateRequired()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'InitState.updateRequired'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdateRequired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult updateRequired(),
    @required TResult failure(Failure failure),
    @required TResult success(),
  }) {
    assert(initial != null);
    assert(updateRequired != null);
    assert(failure != null);
    assert(success != null);
    return updateRequired();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult updateRequired(),
    TResult failure(Failure failure),
    TResult success(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateRequired != null) {
      return updateRequired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult updateRequired(_UpdateRequired value),
    @required TResult failure(_InitFailure value),
    @required TResult success(_InitSuccess value),
  }) {
    assert(initial != null);
    assert(updateRequired != null);
    assert(failure != null);
    assert(success != null);
    return updateRequired(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult updateRequired(_UpdateRequired value),
    TResult failure(_InitFailure value),
    TResult success(_InitSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateRequired != null) {
      return updateRequired(this);
    }
    return orElse();
  }
}

abstract class _UpdateRequired implements InitState {
  const factory _UpdateRequired() = _$_UpdateRequired;
}

/// @nodoc
abstract class _$InitFailureCopyWith<$Res> {
  factory _$InitFailureCopyWith(
          _InitFailure value, $Res Function(_InitFailure) then) =
      __$InitFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$InitFailureCopyWithImpl<$Res> extends _$InitStateCopyWithImpl<$Res>
    implements _$InitFailureCopyWith<$Res> {
  __$InitFailureCopyWithImpl(
      _InitFailure _value, $Res Function(_InitFailure) _then)
      : super(_value, (v) => _then(v as _InitFailure));

  @override
  _InitFailure get _value => super._value as _InitFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_InitFailure(
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
class _$_InitFailure with DiagnosticableTreeMixin implements _InitFailure {
  const _$_InitFailure(this.failure) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InitState.failure(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InitState.failure'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$InitFailureCopyWith<_InitFailure> get copyWith =>
      __$InitFailureCopyWithImpl<_InitFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult updateRequired(),
    @required TResult failure(Failure failure),
    @required TResult success(),
  }) {
    assert(initial != null);
    assert(updateRequired != null);
    assert(failure != null);
    assert(success != null);
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult updateRequired(),
    TResult failure(Failure failure),
    TResult success(),
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
    @required TResult updateRequired(_UpdateRequired value),
    @required TResult failure(_InitFailure value),
    @required TResult success(_InitSuccess value),
  }) {
    assert(initial != null);
    assert(updateRequired != null);
    assert(failure != null);
    assert(success != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult updateRequired(_UpdateRequired value),
    TResult failure(_InitFailure value),
    TResult success(_InitSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _InitFailure implements InitState {
  const factory _InitFailure(Failure failure) = _$_InitFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$InitFailureCopyWith<_InitFailure> get copyWith;
}

/// @nodoc
abstract class _$InitSuccessCopyWith<$Res> {
  factory _$InitSuccessCopyWith(
          _InitSuccess value, $Res Function(_InitSuccess) then) =
      __$InitSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitSuccessCopyWithImpl<$Res> extends _$InitStateCopyWithImpl<$Res>
    implements _$InitSuccessCopyWith<$Res> {
  __$InitSuccessCopyWithImpl(
      _InitSuccess _value, $Res Function(_InitSuccess) _then)
      : super(_value, (v) => _then(v as _InitSuccess));

  @override
  _InitSuccess get _value => super._value as _InitSuccess;
}

/// @nodoc
class _$_InitSuccess with DiagnosticableTreeMixin implements _InitSuccess {
  const _$_InitSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InitState.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'InitState.success'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult updateRequired(),
    @required TResult failure(Failure failure),
    @required TResult success(),
  }) {
    assert(initial != null);
    assert(updateRequired != null);
    assert(failure != null);
    assert(success != null);
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult updateRequired(),
    TResult failure(Failure failure),
    TResult success(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult updateRequired(_UpdateRequired value),
    @required TResult failure(_InitFailure value),
    @required TResult success(_InitSuccess value),
  }) {
    assert(initial != null);
    assert(updateRequired != null);
    assert(failure != null);
    assert(success != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult updateRequired(_UpdateRequired value),
    TResult failure(_InitFailure value),
    TResult success(_InitSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _InitSuccess implements InitState {
  const factory _InitSuccess() = _$_InitSuccess;
}
