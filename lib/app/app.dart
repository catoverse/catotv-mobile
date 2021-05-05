import 'package:feed/app/injection.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:feed/core/services/user_service/user_service_impl.dart';
import 'package:feed/ui/home/home_view.dart';
import 'package:feed/ui/login/login_view.dart';
import 'package:feed/ui/startup/startup_view.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked/stacked_annotations.dart';

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
    MaterialRoute(page: LoginView),
  ],
  dependencies: [
    Presolve(
      classType: HiveInjection,
      presolveUsing: HiveInjection.getInstance,
    ),

    /// Stacked Services to use readily made services
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),

    /// Actual Services that are required for our application
    LazySingleton(classType: UserServiceImpl, asType: UserService),
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
