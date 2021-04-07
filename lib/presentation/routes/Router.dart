import 'package:auto_route/auto_route_annotations.dart';
import 'package:cato_feed/presentation/screens/app_redirect/app_redirect.dart';
import 'package:cato_feed/presentation/screens/onboard/onboard.dart';
import 'package:cato_feed/presentation/screens/onboard_invite/onbord_invite.dart';
import 'package:cato_feed/presentation/screens/onboard_login/onbord_login.dart';
import 'package:cato_feed/presentation/screens/onboard_login/onbord_login_back.dart';
import 'package:cato_feed/presentation/screens/onboard_selection/onboard_selection.dart';
import 'package:cato_feed/presentation/screens/single_post/single_post.dart';
import 'package:cato_feed/presentation/screens/topic_selection/topic_selection.dart';
import 'package:cato_feed/presentation/screens/home/home.dart';
import 'package:cato_feed/presentation/screens/app_redirect/no_distraction_settings.dart';
import 'package:cato_feed/presentation/screens/notification_settings.dart';
import 'package:cato_feed/presentation/screens/onboard/onboard_screen.dart';
import 'package:cato_feed/presentation/screens/profile/profile.dart';
import 'package:cato_feed/presentation/screens/home/profile_overview.dart';
import 'package:cato_feed/presentation/screens/splash/splash_screen.dart';

@AdaptiveAutoRouter(routes: <AutoRoute>[
  AdaptiveRoute(page: SplashScreen, initial: true),
  AdaptiveRoute(page: OnboardScreen),
  AdaptiveRoute(page: OnboardInviteScreen),
  AdaptiveRoute(page: OnboardLoginScreen),
  AdaptiveRoute(page: OnboardLoginBackScreen),
  AdaptiveRoute(page: OnboardSelectionScreen),
  AdaptiveRoute(page: TopicSelectionScreen),
  AdaptiveRoute(page: HomeScreen, maintainState: true),
  AdaptiveRoute(page: ProfileScreen),
  AdaptiveRoute(page: ProfileOverviewScreen),
  AdaptiveRoute(page: NotificationSettingScreen),
  AdaptiveRoute(page: NoDistractionSettingsScreen),
  AdaptiveRoute(page: AppRedirectScreen),
  AdaptiveRoute(page: SinglePostScreen, path: '/video/:postId' )
], routesClassName: 'CatoRoutes')
class $CatoRouter {}
