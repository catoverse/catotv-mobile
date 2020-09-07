part of 'onboard_bloc.dart';

@freezed
abstract class OnboardState with _$OnboardState {
  const factory OnboardState(int currentCardIndex, {Failure failure}) = _OnboardState;
  factory OnboardState.initial() => OnboardState(0, failure: null);
  factory OnboardState.failure(int currentCardIndex, Failure failure) => OnboardState(currentCardIndex, failure: failure);
 }
