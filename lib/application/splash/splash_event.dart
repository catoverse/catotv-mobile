part of 'splash_bloc.dart';

@freezed
abstract class SplashEvent with _$SplashEvent {
  const factory SplashEvent.failure(Failure failure) = _EventFailure;
  const factory SplashEvent.updateRequired() = _EventUpdateRequired;
}
