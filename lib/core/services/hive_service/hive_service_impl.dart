import 'package:feed/app/app.logger.dart';
import 'package:feed/core/models/result/failure.dart';
import 'package:feed/core/models/result/result.dart';
import 'package:hive/hive.dart';
import 'package:feed/app/app.locator.dart';

import 'hive_service.dart';

/// A wrapper service around [Hive]
/// Wrapper Services are to ensure even when the package is swapped out
///   you're not concerned about side effects in your business logic.
class HiveServiceImpl implements HiveService {
  final _hiveInterface = locator<HiveInterface>();
  final _log = getLogger('HiveService');

  @override
  Future<Result<Failure, bool>> isBoxExists({required String boxName}) async {
    _log.v("Checking whether $boxName exists in Hive");

    try {
      final openBox = await _hiveInterface.openBox(boxName);
      int length = openBox.length;

      return Result.success(length != 0);
    } catch (error) {
      return Result.failed(Failure.message(error.toString()));
    }
  }

  @override
  Future<Result<Failure, bool>> insertItem<T>(
      {required T item, required String boxName}) async {
    _log.v("Adding $item to $boxName");

    try {
      final openBox = await _hiveInterface.openBox(boxName);
      openBox.add(item);

      return Result.success(true);
    } catch (error) {
      return Result.failed(Failure.message(error.toString()));
    }
  }

  @override
  Future<Result<Failure, T>> fetchItem<T>({required String boxName}) async {
    _log.v("Getting box to $boxName");

    try {
      final openBox = await _hiveInterface.openBox(boxName);

      return Result.success(openBox.getAt(0) as T);
    } catch (error) {
      return Result.failed(Failure.message(error.toString()));
    }
  }

  @override
  Future<Result<Failure, bool>> removeBox({required String boxName}) async {
    _log.v("Removing the contents of $boxName from Hive");

    try {
      final openBox = await _hiveInterface.openBox(boxName);
      openBox.clear();

      return Result.success(true);
    } catch (error) {
      return Result.failed(Failure.message(error.toString()));
    }
  }

  @override
  Future<Result<Failure, bool>> insertList<T>(
      {required List<T> items, required String boxName}) async {
    _log.v("Inserting items to $boxName");

    try {
      final openBox = await _hiveInterface.openBox(boxName);

      for (var item in items) {
        openBox.add(item);
      }

      return Result.success(true);
    } catch (error) {
      return Result.failed(Failure.message(error.toString()));
    }
  }

  @override
  Future<Result<Failure, List<T>>> fetchList<T>(
      {required String boxName}) async {
    _log.v("Accessing items from $boxName");

    try {
      List<T> boxList = [];

      final openBox = await _hiveInterface.openBox(boxName);
      int length = openBox.length;

      for (int i = 0; i < length; i++) {
        boxList.add(openBox.getAt(i));
      }

      return Result.success(boxList);
    } catch (error) {
      return Result.failed(Failure.message(error.toString()));
    }
  }

  @override
  Future<Result<Failure, T>> fetchItemAtIndex<T>(
      {required String boxName, required int index}) async {
    _log.v("Getting the ($index)th item from $boxName");

    try {
      final openBox = await _hiveInterface.openBox(boxName);
      int length = openBox.length;

      if (length == 0)
        return Result.failed(Failure.message("No Box Named : $boxName"));

      if (index >= length)
        return Result.failed(Failure.message("Index $index out of bounds"));

      var result = openBox.getAt(index);

      return Result.success(result as T);
    } catch (error) {
      return Result.failed(Failure.message(error.toString()));
    }
  }
}
