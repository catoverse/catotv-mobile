import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/core/constants/strings.dart';
import 'package:feed/core/models/topic/topic.dart';
import 'package:feed/core/services/hive_service/hive_service.dart';
import 'package:feed/core/services/topic_service/topic_service.dart';
import 'package:feed/remote/api/api_service.dart';

class TopicServiceImpl implements TopicService {
  final HiveService _hiveService = locator<HiveService>();
  final APIService _apiService = locator<APIService>();

  final _log = getLogger("Topic Service");

  @override
  Future<List<Topic>> getTopics() async {
    List<Topic> topics = [];

    /// Checking if the list of [Topic] are cached in [Hive]
    ///   if yes, we'll fetch from [Hive]
    ///   else, we'll fetch from [APIService] and cache them in [Hive]
    var result = await _hiveService.isBoxExists(boxName: AppStrings.topicBox);

    if (result.success is bool) {
      bool isTopicsCached = result.success!;

      if (isTopicsCached) {
        _log.v("Fetching topics from Hive");

        var topicRes =
            await _hiveService.fetchList<Topic>(boxName: AppStrings.topicBox);

        if (topicRes.success is List<Topic>) topics = topicRes.success!;
        return topics;
      } else {
        _log.v("Fetching topics from APIService");

        var topicRes = await _apiService.fetchTopics();

        if (topicRes is List) {
          for (var jsonItem in topicRes) {
            topics.add(Topic.fromJson(jsonItem));
          }
        }

        await _hiveService.insertList<Topic>(
            items: topics, boxName: AppStrings.topicBox);

        return topics;
      }
    }

    return topics;
  }
}
