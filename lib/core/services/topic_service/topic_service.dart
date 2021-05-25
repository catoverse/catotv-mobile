import 'package:feed/core/models/topic/topic.dart';

/// Interface to manage all things related to [Topic]
abstract class TopicService {
  /// Fetches available [Topic] from API
  Future<List<Topic>> getTopics();
}
