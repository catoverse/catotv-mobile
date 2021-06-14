import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/core/models/topic/topic.dart';
import 'package:feed/core/services/topic_service/topic_service.dart';
import 'package:feed/core/services/user_service/user_service.dart';
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
    setBusy(true);
    var result = await _topicService.getTopics();
    setBusy(false);

    topicCheckList = result;
    notifyListeners();
  }

  Future storeSelectedTopics() async {
    setBusy(true);

    var result = await _userService.isUserProfileExists();

    setBusy(false);

    if (!result)
      _userService.createProfile(topicIds: selectedTopics);
    else
      _topicService.updateSelectedTopics(
          _userService.currentUser, selectedTopics);

    return gotoHome();
  }

  void gotoHome() => _navigationService.replaceWith(Routes.homeView);
}
