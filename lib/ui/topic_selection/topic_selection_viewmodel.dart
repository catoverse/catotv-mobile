import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/topic_service.dart';
import 'package:feed/core/services/user_service.dart';
import 'package:feed/core/services/video_manager_service.dart';
import 'package:flutter/foundation.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TopicSelectionViewModel extends BaseViewModel {
  List<String> selectedTopicIds = [];
  List<Topic> topicCheckList = [];

  final TopicService _topicService = locator<TopicService>();
  final UserService _userService = locator<UserService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final VideoManagerService _videoManagerService = locator<VideoManagerService>();

  bool get hasTopics => selectedTopicIds.isNotEmpty;

  void selectTopic(int index) {
    debugPrint("Selected topic $index");

    bool selected = !topicCheckList[index].isSelected!;

    if (selected) {
      selectedTopicIds.add(topicCheckList[index].id);
    } else {
      selectedTopicIds.remove(topicCheckList[index].id);
    }

    topicCheckList[index] = topicCheckList[index].copyWith(isSelected: selected);

    debugPrint("Selected Topics : $selectedTopicIds");
    notifyListeners();
  }

  Future getTopics({bool isUpdate = false}) async {
    setBusy(true);
    var result = await _topicService.getTopics();

    topicCheckList = result;

    if (isUpdate) {
      await getSelectedTopics();
    }

    setBusy(false);
    notifyListeners();
  }

  Future storeSelectedTopics({bool isUpdate = false}) async {
    setBusy(true);
    if (isUpdate) {
      await _userService.updateProfile(topicIds: selectedTopicIds);
    } else {
      await _userService.createProfile(topicIds: selectedTopicIds);
    }

    //TODO: Indicate the topics are stored successfully
    //TODO: Subscribe to topics

    return gotoHome(isUpdate: isUpdate);
  }

  Future getSelectedTopics() async {
    var result = await _topicService.getSelectedTopics(_userService.currentUser.id);

    selectedTopicIds = result;

    for (var item in result) {
      var selectedTopic = topicCheckList.firstWhere((Topic topic) => topic.id == item);
      int index = topicCheckList.indexOf(selectedTopic);

      topicCheckList[index] = selectedTopic.copyWith(isSelected: true);
    }
  }

  void onSkip({bool isUpdate = false}) async {
    if (isUpdate) {
      gotoHome(isUpdate: true);
    } else {
      selectedTopicIds.addAll(topicCheckList.map((Topic topic) => topic.id));
      await storeSelectedTopics();
    }
  }

  void gotoHome({bool isUpdate = false}) {
    if (isUpdate) {
      _navigationService.back();
      _videoManagerService.addStream(FeedRouteState.onit);
    } else {
      _navigationService.replaceWith(Routes.feedView);
    }
  }
}
