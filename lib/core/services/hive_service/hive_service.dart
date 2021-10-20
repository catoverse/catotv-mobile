import 'package:feed/core/models/app_models.dart';

/// Interface around [Hive] with custom error handling to abstract
/// the third party dependency
abstract class HiveService {
  /// Checks if a box exists
  ///
  /// Returns [true] if box exists
  Future<Result<Failure, bool>> isBoxExists({required String boxName});

  /// Adds item to box
  ///
  /// Saves the [item] with an auto-increment key
  Future<Result<Failure, bool>> insertItem<T>(
      {required T item, required String boxName});

  /// Adds list of items to box
  Future<Result<Failure, bool>> insertList<T>(
      {required List<T> items, required String boxName});

  /// Put list of items to box (Overrides existing value)
  Future<Result<Failure, bool>> putList<T>({required List<T> items, required String boxName});

  /// Returns item from the box
  Future<Result<Failure, T>> fetchItem<T>({required String boxName});

  /// Returns a list of item from box
  Future<Result<Failure, List<T>>> fetchList<T>({required String boxName});

  /// Opens a box at given [index]
  ///
  /// Returns the item associated with index^th key
  Future<Result<Failure, T>> fetchItemAtIndex<T>(
      {required String boxName, required int index});

  /// Clears the content of the box
  Future<Result<Failure, bool>> removeBox({required String boxName});
}
