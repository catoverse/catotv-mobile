import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/youtube_service/youtube_service.dart';
import 'package:feed/ui/restricted_home/data/feed_data.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

abstract class $FakeFeedService {
  List<Video> get videos;
  Future fetchVideos();
}

class FakeApi {
  Future getVideos({bool throwError: false}) async {
    await Future.delayed(Duration(milliseconds: 500));

    List<Video> videos = [];

    feedData.forEach((json) => videos.add(Video.fromJson(json)));

    if (throwError) throw Exception("Failed to fetch videos ");

    return videos;
  }
}

class FakeFeedImpl with ReactiveServiceMixin implements $FakeFeedService {
  FakeFeedImpl() {
    listenToReactiveValues([_videos]);
  }

  final FakeApi fakeApi = FakeApi();
  final YoutubeService youtubeService = locator<YoutubeService>();

  RxValue<List<Video>> _videos = RxValue<List<Video>>([]);

  @override
  Future fetchVideos() async {
    print("Getting videos");
    var result = await fakeApi.getVideos();

    if (result is List) {
      _videos.value = result as List<Video>;
    }
    print("Got videos");
  }

  Future fetchStreams(int index) async {
    List<Video> videos = _videos.value;

    if (videos.length == 0) return;

    String streamUrl = await youtubeService.getStream(videos[index].youtubeUrl);
    videos[index] = videos[index].copyWith(videoUrl: streamUrl);

    print("got the streamUrl for $index : $streamUrl");
    _videos.value = videos;
  }

  @override
  List<Video> get videos => _videos.value;
}
