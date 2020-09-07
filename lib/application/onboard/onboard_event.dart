part of 'onboard_bloc.dart';

@freezed
abstract class OnboardEvent with _$OnboardEvent {
  const factory OnboardEvent.cardSwiped(int totalCards) = _CardSwiped;
  const factory OnboardEvent.failure(Failure failure) = _EventFailure;
}