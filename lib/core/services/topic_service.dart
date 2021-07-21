import 'package:feed/app/app.locator.dart';
import 'package:feed/core/constants/keys.dart';

import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/hive_service/hive_service.dart';
import 'package:feed/remote/api/api_service.dart';

class TopicService {
  final APIService _apiService = locator<APIService>();
  final HiveService _hiveService = locator<HiveService>();

  List<Topic> _allTopics = [];

  List<Topic> get topics => _allTopics;

  /// Fetches all the available [Topic] from API
  Future<List<Topic>> getTopics() async {
    List<Topic> topics = [];

    var topicRes = await _apiService.getTopics();

    if (topicRes is List) {
      for (var jsonItem in topicRes) {
        topics.add(Topic.fromJson(jsonItem));
      }
    }

    _allTopics = topics;

    return topics;
  }

  /// fetches all the [Topic] selected by [User]
  ///
  /// if there are no topics selected, it returns all available [Topic]
  Future<List<String>> getSelectedTopics(String userId) async {
    List<String> topics = [];

    var result =
        await _hiveService.fetchList<String>(boxName: UserSelectedTopicsBox);

    /// There's no selected topics from Hive, So fetch them from API Call
    if (result.isFailed || result.success!.isEmpty) {
      var profile = await _apiService.getUserProfile(userId: userId);

      if (!(profile is Failure)) topics = List<String>.from(profile);
    }

    /// The topics are selected and stored in Hive, so we can get them from Hive.
    else {
      topics = result.success!;
    }

    return topics;
  }

  Future updateSelectedTopics(User user, List<String> topicIds) {
    // TODO: implement updateSelectedTopics
    throw UnimplementedError();
  }
}
