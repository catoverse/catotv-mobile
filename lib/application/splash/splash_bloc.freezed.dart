// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SplashEventTearOff {
  const _$SplashEventTearOff();

// ignore: unused_element
  _EventLoading loading() {
    return const _EventLoading();
  }

// ignore: unused_element
  _EventFailure failure(Failure failure) {
    return _EventFailure(
      failure,
    );
  }

// ignore: unused_element
  _EventUpdateRequired updateRequired() {
    return const _EventUpdateRequired();
  }
}

/// @nodoc
// ignore: unused_element
const $SplashEvent = _$SplashEventTearOff();

/// @nodoc
mixin _$SplashEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult failure(Failure failure),
    @required TResult updateRequired(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult failure(Failure failure),
    TResult updateRequired(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_EventLoading value),
    @required TResult failure(_EventFailure value),
    @required TResult updateRequired(_EventUpdateRequired value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_EventLoading value),
    TResult failure(_EventFailure value),
    TResult updateRequired(_EventUpdateRequired value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res> implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  final SplashEvent _value;
  // ignore: unused_field
  final $Res Function(SplashEvent) _then;
}

/// @nodoc
abstract class _$EventLoadingCopyWith<$Res> {
  factory _$EventLoadingCopyWith(
          _EventLoading value, $Res Function(_EventLoading) then) =
      __$EventLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$EventLoadingCopyWithImpl<$Res> extends _$SplashEventCopyWithImpl<$Res>
    implements _$EventLoadingCopyWith<$Res> {
  __$EventLoadingCopyWithImpl(
      _EventLoading _value, $Res Function(_EventLoading) _then)
      : super(_value, (v) => _then(v as _EventLoading));

  @override
  _EventLoading get _value => super._value as _EventLoading;
}

/// @nodoc
class _$_EventLoading implements _EventLoading {
  const _$_EventLoading();

  @override
  String toString() {
    return 'SplashEvent.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EventLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult failure(Failure failure),
    @required TResult updateRequired(),
  }) {
    assert(loading != null);
    assert(failure != null);
    assert(updateRequired != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult failure(Failure failure),
    TResult updateRequired(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_EventLoading value),
    @required TResult failure(_EventFailure value),
    @required TResult updateRequired(_EventUpdateRequired value),
  }) {
    assert(loading != null);
    assert(failure != null);
    assert(updateRequired != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_EventLoading value),
    TResult failure(_EventFailure value),
    TResult updateRequired(_EventUpdateRequired value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _EventLoading implements SplashEvent {
  const factory _EventLoading() = _$_EventLoading;
}

/// @nodoc
abstract class _$EventFailureCopyWith<$Res> {
  factory _$EventFailureCopyWith(
          _EventFailure value, $Res Function(_EventFailure) then) =
      __$EventFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$EventFailureCopyWithImpl<$Res> extends _$SplashEventCopyWithImpl<$Res>
    implements _$EventFailureCopyWith<$Res> {
  __$EventFailureCopyWithImpl(
      _EventFailure _value, $Res Function(_EventFailure) _then)
      : super(_value, (v) => _then(v as _EventFailure));

  @override
  _EventFailure get _value => super._value as _EventFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_EventFailure(
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
class _$_EventFailure implements _EventFailure {
  const _$_EventFailure(this.failure) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'SplashEvent.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$EventFailureCopyWith<_EventFailure> get copyWith =>
      __$EventFailureCopyWithImpl<_EventFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult failure(Failure failure),
    @required TResult updateRequired(),
  }) {
    assert(loading != null);
    assert(failure != null);
    assert(updateRequired != null);
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult failure(Failure failure),
    TResult updateRequired(),
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
    @required TResult loading(_EventLoading value),
    @required TResult failure(_EventFailure value),
    @required TResult updateRequired(_EventUpdateRequired value),
  }) {
    assert(loading != null);
    assert(failure != null);
    assert(updateRequired != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_EventLoading value),
    TResult failure(_EventFailure value),
    TResult updateRequired(_EventUpdateRequired value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _EventFailure implements SplashEvent {
  const factory _EventFailure(Failure failure) = _$_EventFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$EventFailureCopyWith<_EventFailure> get copyWith;
}

/// @nodoc
abstract class _$EventUpdateRequiredCopyWith<$Res> {
  factory _$EventUpdateRequiredCopyWith(_EventUpdateRequired value,
          $Res Function(_EventUpdateRequired) then) =
      __$EventUpdateRequiredCopyWithImpl<$Res>;
}

/// @nodoc
class __$EventUpdateRequiredCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res>
    implements _$EventUpdateRequiredCopyWith<$Res> {
  __$EventUpdateRequiredCopyWithImpl(
      _EventUpdateRequired _value, $Res Function(_EventUpdateRequired) _then)
      : super(_value, (v) => _then(v as _EventUpdateRequired));

  @override
  _EventUpdateRequired get _value => super._value as _EventUpdateRequired;
}

/// @nodoc
class _$_EventUpdateRequired implements _EventUpdateRequired {
  const _$_EventUpdateRequired();

  @override
  String toString() {
    return 'SplashEvent.updateRequired()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EventUpdateRequired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult failure(Failure failure),
    @required TResult updateRequired(),
  }) {
    assert(loading != null);
    assert(failure != null);
    assert(updateRequired != null);
    return updateRequired();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult failure(Failure failure),
    TResult updateRequired(),
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
    @required TResult loading(_EventLoading value),
    @required TResult failure(_EventFailure value),
    @required TResult updateRequired(_EventUpdateRequired value),
  }) {
    assert(loading != null);
    assert(failure != null);
    assert(updateRequired != null);
    return updateRequired(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_EventLoading value),
    TResult failure(_EventFailure value),
    TResult updateRequired(_EventUpdateRequired value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateRequired != null) {
      return updateRequired(this);
    }
    return orElse();
  }
}

abstract class _EventUpdateRequired implements SplashEvent {
  const factory _EventUpdateRequired() = _$_EventUpdateRequired;
}

/// @nodoc
class _$SplashStateTearOff {
  const _$SplashStateTearOff();

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _ForceUpdateRequired forceUpdateRequired() {
    return const _ForceUpdateRequired();
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
const $SplashState = _$SplashStateTearOff();

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult forceUpdateRequired(),
    @required TResult failure(Failure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult forceUpdateRequired(),
    TResult failure(Failure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult forceUpdateRequired(_ForceUpdateRequired value),
    @required TResult failure(_Failure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult forceUpdateRequired(_ForceUpdateRequired value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  final SplashState _value;
  // ignore: unused_field
  final $Res Function(SplashState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'SplashState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult forceUpdateRequired(),
    @required TResult failure(Failure failure),
  }) {
    assert(loading != null);
    assert(forceUpdateRequired != null);
    assert(failure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult forceUpdateRequired(),
    TResult failure(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult forceUpdateRequired(_ForceUpdateRequired value),
    @required TResult failure(_Failure value),
  }) {
    assert(loading != null);
    assert(forceUpdateRequired != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult forceUpdateRequired(_ForceUpdateRequired value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SplashState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ForceUpdateRequiredCopyWith<$Res> {
  factory _$ForceUpdateRequiredCopyWith(_ForceUpdateRequired value,
          $Res Function(_ForceUpdateRequired) then) =
      __$ForceUpdateRequiredCopyWithImpl<$Res>;
}

/// @nodoc
class __$ForceUpdateRequiredCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res>
    implements _$ForceUpdateRequiredCopyWith<$Res> {
  __$ForceUpdateRequiredCopyWithImpl(
      _ForceUpdateRequired _value, $Res Function(_ForceUpdateRequired) _then)
      : super(_value, (v) => _then(v as _ForceUpdateRequired));

  @override
  _ForceUpdateRequired get _value => super._value as _ForceUpdateRequired;
}

/// @nodoc
class _$_ForceUpdateRequired implements _ForceUpdateRequired {
  const _$_ForceUpdateRequired();

  @override
  String toString() {
    return 'SplashState.forceUpdateRequired()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ForceUpdateRequired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
    @required TResult forceUpdateRequired(),
    @required TResult failure(Failure failure),
  }) {
    assert(loading != null);
    assert(forceUpdateRequired != null);
    assert(failure != null);
    return forceUpdateRequired();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult forceUpdateRequired(),
    TResult failure(Failure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (forceUpdateRequired != null) {
      return forceUpdateRequired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(_Loading value),
    @required TResult forceUpdateRequired(_ForceUpdateRequired value),
    @required TResult failure(_Failure value),
  }) {
    assert(loading != null);
    assert(forceUpdateRequired != null);
    assert(failure != null);
    return forceUpdateRequired(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult forceUpdateRequired(_ForceUpdateRequired value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (forceUpdateRequired != null) {
      return forceUpdateRequired(this);
    }
    return orElse();
  }
}

abstract class _ForceUpdateRequired implements SplashState {
  const factory _ForceUpdateRequired() = _$_ForceUpdateRequired;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
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
class _$_Failure implements _Failure {
  const _$_Failure(this.failure) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'SplashState.failure(failure: $failure)';
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
    @required TResult loading(),
    @required TResult forceUpdateRequired(),
    @required TResult failure(Failure failure),
  }) {
    assert(loading != null);
    assert(forceUpdateRequired != null);
    assert(failure != null);
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    TResult forceUpdateRequired(),
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
    @required TResult loading(_Loading value),
    @required TResult forceUpdateRequired(_ForceUpdateRequired value),
    @required TResult failure(_Failure value),
  }) {
    assert(loading != null);
    assert(forceUpdateRequired != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(_Loading value),
    TResult forceUpdateRequired(_ForceUpdateRequired value),
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

abstract class _Failure implements SplashState {
  const factory _Failure(Failure failure) = _$_Failure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith;
}
