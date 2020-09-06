// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../screens/app_redirect.dart';
import '../screens/home/home.dart';
import '../screens/home/profile_overview.dart';
import '../screens/no_distraction_settings.dart';
import '../screens/notification_settings.dart';
import '../screens/onboard/onboard_screen.dart';
import '../screens/profile.dart';
import '../screens/splash/splash_screen.dart';
import '../screens/topic_selection/topic_selection.dart';

class CatoRoutes {
  static const String splashScreen = '/';
  static const String onboardingScreen = '/onboarding-screen';
  static const String topicSelectionScreen = '/topic-selection-screen';
  static const String homeScreen = '/home-screen';
  static const String profileScreen = '/profile-screen';
  static const String profileOverviewScreen = '/profile-overview-screen';
  static const String notificationSettingScreen =
      '/notification-setting-screen';
  static const String noDistractionSettingsScreen =
      '/no-distraction-settings-screen';
  static const String appRedirectScreen = '/app-redirect-screen';
  static const all = <String>{
    splashScreen,
    onboardingScreen,
    topicSelectionScreen,
    homeScreen,
    profileScreen,
    profileOverviewScreen,
    notificationSettingScreen,
    noDistractionSettingsScreen,
    appRedirectScreen,
  };
}

class CatoRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(CatoRoutes.splashScreen, page: SplashScreen),
    RouteDef(CatoRoutes.onboardingScreen, page: OnboardingScreen),
    RouteDef(CatoRoutes.topicSelectionScreen, page: TopicSelectionScreen),
    RouteDef(CatoRoutes.homeScreen, page: HomeScreen),
    RouteDef(CatoRoutes.profileScreen, page: ProfileScreen),
    RouteDef(CatoRoutes.profileOverviewScreen, page: ProfileOverviewScreen),
    RouteDef(CatoRoutes.notificationSettingScreen,
        page: NotificationSettingScreen),
    RouteDef(CatoRoutes.noDistractionSettingsScreen,
        page: NoDistractionSettingsScreen),
    RouteDef(CatoRoutes.appRedirectScreen, page: AppRedirectScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    OnboardingScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => OnboardingScreen(),
        settings: data,
      );
    },
    TopicSelectionScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => TopicSelectionScreen(),
        settings: data,
      );
    },
    HomeScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => HomeScreen(),
        settings: data,
      );
    },
    ProfileScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProfileScreen(),
        settings: data,
      );
    },
    ProfileOverviewScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProfileOverviewScreen(),
        settings: data,
      );
    },
    NotificationSettingScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => NotificationSettingScreen(),
        settings: data,
      );
    },
    NoDistractionSettingsScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => NoDistractionSettingsScreen(),
        settings: data,
      );
    },
    AppRedirectScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => AppRedirectScreen(),
        settings: data,
      );
    },
  };
}
