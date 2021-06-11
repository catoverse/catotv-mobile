import 'package:feed/core/models/topic/topic.dart';
import 'package:stacked/stacked.dart';

class TopicSelectionViewModel extends BaseViewModel {
  List<String> selectedTopics = [];
  List<Topic> topicCheckList = [];

  bool get hasTopics => selectedTopics.isNotEmpty;

  void selectTopic(int index) {
    print("Selected topic $index");

    bool selected = !topicCheckList[index].isSelected!;

    if (selected)
      selectedTopics.add(topicCheckList[index].id);
    else
      selectedTopics.remove(topicCheckList[index].id);

    topicCheckList[index] =
        topicCheckList[index].copyWith(isSelected: selected);

    print("Selected Topics : $selectedTopics");
    notifyListeners();
  }

  Future getTopics() async {
    await Future.delayed(Duration(seconds: 1));

    List<Topic> topics = [];

    topicData.forEach((json) => topics.add(Topic.fromJson(json)));

    topicCheckList = topics;

    notifyListeners();
  }

  Future storeSelectedTopics() async {
    //TODO: Profile Service update Topics
  }
}

const List<Map<String, dynamic>> topicData = [
  {"id": "5f5273e59aa66f1d8c150489", "name": "Social"},
  {"id": "5f5273e59aa66f1d8c15048d", "name": "Productivity"},
  {"id": "5f5273e59aa66f1d8c150488", "name": "Career"},
  {"id": "5f5273e59aa66f1d8c15048a", "name": "Health & Nutrition"},
  {"id": "5f5273e59aa66f1d8c15048b", "name": "Intellectual"},
  {"id": "5f5273e59aa66f1d8c15048c", "name": "Emotional"}
];
