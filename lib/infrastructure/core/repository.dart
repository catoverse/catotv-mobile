import 'dart:io';

import 'package:cato_feed/domain/core/failure.dart';
import 'package:cato_feed/domain/core/i_logger.dart';
import 'package:cato_feed/domain/core/i_repository.dart';
import 'package:cato_feed/infrastructure/core/remote/network.dart';
import 'package:get_version/get_version.dart';
import 'package:injectable/injectable.dart';
import 'package:cato_feed/domain/core/result.dart';

@LazySingleton(as: IRepository)
class Repository implements IRepository {
  final Network _network;
  final ILogger _logger;

  Repository(this._network, this._logger);

  /// Returns whether force update is required or not.
  @override
  Future<Result<Failure, bool>> isForceUpdateRequired() async {
    var result  = Platform.isAndroid
        ? await _network.getMinimumVersionAndroid()
        : await _network.getMinimumVersionIos();
    if (result.hasFailed()) return Result.fail(result.failure);

    try {
      var currentVersion = int.parse(await GetVersion.projectCode);
      return Result.data(result.data > currentVersion);
    } catch (err) {
      _logger.logException(err);
      return Result.fail(
          Failure.message('Error while checking for the app update.'));
    }
  }
}
