import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/ui/base/snackbar_helper.dart';
import 'package:feed/core/services/video_service.dart';
import 'package:feed/ui/base/auth.dart';
import 'package:stacked/stacked.dart';

class OnboardingViewModel extends BaseViewModel with SnackbarHelper, AuthMixin {
  final _videoService = locator<VideoService>();
  int currentIndex = 0;

  void navigateToRestrictedHome() => showConstraint(
      title: "Hi There!",
      description: "Welcome and we're happy to have you onboard",
      mainButton: "I already have an account",
      secondaryButton: "I'm new here",
      secondaryRoute: Routes.restrictedHomeView);

  void setIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  onModelReady() async {
    await _videoService.getUrlFromAPI("https://youtu.be/lEXBxijQREo");
  }
}
