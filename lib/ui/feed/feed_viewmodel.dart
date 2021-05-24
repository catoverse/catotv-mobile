import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/user/user.dart';
import 'package:feed/core/models/video/video.dart';
import 'package:feed/core/services/feed_service/feed_service.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:stacked/stacked.dart';

class FeedViewModel extends FutureViewModel {
  final FeedService _feedService = locator<FeedService>();
  final UserService _userService = locator<UserService>();
  User? get currentUser => _userService.currentUser;

  List<Video> get videos => _feedService.videos;

  int _currentPlayingIndex = 0;
  late Function callback;

  int get currentPlayingIndex => _currentPlayingIndex;

  updateCurrentPlayingIndex(int currentPlayingIndex) {
    _currentPlayingIndex = currentPlayingIndex;
    notifyListeners();
  }

  @override
  Future futureToRun() async {
    var res = await _feedService.fetchVideos(currentUser!.id);

    if (res is bool && res) {
      return _feedService.videos;
    }
  }

  updateCallBack(Function call) {
    callback = call;
    notifyListeners();
  }

  @override
  void onData(data) {
    callback();
    super.onData(data);
  }
}
