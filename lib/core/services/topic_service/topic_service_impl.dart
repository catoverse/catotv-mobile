import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/topic/topic.dart';
import 'package:feed/core/models/user/user.dart';
import 'package:feed/core/services/topic_service/topic_service.dart';
import 'package:feed/remote/api/api_service.dart';

class TopicServiceImpl implements TopicService {
  final APIService _apiService = locator<APIService>();

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
  Future<List<Topic>> getSelectedTopics(String userId) async {
    List<Topic> topics = [];

    return topics;
  }

  @override
  Future updateSelectedTopics(User user, List<String> topicIds) {
    // TODO: implement updateSelectedTopics
    throw UnimplementedError();
  }
}
