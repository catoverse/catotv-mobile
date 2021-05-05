import 'package:feed/core/models/result/failure.dart';
import 'package:feed/core/models/result/result.dart';

abstract class HiveService {
  Future<Result<Failure, bool>> isBoxExists({required String boxName});

  Future<Result<Failure, bool>> insertItem<T>(
      {required T item, required String boxName});

  Future<Result<Failure, bool>> insertList<T>(
      {required List<T> items, required String boxName});

  Future<Result<Failure, T>> fetchItem<T>({required String boxName});
  Future<Result<Failure, List<T>>> fetchList<T>({required String boxName});
  Future<Result<Failure, T>> fetchItemAtIndex<T>(
      {required String boxName, required int index});

  Future<Result<Failure, bool>> removeBox({required String boxName});
}
