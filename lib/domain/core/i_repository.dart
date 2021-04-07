import 'package:cato_feed/domain/core/failure.dart';
import 'package:cato_feed/domain/core/result.dart';
import 'package:meta/meta.dart';

abstract class IRepository {
  Future<Result<Failure, bool>> isForceUpdateRequired();
  Future<Result<Failure, String>> addToWaitlist({@required String email});
}
