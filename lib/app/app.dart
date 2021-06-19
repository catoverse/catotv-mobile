import 'package:connectivity/connectivity.dart';
import 'package:feed/firebase/analytics.dart';
import 'package:feed/firebase/dynamic_links.dart';
import 'package:feed/core/services/hive_service/hive_service.dart';
import 'package:feed/core/services/hive_service/hive_service_impl.dart';
import 'package:feed/core/services/topic_service/topic_service.dart';
import 'package:feed/core/services/topic_service/topic_service_impl.dart';
import 'package:feed/core/services/user_service.dart';
import 'package:feed/core/services/feed_service.dart';
import 'package:feed/core/services/youtube_service/youtube_service.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:feed/remote/api/api_service_impl.dart';
import 'package:feed/remote/client.dart';
import 'package:feed/remote/connectivity/connectivity_service.dart';
import 'package:feed/remote/connectivity/connectivity_service_impl.dart';
import 'package:feed/ui/home/home_view.dart';
import 'package:feed/ui/invite/invite_view.dart';
import 'package:feed/ui/onboarding/onboarding_view.dart';
import 'package:feed/ui/restricted_home/restricted_home_view.dart';
import 'package:feed/ui/startup/startup_view.dart';
import 'package:feed/ui/topic_selection/topic_selection_view.dart';
import 'package:feed/ui/update/update_view.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked/stacked_annotations.dart';

import 'injection.dart';

/// The @StackedApp annotation generates
/// a. [StackedRouter] with specifed routes easy for navigation out of UI
///    Achives this using auto_route package
/// b. Injects the specifed dependencies and return the locator
///    Achieves this using get_it package
/// c. A beautiful [Logger] useful to log information, progress, exceptions and errors
@StackedApp(
  routes: [
    MaterialRoute(page: StartUpView, initial: true),
    MaterialRoute(page: UpdateView),
    MaterialRoute(page: OnboardingView),
    MaterialRoute(page: RestrictedHomeView),
    MaterialRoute(page: TopicSelectionView),
    MaterialRoute(page: InviteView),
    MaterialRoute(page: HomeView),
  ],
  dependencies: [
    Presolve(
      classType: HiveInjection,
      presolveUsing: HiveInjection.getInstance,
    ),
    Presolve(
      classType: PackageInjection,
      presolveUsing: PackageInjection.getInstance,
    ),
    Presolve(
      classType: SharedPreferences,
      presolveUsing: SharedPreferences.getInstance,
    ),
    LazySingleton(classType: Connectivity),
    LazySingleton(
        classType: ConnectivityServiceImpl, asType: ConnectivityService),

    /// Uses [GQLInjection] to access [GraphQLClient]
    LazySingleton(classType: RemoteClient),

    /// Uses [RemoteClient]
    LazySingleton(classType: APIServiceImpl, asType: APIService),

    /// Wrapper around [HiveInterface] to access [Database]
    LazySingleton(classType: HiveServiceImpl, asType: HiveService),

    /// Stacked Services to use readily made services
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: FirebaseAuthenticationService),

    /// Custom services to make things work for the application
    LazySingleton(classType: UserService),
    LazySingleton(classType: Client),
    LazySingleton(classType: YoutubeService),
    LazySingleton(classType: TopicServiceImpl, asType: TopicService),
    LazySingleton(classType: FeedService),
    LazySingleton(classType: DynamicLinksService),
    LazySingleton(classType: AnalyticsService),
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
