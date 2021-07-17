import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/core/mixins/snackbar_helper.dart';
import 'package:feed/core/mixins/auth.dart';
import 'package:feed/core/services/url_service.dart';
import 'package:feed/core/services/video_service.dart';
import 'package:stacked/stacked.dart';

class OnboardingViewModel extends BaseViewModel with SnackbarHelper, AuthMixin {
  final _videoService = locator<VideoService>();
  final _urlLauncher = locator<OpenLinkService>();
  int currentIndex = 0;

  void navigateToRestrictedHome() => showConstraint(
      title: "Hi There!",
      description: "Welcome and we're happy to have you onboard",
      mainButton: "I already have an account",
      secondaryButton: "Continue without logging in",
      secondaryRoute: Routes.restrictedHomeView);

  void setIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  onModelReady() async {
    await _videoService.getUrlFromAPI("https://youtu.be/lEXBxijQREo");
  }

  openTermsOfService() async =>
      //TODO: Add terms of service link
      _urlLauncher
          .openLink("https://www.notion.so/28ffdd083dc3473e9c2da6ec011b58ac");

  openPrivacyPolicy() async =>
      //TODO: Add privacy policy
      _urlLauncher
          .openLink("https://www.notion.so/28ffdd083dc3473e9c2da6ec011b58ac");
}
