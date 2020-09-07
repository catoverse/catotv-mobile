import 'package:cato_feed/domain/core/failure.dart';
import 'package:cato_feed/domain/core/i_logger.dart';
import 'package:cato_feed/domain/topic/i_topic_repository.dart';
import 'package:cato_feed/domain/topic/topic.dart';
import 'package:cato_feed/domain/core/result.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:cato_feed/infrastructure/core/db/moor/moor_database.dart';
import 'package:cato_feed/infrastructure/core/db/moor/extensions.dart';
import 'package:cato_feed/infrastructure/core/remote/network.dart';

@LazySingleton(as: ITopicRepository)
class TopicRepository implements ITopicRepository {
  final MyDatabase db;
  final Network network;
  final ILogger logger;

  TopicRepository(this.db, this.network, this.logger);

  @override
  Future<Result<Failure, KtList<Topic>>> getTopics() async {
    var topics = await db.topicsDao.getAllTopics();

    if (topics != null && topics.isNotEmpty) {
      var ktTopics = KtList.from(topics.map((t) => t.toTopic()));
      return Result.data(ktTopics);
    }

    var result = await network.getAllTopics();

    if(result.hasFailed()) return Result.fail(result.failure);

    db.topicsDao.insertOrUpdateMany(result.data.map((t) => t.toMTopic()).asList());

    return Result.data(result.data);
  }
}
