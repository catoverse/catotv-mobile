import 'package:feed/core/mixins/snackbar_helper.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/ui/base/auth_viewmodel.dart';
import 'package:feed/ui/base/feed_viewmodel.dart';
import 'data/feed_data.dart';

class RestrictedHomeViewModel extends AuthenticationViewModel
    with BaseFeedViewModel, SnackbarHelper {
  List<Video> _videos = [];

  @override
  Future getVideos() async {
    feedData.forEach((json) => _videos.add(Video.fromJson(json)));
    notifyListeners();
  }

  @override
  List<Video> get videos => _videos;
}
