// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../ui/home/home_view.dart';
import '../ui/login/login_view.dart';
import '../ui/onboarding/onboarding_view.dart';
import '../ui/restricted_home/restricted_home_view.dart';
import '../ui/startup/startup_view.dart';
import '../ui/update/update_view.dart';

class Routes {
  static const String startUpView = '/start-up-view';
  static const String homeView = '/home-view';
  static const String updateView = '/update-view';
  static const String loginView = '/login-view';
  static const String onboardingView = '/';
  static const String restrictedHomeView = '/restricted-home-view';
  static const all = <String>{
    startUpView,
    homeView,
    updateView,
    loginView,
    onboardingView,
    restrictedHomeView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startUpView, page: StartUpView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.updateView, page: UpdateView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.onboardingView, page: OnboardingView),
    RouteDef(Routes.restrictedHomeView, page: RestrictedHomeView),
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
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    UpdateView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => UpdateView(),
        settings: data,
      );
    },
    LoginView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginView(),
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
  };
}
