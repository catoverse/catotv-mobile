part of 'splash_bloc.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.loading() = _Loading;
  const factory SplashState.forceUpdateRequired() = _ForceUpdateRequired;
  const factory SplashState.failure(Failure failure) = _Failure;
}
