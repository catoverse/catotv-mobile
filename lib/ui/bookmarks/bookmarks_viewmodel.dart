import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/video_service.dart';
import 'package:stacked/stacked.dart';

class BookmarksViewModel extends BaseViewModel {
  final VideoService _videoService = locator<VideoService>();
  
  List<Video> bookmarkedVideos = [];

  void fetchBookmarks() async {
    setBusy(true);
    bookmarkedVideos = await _videoService.getBookmarkedVideos();
    setBusy(false);

    notifyListeners();
  }
}
