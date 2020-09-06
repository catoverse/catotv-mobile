part of 'init_bloc.dart';

@freezed
abstract class InitEvent with _$InitEvent {
  const factory InitEvent.requestAppVersionCheck() = _RequestAppVersionCheck;
}