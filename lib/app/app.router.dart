// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/bookmarks/bookmarks_view.dart';
import '../ui/feed/feed_view.dart';
import '../ui/invite/invite_view.dart';
import '../ui/onboarding/onboarding_view.dart';
import '../ui/position/position_view.dart';
import '../ui/restricted_home/restricted_home_view.dart';
import '../ui/single_video/single_video_view.dart';
import '../ui/startup/startup_view.dart';
import '../ui/topic_selection/topic_selection_view.dart';
import '../ui/update/update_view.dart';

class Routes {
  static const String startUpView = '/';
  static const String updateView = '/update-view';
  static const String bookmarksView = '/bookmarks-view';
  static const String onboardingView = '/onboarding-view';
  static const String restrictedHomeView = '/restricted-home-view';
  static const String topicSelectionView = '/topic-selection-view';
  static const String inviteView = '/invite-view';
  static const String feedView = '/feed-view';
  static const String singleFeedView = '/single-feed-view';
  static const String positionView = '/position-view';
  static const all = <String>{
    startUpView,
    updateView,
    bookmarksView,
    onboardingView,
    restrictedHomeView,
    topicSelectionView,
    inviteView,
    feedView,
    singleFeedView,
    positionView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startUpView, page: StartUpView),
    RouteDef(Routes.updateView, page: UpdateView),
    RouteDef(Routes.bookmarksView, page: BookmarksView),
    RouteDef(Routes.onboardingView, page: OnboardingView),
    RouteDef(Routes.restrictedHomeView, page: RestrictedHomeView),
    RouteDef(Routes.topicSelectionView, page: TopicSelectionView),
    RouteDef(Routes.inviteView, page: InviteView),
    RouteDef(Routes.feedView, page: FeedView),
    RouteDef(Routes.singleFeedView, page: SingleFeedView),
    RouteDef(Routes.positionView, page: PositionView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartUpView: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => const StartUpView(),
        settings: data,
      );
    },
    UpdateView: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => UpdateView(),
        settings: data,
      );
    },
    BookmarksView: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => BookmarksView(),
        settings: data,
      );
    },
    OnboardingView: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => OnboardingView(),
        settings: data,
      );
    },
    RestrictedHomeView: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => RestrictedHomeView(),
        settings: data,
      );
    },
    TopicSelectionView: (data) {
      var args = data.getArgs<TopicSelectionViewArguments>(
        orElse: () => TopicSelectionViewArguments(),
      );
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => TopicSelectionView(
          key: args.key,
          updateTopicSelection: args.updateTopicSelection,
        ),
        settings: data,
      );
    },
    InviteView: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => InviteView(),
        settings: data,
      );
    },
    FeedView: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => FeedView(),
        settings: data,
      );
    },
    SingleFeedView: (data) {
      var args = data.getArgs<SingleFeedViewArguments>(nullOk: false);
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => SingleFeedView(
          key: args.key,
          videoId: args.videoId,
        ),
        settings: data,
      );
    },
    PositionView: (data) {
      return MaterialPageRoute<MaterialRoute<dynamic>>(
        builder: (context) => const PositionView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// TopicSelectionView arguments holder class
class TopicSelectionViewArguments {
  final Key? key;
  final bool updateTopicSelection;
  TopicSelectionViewArguments({this.key, this.updateTopicSelection = false});
}

/// SingleFeedView arguments holder class
class SingleFeedViewArguments {
  final Key? key;
  final String videoId;
  SingleFeedViewArguments({this.key, required this.videoId});
}
