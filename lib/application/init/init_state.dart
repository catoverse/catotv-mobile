part of 'init_bloc.dart';

@freezed
abstract class InitState with _$InitState {
  const factory InitState.initial() = _Initial;
  const factory InitState.updateRequired() = _UpdateRequired;
  const factory InitState.failure(Failure failure) = _InitFailure;
  const factory InitState.success() = _InitSuccess;
}
