import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/topic_service.dart';
import 'package:feed/core/services/user_service.dart';
import 'package:flutter/foundation.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TopicSelectionViewModel extends BaseViewModel {
  List<String> selectedTopics = [];
  List<Topic> topicCheckList = [];

  final TopicService _topicService = locator<TopicService>();
  final UserService _userService = locator<UserService>();
  final NavigationService _navigationService = locator<NavigationService>();

  bool get hasTopics => selectedTopics.isNotEmpty;

  void selectTopic(int index) {
    debugPrint("Selected topic $index");

    bool selected = !topicCheckList[index].isSelected!;

    if (selected) {
      selectedTopics.add(topicCheckList[index].id);
    } else {
      selectedTopics.remove(topicCheckList[index].id);
    }

    topicCheckList[index] =
        topicCheckList[index].copyWith(isSelected: selected);

    debugPrint("Selected Topics : $selectedTopics");
    notifyListeners();
  }

  Future getTopics() async {
    setBusy(true);
    var result = await _topicService.getTopics();
    setBusy(false);

    topicCheckList = result;
    notifyListeners();
  }

  Future storeSelectedTopics({bool isUpdate = false}) async {
    setBusy(true);
    await _userService.createProfile(topicIds: selectedTopics);
    setBusy(false);

    //TODO: Indicate the topics are stored successfully
    //TODO: Subscribe to topics

    return gotoHome();
  }

  Future getSelectedTopics() async {
    var result =
        await _topicService.getSelectedTopics(_userService.currentUser.id);

    selectedTopics = result;

    for (var item in result) {
      var selectedTopic =
          topicCheckList.firstWhere((element) => element.id == item);
      int index = topicCheckList.indexOf(selectedTopic);

      topicCheckList[index] = selectedTopic.copyWith(isSelected: true);
    }

    notifyListeners();
  }

  void gotoHome() => _navigationService.replaceWith(Routes.feedView);
}
