// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../ui/home/home_view.dart';
import '../ui/invite/invite_view.dart';
import '../ui/onboarding/onboarding_view.dart';
import '../ui/restricted_home/restricted_home_view.dart';
import '../ui/startup/startup_view.dart';
import '../ui/topic_selection/topic_selection_view.dart';
import '../ui/update/update_view.dart';

class Routes {
  static const String startUpView = '/';
  static const String updateView = '/update-view';
  static const String onboardingView = '/onboarding-view';
  static const String restrictedHomeView = '/restricted-home-view';
  static const String topicSelectionView = '/topic-selection-view';
  static const String inviteView = '/invite-view';
  static const String homeView = '/home-view';
  static const all = <String>{
    startUpView,
    updateView,
    onboardingView,
    restrictedHomeView,
    topicSelectionView,
    inviteView,
    homeView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startUpView, page: StartUpView),
    RouteDef(Routes.updateView, page: UpdateView),
    RouteDef(Routes.onboardingView, page: OnboardingView),
    RouteDef(Routes.restrictedHomeView, page: RestrictedHomeView),
    RouteDef(Routes.topicSelectionView, page: TopicSelectionView),
    RouteDef(Routes.inviteView, page: InviteView),
    RouteDef(Routes.homeView, page: HomeView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartUpView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartUpView(),
        settings: data,
      );
    },
    UpdateView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => UpdateView(),
        settings: data,
      );
    },
    OnboardingView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnboardingView(),
        settings: data,
      );
    },
    RestrictedHomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RestrictedHomeView(),
        settings: data,
      );
    },
    TopicSelectionView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => TopicSelectionView(),
        settings: data,
      );
    },
    InviteView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => InviteView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
  };
}
