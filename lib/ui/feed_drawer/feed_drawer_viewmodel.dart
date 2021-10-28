import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/core/mixins/auth.dart';
import 'package:feed/core/services/share_service.dart';
import 'package:feed/core/services/url_service.dart';
import 'package:feed/core/services/video_manager_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DrawerViewModel extends BaseViewModel with AuthMixin {
  final _launcher = locator<OpenLinkService>();
  final _navigationService = locator<NavigationService>();
  final _shareService = locator<ShareService>();
  final _videoManagerService = locator<VideoManagerService>();

  launchUrl(String url) async => _launcher.openLink(url);

  inviteFriends() async {
    await _shareService.share(
        "Learn what matters. From the best. For Free\nCheck out cato - https://play.google.com/store/apps/details?id=cato.tv.app");
  }

  void viewBookmakrs() {
    _videoManagerService.addStream(FeedRouteState.away);
    _navigationService.navigateTo(Routes.bookmarksView);
  }

   void updateTopics() {
    _videoManagerService.addStream(FeedRouteState.away);
    _navigationService.navigateTo(Routes.topicSelectionView, arguments: TopicSelectionViewArguments(updateTopicSelection: true));
  }
}
