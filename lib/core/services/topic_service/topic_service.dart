import 'package:feed/core/models/app_models.dart';

/// Interface to manage all things related to [Topic]
abstract class TopicService {
  /// Fetches available [Topic] from API
  Future<List<Topic>> getTopics();

  /// gets the topics selected by the user
  ///
  /// if there are no topics selected, it returns all available topics
  Future<List<String>> getSelectedTopics(String userId);

  /// sends the selected topics to the API
  Future updateSelectedTopics(User user, List<String> topicIds);
}
