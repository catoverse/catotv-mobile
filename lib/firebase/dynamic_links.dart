import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:stacked_services/stacked_services.dart';

class DynamicLinksService {
  final FirebaseDynamicLinks _instance;
  final _navigationService = locator<NavigationService>();
  final _log = getLogger("DynamicLinksService");

  DynamicLinksService() : _instance = FirebaseDynamicLinks.instance;

  Future<String> shareVideo(Video video) async {
    // String videoID = VideoService.convertUrlToId(video.videoUrl)!;
    String videoID = video.id;

    Uri fallbackURL = Uri.parse("https://cato.tv/video/$videoID");

    _log.v("Generating sharelink for $videoID");

    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: 'https://catoverse.page.link',
      link: fallbackURL,
      androidParameters: AndroidParameters(
          packageName: 'cato.tv.app', fallbackUrl: fallbackURL),
      iosParameters: IosParameters(
          bundleId: 'cato.tv.app',
          minimumVersion: '1.0.1',
          appStoreId: '123456789',
          fallbackUrl: fallbackURL),
    );

    final ShortDynamicLink dynamicUrl = await parameters.buildShortLink();

    return dynamicUrl.shortUrl.toString();
  }

  Future handleDynamicLinks() async {
    // Get the initial dynamic link if the app is opened with a dynamic link
    final PendingDynamicLinkData? data = await _instance.getInitialLink();

    // handle link that has been retrieved
    _handleDeepLink(data);

    // Register a link callback to fire if the app is opened up from the background
    // using a dynamic link.
    FirebaseDynamicLinks.instance.onLink(
        onSuccess: (data) => _handleDeepLink(data),
        onError: (error) async => _log.e(error));
  }

  _handleDeepLink(PendingDynamicLinkData? data) {
    if (data == null) return;

    final Uri deepLink = data.link;
    _log.v('deeplink: $deepLink');

    var isVideo = deepLink.pathSegments.contains('video');

    if (isVideo) {
      var videoUrl = deepLink.toString();
      var videoId = videoUrl.split("video/")[1];
      _navigationService.navigateTo(Routes.singleFeedView,
          arguments: SingleFeedViewArguments(videoId: videoId));
    }
  }
}
