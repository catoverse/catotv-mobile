// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../screens/app_redirect.dart';
import '../screens/home/home.dart';
import '../screens/home/profile_overview.dart';
import '../screens/no_distraction_settings.dart';
import '../screens/notification_settings.dart';
import '../screens/onboard/onboard_screen.dart';
import '../screens/profile/profile.dart';
import '../screens/single_post/single_post.dart';
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
  static const String _singlePostScreen = '/video/:postId';
  static String singlePostScreen({@required dynamic postId}) =>
      '/video/$postId';
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
    _singlePostScreen,
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
    RouteDef(CatoRoutes._singlePostScreen, page: SinglePostScreen),
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
        maintainState: true,
      );
    },
    ProfileScreen: (data) {
      final args = data.getArgs<ProfileScreenArguments>(
        orElse: () => ProfileScreenArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProfileScreen(key: args.key),
        settings: data,
      );
    },
    ProfileOverviewScreen: (data) {
      final args = data.getArgs<ProfileOverviewScreenArguments>(
        orElse: () => ProfileOverviewScreenArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProfileOverviewScreen(key: args.key),
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
    SinglePostScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) =>
            SinglePostScreen(postId: data.pathParams['postId'].stringValue),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ProfileScreen arguments holder class
class ProfileScreenArguments {
  final Key key;
  ProfileScreenArguments({this.key});
}

/// ProfileOverviewScreen arguments holder class
class ProfileOverviewScreenArguments {
  final Key key;
  ProfileOverviewScreenArguments({this.key});
}
