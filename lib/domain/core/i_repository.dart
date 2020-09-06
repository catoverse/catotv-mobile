import 'package:cato_feed/domain/core/failure.dart';
import 'package:cato_feed/domain/core/result.dart';

abstract class IRepository {
  Future<Result<Failure, bool>> isForceUpdateRequired();
}
