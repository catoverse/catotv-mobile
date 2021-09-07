import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/core/mixins/snackbar_helper.dart';
import 'package:feed/core/mixins/auth.dart';
import 'package:feed/core/services/url_service.dart';
import 'package:feed/core/services/video_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardingViewModel extends BaseViewModel with SnackbarHelper, AuthMixin {
  final _videoService = locator<VideoService>();
  final _urlLauncher = locator<OpenLinkService>();
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();

  void navigateToRestrictedHome() =>
      _navigationService.replaceWith(Routes.restrictedHomeView);

  onModelReady() async {
    await _videoService.getUrlFromAPI("https://youtu.be/lEXBxijQREo");
  }

  void requestInvite() => _navigationService.navigateTo(Routes.bookmarksView);

  void showInvite() => _dialogService.showDialog(
      title: "🎉 Welcome",
      description:
          "CatoTV is an effort to make education accessible to everyone.\n\nThe gates of CatoTV are currently closed for new users but you can request your invite and we'll get back to you.");

  openTermsOfService() async => _urlLauncher.openLink(
      "https://catoverse.notion.site/Privacy-Policy-759493db56a34396ae30950028ae978e");
}
