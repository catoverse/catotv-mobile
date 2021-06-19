import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/feed_service/feed_service.dart';
import 'package:feed/feedplayer/controller.dart';
import 'package:feed/firebase/dynamic_links.dart';
import 'package:share/share.dart';
import 'package:stacked/stacked.dart';

class FeedViewModel extends BaseViewModel {
  final DynamicLinksService _dynamicLinksService =
      locator<DynamicLinksService>();

  final FeedPlayerController controller = FeedPlayerController();
  final FeedService _feedService = locator<FeedService>();

  int skip = 0;

  List<Video> videos = [];

  Future shareVideo(Video video) async {
    String url = await _dynamicLinksService.shareVideo(video);
    Share.share("Checkout ${video.title} at $url");
  }

  getVideos({bool dispose = false}) async {
    // For every new API Fetch the olden videos neeeds to be disposed
    if (dispose) {
      controller.dispose();
    }

    setBusy(true);

    var newVideos = await _feedService.fetchVideos(skip: skip);

    setBusy(false);

    videos = newVideos;
    skip += newVideos.length;

    notifyListeners();
  }

  Future<void> refresh() async => await getVideos(dispose: true);
}
