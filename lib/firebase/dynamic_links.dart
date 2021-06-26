import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/video_service.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

class DynamicLinksService {
  Future<String> shareVideo(Video video) async {
    String videoID = VideoService.convertUrlToId(video.videoUrl)!;

    Uri fallbackURL = Uri.parse("https://cato.tv/video/$videoID");

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
