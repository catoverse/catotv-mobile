import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/core/mixins/snackbar_helper.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardingViewModel extends IndexTrackingViewModel with SnackbarHelper {
  final NavigationService _navigationService = locator<NavigationService>();

  Future navigateToRestrictedHome() async {
    _navigationService.replaceWith(Routes.restrictedHomeView);
  }
}
