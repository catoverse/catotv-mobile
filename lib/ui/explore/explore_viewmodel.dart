import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/topic/topic.dart';
import 'package:feed/core/services/topic_service/topic_service.dart';
import 'package:stacked/stacked.dart';

class ExploreViewModel extends FutureViewModel {
  TopicService _topicService = locator<TopicService>();

  List<Topic> topics = [];

  @override
  Future futureToRun() async {
    topics = await _topicService.getTopics();
    notifyListeners();
  }
}
