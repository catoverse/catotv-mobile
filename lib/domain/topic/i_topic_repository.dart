import 'package:kt_dart/collection.dart';
import 'package:cato_feed/domain/core/failure.dart';
import 'topic.dart';
import 'package:cato_feed/domain/core/result.dart';


abstract class ITopicRepository {
  Future<Result<Failure, KtList<Topic>>> getTopics();
}