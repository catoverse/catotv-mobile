import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/video_service.dart';
import 'package:feed/ui/base/feedmodel.dart';

class BookmarksViewModel extends BaseFeedModel {
  final _videoService = locator<VideoService>();

  List<Video> _bookmarkedVideos = [];

  @override
  Future getData() async {
    setBusy(true);

    await _videoService.syncBookmarks();

    var newVideos = await _videoService.getBookmarkedVideos();

    if (newVideos.isNotEmpty) _bookmarkedVideos = newVideos;
    setBusy(false);
  }

  @override
  getVideo(String videoId) {}

  @override
  Future<void> refresh() async => getData();

  @override
  List<Video> get videos => _bookmarkedVideos;
}
