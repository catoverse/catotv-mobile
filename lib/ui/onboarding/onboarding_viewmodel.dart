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

// class OnboardingViewModel extends BaseViewModel with SnackbarHelper {
//   int currentIndex = 0;
//   final PageController controller = PageController(initialPage: 0);
//   final NavigationService _navigationService = locator<NavigationService>();

//   void onPageChanged(int page) {
//     currentIndex = page;

//     notifyListeners();
//   }

//   void makePagesLoop() {
//     Timer.periodic(Duration(seconds: 4), (Timer timer) {
//       if (currentIndex < 2) {
//         currentIndex++;
//       } else {
//         currentIndex = 0;
//       }

//       controller.animateToPage(
//         currentIndex,
//         duration: Duration(milliseconds: 250),
//         curve: Curves.easeIn,
//       );
//     });
//   }

//   Future navigateToRestrictedHome() async {
//     _navigationService.navigateTo(Routes.restrictedHomeView);
//   }
// }
