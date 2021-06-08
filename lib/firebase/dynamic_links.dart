import 'package:feed/core/models/video/video.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

class DynamicLinksService {
  Future<String> shareVideo(Video video) async {
    // String videoID = YoutubePlayer.convertUrlToId(video.video_url)!;

    Uri fallbackURL = Uri.parse("https://cato.tv/video/video_id");

    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: 'https://catoverse.page.link',
      link: fallbackURL,
      androidParameters: AndroidParameters(
          packageName: 'cato.tv.feed', fallbackUrl: fallbackURL),
      iosParameters: IosParameters(
          bundleId: 'cato.tv.feed',
          minimumVersion: '1.0.1',
          appStoreId: '123456789',
          fallbackUrl: fallbackURL),
    );

    final ShortDynamicLink dynamicUrl = await parameters.buildShortLink();

    return dynamicUrl.shortUrl.toString();
  }
}
