import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.error(Error error) = _GenericError;
  const factory Failure.exception(Exception exception) = _RaisedException;
  const factory Failure.message(String message) = _FailureMessage;
}
