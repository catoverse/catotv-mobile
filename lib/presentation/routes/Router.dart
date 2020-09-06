import 'package:auto_route/auto_route_annotations.dart';
import 'package:cato_feed/presentation/screens/app_redirect.dart';
import 'package:cato_feed/presentation/screens/topic_selection/topic_selection.dart';
import 'package:cato_feed/presentation/screens/home/home.dart';
import 'package:cato_feed/presentation/screens/no_distraction_settings.dart';
import 'package:cato_feed/presentation/screens/notification_settings.dart';
import 'package:cato_feed/presentation/screens/onboard/onboard_screen.dart';
import 'package:cato_feed/presentation/screens/profile.dart';
import 'package:cato_feed/presentation/screens/home/profile_overview.dart';
import 'package:cato_feed/presentation/screens/splash/splash_screen.dart';

@AdaptiveAutoRouter(routes: <AutoRoute>[
  AdaptiveRoute(page: SplashScreen, initial: true),
  AdaptiveRoute(page: OnboardingScreen),
  AdaptiveRoute(page: TopicSelectionScreen),
  AdaptiveRoute(page: HomeScreen),
  AdaptiveRoute(page: ProfileScreen),
  AdaptiveRoute(page: ProfileOverviewScreen),
  AdaptiveRoute(page: NotificationSettingScreen),
  AdaptiveRoute(page: NoDistractionSettingsScreen),
  AdaptiveRoute(page: AppRedirectScreen),
], routesClassName: 'CatoRoutes')
class $CatoRouter {}
