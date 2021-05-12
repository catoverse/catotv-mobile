import 'package:feed/core/models/topic/topic.dart';

abstract class TopicService {
  Future<List<Topic>> getTopics();
}
