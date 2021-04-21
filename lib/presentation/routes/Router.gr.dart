// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/topic/topic.dart';
import '../screens/app_redirect/app_redirect.dart';
import '../screens/app_redirect/no_distraction_settings.dart';
import '../screens/home/home.dart';
import '../screens/home/profile_overview.dart';
import '../screens/notification_settings.dart';
import '../screens/onboard/onboard.dart';
import '../screens/onboard_invite/onbord_invite.dart';
import '../screens/onboard_login/onbord_login.dart';
import '../screens/onboard_login/onbord_login_back.dart';
import '../screens/onboard_selection/onboard_selection.dart';
import '../screens/profile/profile.dart';
import '../screens/search/videos_by_category.dart';
import '../screens/single_post/single_post.dart';
import '../screens/splash/splash_screen.dart';
import '../screens/topic_selection/topic_selection.dart';

class CatoRoutes {
  static const String splashScreen = '/';
  static const String onboardScreen = '/onboard-screen';
  static const String onboardInviteScreen = '/onboard-invite-screen';
  static const String onboardLoginScreen = '/onboard-login-screen';
  static const String onboardLoginBackScreen = '/onboard-login-back-screen';
  static const String onboardSelectionScreen = '/onboard-selection-screen';
  static const String topicSelectionScreen = '/topic-selection-screen';
  static const String homeScreen = '/home-screen';
  static const String profileScreen = '/profile-screen';
  static const String profileOverviewScreen = '/profile-overview-screen';
  static const String notificationSettingScreen =
      '/notification-setting-screen';
  static const String noDistractionSettingsScreen =
      '/no-distraction-settings-screen';
  static const String appRedirectScreen = '/app-redirect-screen';
  static const String videosByCategoryScreen = '/videos-by-category-screen';
  static const String singlePostScreen = '/single-post-screen';
  static const all = <String>{
    splashScreen,
    onboardScreen,
    onboardInviteScreen,
    onboardLoginScreen,
    onboardLoginBackScreen,
    onboardSelectionScreen,
    topicSelectionScreen,
    homeScreen,
    profileScreen,
    profileOverviewScreen,
    notificationSettingScreen,
    noDistractionSettingsScreen,
    appRedirectScreen,
    videosByCategoryScreen,
    singlePostScreen,
  };
}

class CatoRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(CatoRoutes.splashScreen, page: SplashScreen),
    RouteDef(CatoRoutes.onboardScreen, page: OnboardScreen),
    RouteDef(CatoRoutes.onboardInviteScreen, page: OnboardInviteScreen),
    RouteDef(CatoRoutes.onboardLoginScreen, page: OnboardLoginScreen),
    RouteDef(CatoRoutes.onboardLoginBackScreen, page: OnboardLoginBackScreen),
    RouteDef(CatoRoutes.onboardSelectionScreen, page: OnboardSelectionScreen),
    RouteDef(CatoRoutes.topicSelectionScreen, page: TopicSelectionScreen),
    RouteDef(CatoRoutes.homeScreen, page: HomeScreen),
    RouteDef(CatoRoutes.profileScreen, page: ProfileScreen),
    RouteDef(CatoRoutes.profileOverviewScreen, page: ProfileOverviewScreen),
    RouteDef(CatoRoutes.notificationSettingScreen,
        page: NotificationSettingScreen),
    RouteDef(CatoRoutes.noDistractionSettingsScreen,
        page: NoDistractionSettingsScreen),
    RouteDef(CatoRoutes.appRedirectScreen, page: AppRedirectScreen),
    RouteDef(CatoRoutes.videosByCategoryScreen, page: VideosByCategoryScreen),
    RouteDef(CatoRoutes.singlePostScreen, page: SinglePostScreen),
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
    OnboardScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => OnboardScreen(),
        settings: data,
      );
    },
    OnboardInviteScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => OnboardInviteScreen(),
        settings: data,
      );
    },
    OnboardLoginScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => OnboardLoginScreen(),
        settings: data,
      );
    },
    OnboardLoginBackScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => OnboardLoginBackScreen(),
        settings: data,
      );
    },
    OnboardSelectionScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => OnboardSelectionScreen(),
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
      final args = data.getArgs<AppRedirectScreenArguments>(
        orElse: () => AppRedirectScreenArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => AppRedirectScreen(startStep: args.startStep),
        settings: data,
      );
    },
    VideosByCategoryScreen: (data) {
      final args = data.getArgs<VideosByCategoryScreenArguments>(
        orElse: () => VideosByCategoryScreenArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => VideosByCategoryScreen(
          key: args.key,
          topic: args.topic,
        ),
        settings: data,
      );
    },
    SinglePostScreen: (data) {
      final args = data.getArgs<SinglePostScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SinglePostScreen(postId: args.postId),
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

/// AppRedirectScreen arguments holder class
class AppRedirectScreenArguments {
  final int startStep;
  AppRedirectScreenArguments({this.startStep = 1});
}

/// VideosByCategoryScreen arguments holder class
class VideosByCategoryScreenArguments {
  final Key key;
  final Topic topic;
  VideosByCategoryScreenArguments({this.key, this.topic});
}

/// SinglePostScreen arguments holder class
class SinglePostScreenArguments {
  final String postId;
  SinglePostScreenArguments({@required this.postId});
}
