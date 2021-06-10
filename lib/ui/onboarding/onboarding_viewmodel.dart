import 'package:feed/app/app.locator.dart';
import 'package:feed/core/mixins/snackbar_helper.dart';
import 'package:feed/core/services/fakefeed_service.dart';
import 'package:feed/ui/feed/feed_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardingViewModel extends ReactiveViewModel with SnackbarHelper {
  int currentPage = 0;
  final NavigationService _navigationService = locator<NavigationService>();
  final FakeFeedImpl _feedImpl = locator<FakeFeedImpl>();

  Future navigateToRestrictedHome() async {
    _navigationService.navigateToView(FeedView());
  }

  onPageChanged(int page) {
    currentPage = page;
    notifyListeners();
  }

  Future getPosts() async {
    await _feedImpl.fetchVideos();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_feedImpl];
}