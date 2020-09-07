// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'onboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OnboardEventTearOff {
  const _$OnboardEventTearOff();

// ignore: unused_element
  _CardSwiped cardSwiped(int totalCards) {
    return _CardSwiped(
      totalCards,
    );
  }

// ignore: unused_element
  _EventFailure failure(Failure failure) {
    return _EventFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $OnboardEvent = _$OnboardEventTearOff();

mixin _$OnboardEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cardSwiped(int totalCards),
    @required Result failure(Failure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cardSwiped(int totalCards),
    Result failure(Failure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cardSwiped(_CardSwiped value),
    @required Result failure(_EventFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cardSwiped(_CardSwiped value),
    Result failure(_EventFailure value),
    @required Result orElse(),
  });
}

abstract class $OnboardEventCopyWith<$Res> {
  factory $OnboardEventCopyWith(
          OnboardEvent value, $Res Function(OnboardEvent) then) =
      _$OnboardEventCopyWithImpl<$Res>;
}

class _$OnboardEventCopyWithImpl<$Res> implements $OnboardEventCopyWith<$Res> {
  _$OnboardEventCopyWithImpl(this._value, this._then);

  final OnboardEvent _value;
  // ignore: unused_field
  final $Res Function(OnboardEvent) _then;
}

abstract class _$CardSwipedCopyWith<$Res> {
  factory _$CardSwipedCopyWith(
          _CardSwiped value, $Res Function(_CardSwiped) then) =
      __$CardSwipedCopyWithImpl<$Res>;
  $Res call({int totalCards});
}

class __$CardSwipedCopyWithImpl<$Res> extends _$OnboardEventCopyWithImpl<$Res>
    implements _$CardSwipedCopyWith<$Res> {
  __$CardSwipedCopyWithImpl(
      _CardSwiped _value, $Res Function(_CardSwiped) _then)
      : super(_value, (v) => _then(v as _CardSwiped));

  @override
  _CardSwiped get _value => super._value as _CardSwiped;

  @override
  $Res call({
    Object totalCards = freezed,
  }) {
    return _then(_CardSwiped(
      totalCards == freezed ? _value.totalCards : totalCards as int,
    ));
  }
}

class _$_CardSwiped implements _CardSwiped {
  const _$_CardSwiped(this.totalCards) : assert(totalCards != null);

  @override
  final int totalCards;

  @override
  String toString() {
    return 'OnboardEvent.cardSwiped(totalCards: $totalCards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardSwiped &&
            (identical(other.totalCards, totalCards) ||
                const DeepCollectionEquality()
                    .equals(other.totalCards, totalCards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(totalCards);

  @override
  _$CardSwipedCopyWith<_CardSwiped> get copyWith =>
      __$CardSwipedCopyWithImpl<_CardSwiped>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cardSwiped(int totalCards),
    @required Result failure(Failure failure),
  }) {
    assert(cardSwiped != null);
    assert(failure != null);
    return cardSwiped(totalCards);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cardSwiped(int totalCards),
    Result failure(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cardSwiped != null) {
      return cardSwiped(totalCards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cardSwiped(_CardSwiped value),
    @required Result failure(_EventFailure value),
  }) {
    assert(cardSwiped != null);
    assert(failure != null);
    return cardSwiped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cardSwiped(_CardSwiped value),
    Result failure(_EventFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cardSwiped != null) {
      return cardSwiped(this);
    }
    return orElse();
  }
}

abstract class _CardSwiped implements OnboardEvent {
  const factory _CardSwiped(int totalCards) = _$_CardSwiped;

  int get totalCards;
  _$CardSwipedCopyWith<_CardSwiped> get copyWith;
}

abstract class _$EventFailureCopyWith<$Res> {
  factory _$EventFailureCopyWith(
          _EventFailure value, $Res Function(_EventFailure) then) =
      __$EventFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

class __$EventFailureCopyWithImpl<$Res> extends _$OnboardEventCopyWithImpl<$Res>
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

class _$_EventFailure implements _EventFailure {
  const _$_EventFailure(this.failure) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'OnboardEvent.failure(failure: $failure)';
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

  @override
  _$EventFailureCopyWith<_EventFailure> get copyWith =>
      __$EventFailureCopyWithImpl<_EventFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cardSwiped(int totalCards),
    @required Result failure(Failure failure),
  }) {
    assert(cardSwiped != null);
    assert(failure != null);
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cardSwiped(int totalCards),
    Result failure(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cardSwiped(_CardSwiped value),
    @required Result failure(_EventFailure value),
  }) {
    assert(cardSwiped != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cardSwiped(_CardSwiped value),
    Result failure(_EventFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _EventFailure implements OnboardEvent {
  const factory _EventFailure(Failure failure) = _$_EventFailure;

  Failure get failure;
  _$EventFailureCopyWith<_EventFailure> get copyWith;
}

class _$OnboardStateTearOff {
  const _$OnboardStateTearOff();

// ignore: unused_element
  _OnboardState call(int currentCardIndex, Failure failure) {
    return _OnboardState(
      currentCardIndex,
      failure,
    );
  }
}

// ignore: unused_element
const $OnboardState = _$OnboardStateTearOff();

mixin _$OnboardState {
  int get currentCardIndex;
  Failure get failure;

  $OnboardStateCopyWith<OnboardState> get copyWith;
}

abstract class $OnboardStateCopyWith<$Res> {
  factory $OnboardStateCopyWith(
          OnboardState value, $Res Function(OnboardState) then) =
      _$OnboardStateCopyWithImpl<$Res>;
  $Res call({int currentCardIndex, Failure failure});

  $FailureCopyWith<$Res> get failure;
}

class _$OnboardStateCopyWithImpl<$Res> implements $OnboardStateCopyWith<$Res> {
  _$OnboardStateCopyWithImpl(this._value, this._then);

  final OnboardState _value;
  // ignore: unused_field
  final $Res Function(OnboardState) _then;

  @override
  $Res call({
    Object currentCardIndex = freezed,
    Object failure = freezed,
  }) {
    return _then(_value.copyWith(
      currentCardIndex: currentCardIndex == freezed
          ? _value.currentCardIndex
          : currentCardIndex as int,
      failure: failure == freezed ? _value.failure : failure as Failure,
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

abstract class _$OnboardStateCopyWith<$Res>
    implements $OnboardStateCopyWith<$Res> {
  factory _$OnboardStateCopyWith(
          _OnboardState value, $Res Function(_OnboardState) then) =
      __$OnboardStateCopyWithImpl<$Res>;
  @override
  $Res call({int currentCardIndex, Failure failure});

  @override
  $FailureCopyWith<$Res> get failure;
}

class __$OnboardStateCopyWithImpl<$Res> extends _$OnboardStateCopyWithImpl<$Res>
    implements _$OnboardStateCopyWith<$Res> {
  __$OnboardStateCopyWithImpl(
      _OnboardState _value, $Res Function(_OnboardState) _then)
      : super(_value, (v) => _then(v as _OnboardState));

  @override
  _OnboardState get _value => super._value as _OnboardState;

  @override
  $Res call({
    Object currentCardIndex = freezed,
    Object failure = freezed,
  }) {
    return _then(_OnboardState(
      currentCardIndex == freezed
          ? _value.currentCardIndex
          : currentCardIndex as int,
      failure == freezed ? _value.failure : failure as Failure,
    ));
  }
}

class _$_OnboardState implements _OnboardState {
  const _$_OnboardState(this.currentCardIndex, this.failure)
      : assert(currentCardIndex != null),
        assert(failure != null);

  @override
  final int currentCardIndex;
  @override
  final Failure failure;

  @override
  String toString() {
    return 'OnboardState(currentCardIndex: $currentCardIndex, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnboardState &&
            (identical(other.currentCardIndex, currentCardIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentCardIndex, currentCardIndex)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentCardIndex) ^
      const DeepCollectionEquality().hash(failure);

  @override
  _$OnboardStateCopyWith<_OnboardState> get copyWith =>
      __$OnboardStateCopyWithImpl<_OnboardState>(this, _$identity);
}

abstract class _OnboardState implements OnboardState {
  const factory _OnboardState(int currentCardIndex, Failure failure) =
      _$_OnboardState;

  @override
  int get currentCardIndex;
  @override
  Failure get failure;
  @override
  _$OnboardStateCopyWith<_OnboardState> get copyWith;
}
