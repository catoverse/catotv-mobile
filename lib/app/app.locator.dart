// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:connectivity/connectivity.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import '../core/services/environment_service.dart';
import '../core/services/explode_service.dart';
import '../core/services/feed_service.dart';
import '../core/services/hive_service/hive_service.dart';
import '../core/services/hive_service/hive_service_impl.dart';
import '../core/services/key_storage_service.dart';
import '../core/services/message_queue_service.dart';
import '../core/services/share_service.dart';
import '../core/services/topic_service.dart';
import '../core/services/url_service.dart';
import '../core/services/user_service.dart';
import '../core/services/video_service.dart';
import '../feedplayer/controller.dart';
import '../firebase/analytics.dart';
import '../firebase/crashlytics.dart';
import '../firebase/dynamic_links.dart';
import '../remote/api/api_service.dart';
import '../remote/api/api_service_impl.dart';
import '../remote/client.dart';
import '../remote/connectivity/connectivity_service.dart';
import '../remote/connectivity/connectivity_service_impl.dart';
import 'injection.dart';

final locator = StackedLocator.instance;

Future setupLocator(
    {String? environment, EnvironmentFilter? environmentFilter}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  final environmentService = await EnvironmentService.getInstance();
  locator.registerSingleton(environmentService);

  final hiveInjection = await HiveInjection.getInstance();
  locator.registerSingleton(hiveInjection);

  final packageInjection = await PackageInjection.getInstance();
  locator.registerSingleton(packageInjection);

  final sharedPreferences = await SharedPreferences.getInstance();
  locator.registerSingleton(sharedPreferences);

  locator.registerLazySingleton(() => Connectivity());
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
  locator.registerLazySingleton(() => KeyStorageService());
  locator.registerLazySingleton(() => UserService());
  locator.registerLazySingleton(() => YoutubeExplode());
  locator.registerLazySingleton(() => ExplodeService());
  locator.registerLazySingleton(() => OpenLinkService());
  locator.registerLazySingleton(() => ShareService());
  locator.registerSingleton(FeedPlayerController());
  locator.registerLazySingleton(() => VideoService());
  locator.registerLazySingleton(() => TopicService());
  locator.registerLazySingleton(() => FeedService());
  locator.registerLazySingleton(() => DynamicLinksService());
  locator.registerLazySingleton(() => AnalyticsService());
  locator.registerLazySingleton(() => MessageQueueService());
  locator.registerLazySingleton(() => CrashlyticsService.getInstance());
}
