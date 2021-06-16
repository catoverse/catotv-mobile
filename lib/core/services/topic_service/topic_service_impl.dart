import 'package:feed/app/app.locator.dart';
import 'package:feed/core/constants/strings.dart';
import 'package:feed/core/models/result/failure.dart';
import 'package:feed/core/models/topic/topic.dart';
import 'package:feed/core/models/user/user.dart';
import 'package:feed/core/services/hive_service/hive_service.dart';
import 'package:feed/core/services/topic_service/topic_service.dart';
import 'package:feed/remote/api/api_service.dart';

class TopicServiceImpl implements TopicService {
  final APIService _apiService = locator<APIService>();
  final HiveService _hiveService = locator<HiveService>();

  List<Topic> _allTopics = [];

  List<Topic> get topics => _allTopics;

  @override
  Future<List<Topic>> getTopics() async {
    List<Topic> topics = [];

    var topicRes = await _apiService.fetchTopics();

    if (topicRes is List) {
      for (var jsonItem in topicRes) {
        topics.add(Topic.fromJson(jsonItem));
      }
    }

    _allTopics = topics;

    return topics;
  }

  @override
  Future<List<String>> getSelectedTopics(String userId) async {
    List<String> topics = [];

    var result = await _hiveService.fetchList<String>(
        boxName: AppStrings.userSelectedTopics);

    /// There's no selected topics from Hive, So fetch them from API Call
    if (result.isFailed || result.success!.isEmpty) {
      var profile = await _apiService.getProfile(userID: userId);

      if (!(profile is Failure)) topics = profile;
    }

    /// The topics are selected and stored in Hive, so we can get them from Hive.
    else {
      topics = result.success!;
    }

    return topics;
  }

  @override
  Future updateSelectedTopics(User user, List<String> topicIds) {
    // TODO: implement updateSelectedTopics
    throw UnimplementedError();
  }
}
