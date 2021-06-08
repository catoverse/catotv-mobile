// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:stacked/stacked.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import '../core/services/feed_service/feed_service.dart';
import '../core/services/feed_service/feed_service_impl.dart';
import '../core/services/hive_service/hive_service.dart';
import '../core/services/hive_service/hive_service_impl.dart';
import '../core/services/profile_service/profile_service.dart';
import '../core/services/topic_service/topic_service.dart';
import '../core/services/topic_service/topic_service_impl.dart';
import '../core/services/user_service/user_service.dart';
import '../core/services/user_service/user_service_impl.dart';
import '../core/utils/videoplayer.dart';
import '../firebase/dynamic_links.dart';
import '../remote/api/api_service.dart';
import '../remote/api/api_service_impl.dart';
import '../remote/client.dart';
import '../remote/connectivity/connectivity_service.dart';
import '../remote/connectivity/connectivity_service_impl.dart';
import 'injection.dart';

final locator = StackedLocator.instance;

Future setupLocator() async {
  final hiveInjection = await HiveInjection.getInstance();
  locator.registerSingleton(hiveInjection);

  final packageInjection = await PackageInjection.getInstance();
  locator.registerSingleton(packageInjection);

  locator.registerLazySingleton<ConnectivityService>(
      () => ConnectivityServiceImpl());
  locator.registerLazySingleton(() => RemoteClient());
  locator.registerLazySingleton<APIService>(() => APIServiceImpl());
  locator.registerLazySingleton<HiveService>(() => HiveServiceImpl());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => SnackbarService());
  locator.registerLazySingleton(() => BottomSheetService());
  locator.registerLazySingleton(() => FirebaseAuthenticationService());
  locator.registerLazySingleton<UserService>(() => UserServiceImpl());
  locator.registerLazySingleton(() => VideoPlayerUtils());
  locator.registerLazySingleton(() => YoutubeExplode());
  locator.registerLazySingleton<TopicService>(() => TopicServiceImpl());
  locator.registerLazySingleton<FeedService>(() => FeedServiceImpl());
  locator.registerLazySingleton(() => ProfileService());
  locator.registerLazySingleton(() => DynamicLinksService());
}
