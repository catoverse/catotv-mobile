import 'package:feed/core/mixins/snackbar_helper.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/ui/base/auth_viewmodel.dart';
import 'package:feed/ui/restricted_home/data/feed_data.dart';

class RestrictedHomeViewModel extends AuthenticationViewModel
    with SnackbarHelper {
  List<Video> videos = [];

  getVideos() {
    feedData.forEach((json) => videos.add(Video.fromJson(json)));
    notifyListeners();
  }
}
