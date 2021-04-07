// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

// ignore: unused_element
  _GenericError error(Error error) {
    return _GenericError(
      error,
    );
  }

// ignore: unused_element
  _RaisedException exception(Exception exception) {
    return _RaisedException(
      exception,
    );
  }

// ignore: unused_element
  _FailureMessage message(String message) {
    return _FailureMessage(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult error(Error error),
    @required TResult exception(Exception exception),
    @required TResult message(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult error(Error error),
    TResult exception(Exception exception),
    TResult message(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult error(_GenericError value),
    @required TResult exception(_RaisedException value),
    @required TResult message(_FailureMessage value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult error(_GenericError value),
    TResult exception(_RaisedException value),
    TResult message(_FailureMessage value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$GenericErrorCopyWith<$Res> {
  factory _$GenericErrorCopyWith(
          _GenericError value, $Res Function(_GenericError) then) =
      __$GenericErrorCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class __$GenericErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$GenericErrorCopyWith<$Res> {
  __$GenericErrorCopyWithImpl(
      _GenericError _value, $Res Function(_GenericError) _then)
      : super(_value, (v) => _then(v as _GenericError));

  @override
  _GenericError get _value => super._value as _GenericError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_GenericError(
      error == freezed ? _value.error : error as Error,
    ));
  }
}

/// @nodoc
class _$_GenericError implements _GenericError {
  const _$_GenericError(this.error) : assert(error != null);

  @override
  final Error error;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenericError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$GenericErrorCopyWith<_GenericError> get copyWith =>
      __$GenericErrorCopyWithImpl<_GenericError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult error(Error error),
    @required TResult exception(Exception exception),
    @required TResult message(String message),
  }) {
    assert(error != null);
    assert(exception != null);
    assert(message != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult error(Error error),
    TResult exception(Exception exception),
    TResult message(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult error(_GenericError value),
    @required TResult exception(_RaisedException value),
    @required TResult message(_FailureMessage value),
  }) {
    assert(error != null);
    assert(exception != null);
    assert(message != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult error(_GenericError value),
    TResult exception(_RaisedException value),
    TResult message(_FailureMessage value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _GenericError implements Failure {
  const factory _GenericError(Error error) = _$_GenericError;

  Error get error;
  @JsonKey(ignore: true)
  _$GenericErrorCopyWith<_GenericError> get copyWith;
}

/// @nodoc
abstract class _$RaisedExceptionCopyWith<$Res> {
  factory _$RaisedExceptionCopyWith(
          _RaisedException value, $Res Function(_RaisedException) then) =
      __$RaisedExceptionCopyWithImpl<$Res>;
  $Res call({Exception exception});
}

/// @nodoc
class __$RaisedExceptionCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$RaisedExceptionCopyWith<$Res> {
  __$RaisedExceptionCopyWithImpl(
      _RaisedException _value, $Res Function(_RaisedException) _then)
      : super(_value, (v) => _then(v as _RaisedException));

  @override
  _RaisedException get _value => super._value as _RaisedException;

  @override
  $Res call({
    Object exception = freezed,
  }) {
    return _then(_RaisedException(
      exception == freezed ? _value.exception : exception as Exception,
    ));
  }
}

/// @nodoc
class _$_RaisedException implements _RaisedException {
  const _$_RaisedException(this.exception) : assert(exception != null);

  @override
  final Exception exception;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RaisedException &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  _$RaisedExceptionCopyWith<_RaisedException> get copyWith =>
      __$RaisedExceptionCopyWithImpl<_RaisedException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult error(Error error),
    @required TResult exception(Exception exception),
    @required TResult message(String message),
  }) {
    assert(error != null);
    assert(exception != null);
    assert(message != null);
    return exception(this.exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult error(Error error),
    TResult exception(Exception exception),
    TResult message(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exception != null) {
      return exception(this.exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult error(_GenericError value),
    @required TResult exception(_RaisedException value),
    @required TResult message(_FailureMessage value),
  }) {
    assert(error != null);
    assert(exception != null);
    assert(message != null);
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult error(_GenericError value),
    TResult exception(_RaisedException value),
    TResult message(_FailureMessage value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class _RaisedException implements Failure {
  const factory _RaisedException(Exception exception) = _$_RaisedException;

  Exception get exception;
  @JsonKey(ignore: true)
  _$RaisedExceptionCopyWith<_RaisedException> get copyWith;
}

/// @nodoc
abstract class _$FailureMessageCopyWith<$Res> {
  factory _$FailureMessageCopyWith(
          _FailureMessage value, $Res Function(_FailureMessage) then) =
      __$FailureMessageCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$FailureMessageCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$FailureMessageCopyWith<$Res> {
  __$FailureMessageCopyWithImpl(
      _FailureMessage _value, $Res Function(_FailureMessage) _then)
      : super(_value, (v) => _then(v as _FailureMessage));

  @override
  _FailureMessage get _value => super._value as _FailureMessage;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_FailureMessage(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_FailureMessage implements _FailureMessage {
  const _$_FailureMessage(this.message) : assert(message != null);

  @override
  final String message;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailureMessage &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$FailureMessageCopyWith<_FailureMessage> get copyWith =>
      __$FailureMessageCopyWithImpl<_FailureMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult error(Error error),
    @required TResult exception(Exception exception),
    @required TResult message(String message),
  }) {
    assert(error != null);
    assert(exception != null);
    assert(message != null);
    return message(this.message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult error(Error error),
    TResult exception(Exception exception),
    TResult message(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (message != null) {
      return message(this.message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult error(_GenericError value),
    @required TResult exception(_RaisedException value),
    @required TResult message(_FailureMessage value),
  }) {
    assert(error != null);
    assert(exception != null);
    assert(message != null);
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult error(_GenericError value),
    TResult exception(_RaisedException value),
    TResult message(_FailureMessage value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (message != null) {
      return message(this);
    }
    return orElse();
  }
}

abstract class _FailureMessage implements Failure {
  const factory _FailureMessage(String message) = _$_FailureMessage;

  String get message;
  @JsonKey(ignore: true)
  _$FailureMessageCopyWith<_FailureMessage> get copyWith;
}
