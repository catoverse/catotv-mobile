import 'package:feed/core/services/hive_service/hive_service.dart';
import 'package:feed/core/services/hive_service/hive_service_impl.dart';
import 'package:feed/core/services/user_service/user_service_impl.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:feed/remote/api/api_service_impl.dart';
import 'package:feed/remote/client.dart';
import 'package:feed/remote/connectivity/connectivity_service.dart';
import 'package:feed/remote/connectivity/connectivity_service_impl.dart';
import 'package:feed/ui/home/home_view.dart';
import 'package:feed/ui/login/login_view.dart';
import 'package:feed/ui/onboarding/onboarding_view.dart';
import 'package:feed/ui/restricted_home/restricted_home_view.dart';
import 'package:feed/ui/startup/startup_view.dart';
import 'package:feed/ui/update/update_view.dart';
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
    MaterialRoute(page: HomeView),
    MaterialRoute(page: UpdateView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: OnboardingView),
    MaterialRoute(page: RestrictedHomeView),
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

    /// Actual Services that are required for our application
    LazySingleton(classType: UserServiceImpl, asType: UserService),
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
