// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'application/app_redirect/app_redirect_bloc/app_redirect_bloc.dart';
import 'application/app_redirect/plugin/AppRedirectHelper.dart';
import 'application/app_redirect/app_redirect_selection_bloc/app_redirect_selection_bloc.dart';
import 'application/app_redirect_setting/app_redirect_setting_bloc.dart';
import 'application/auth/auth_bloc.dart';
import 'infrastructure/auth/auth_facade.dart';
import 'application/home/feed/feed_bloc.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/core/i_logger.dart';
import 'domain/posts/i_post_repository.dart';
import 'domain/core/i_repository.dart';
import 'domain/topic/i_topic_repository.dart';
import 'domain/auth/i_user_repository.dart';
import 'application/init/init_bloc.dart';
import 'application/app_redirect/installed_apps_bloc/installed_apps_bloc.dart';
import 'infrastructure/core/logger/logger.dart';
import 'infrastructure/core/db/moor/moor_database.dart';
import 'infrastructure/core/remote/network.dart';
import 'application/onboard/onboard_bloc.dart';
import 'application/post/post_bloc.dart';
import 'infrastructure/posts/post_repository.dart';
import 'infrastructure/di/di.dart';
import 'infrastructure/core/repository.dart';
import 'application/home/saved_posts/saved_posts_bloc.dart';
import 'application/share_video/share_video_bloc.dart';
import 'application/single_post/single_post_bloc.dart';
import 'application/splash/splash_bloc.dart';
import 'application/topic/topic_bloc.dart';
import 'infrastructure/topic/topic_repository.dart';
import 'application/topic_selection/topicselection_bloc.dart';
import 'application/user_profile/userprofile_bloc.dart';
import 'application/video_player/video_player_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<AppRedirectHelper>(() => AppRedirectHelper());
  gh.factory<AppRedirectSelectionBloc>(
      () => AppRedirectSelectionBloc(get<AppRedirectHelper>()));
  gh.factory<AppRedirectSettingBloc>(
      () => AppRedirectSettingBloc(get<AppRedirectHelper>()));
  gh.factory<Connectivity>(() => registerModule.connectivity);
  gh.factory<FeedBloc>(() => FeedBloc());
  gh.lazySingleton<FirebaseAnalytics>(() => registerModule.firebaseAnalytics);
  gh.factory<FirebaseDynamicLinks>(() => registerModule.dynamicLinks);
  gh.factory<FirebaseMessaging>(() => registerModule.firebaseMessaging);
  gh.lazySingleton<GoogleSignIn>(() => registerModule.getGoogleSignIn);
  gh.factory<InstalledAppsBloc>(
      () => InstalledAppsBloc(get<AppRedirectHelper>()));
  gh.lazySingleton<MyDatabase>(() => MyDatabase());
  gh.factory<OnboardBloc>(() => OnboardBloc());
  gh.factory<ShareVideoBloc>(() => ShareVideoBloc(get<ILogger>()));
  final resolvedSharedPreferences = await registerModule.prefs;
  gh.factory<SharedPreferences>(() => resolvedSharedPreferences);
  gh.factory<SplashBloc>(() => SplashBloc());
  gh.factory<String>(() => registerModule.apiEndpoint,
      instanceName: 'ApiEndpoint');
  gh.factory<String>(() => registerModule.playStoreUrl,
      instanceName: 'PlayStoreUrl');
  gh.factory<String>(() => registerModule.appStoreUrl,
      instanceName: 'AppStoreUrl');
  gh.factory<VideoPlayerBloc>(() => VideoPlayerBloc());
  gh.factory<AppRedirectBloc>(() => AppRedirectBloc(get<AppRedirectHelper>()));
  gh.lazySingleton<IAuthFacade>(() => AuthFacade(
        get<GoogleSignIn>(),
        get<IUserRepository>(),
        get<ILogger>(),
      ));
  gh.lazySingleton<Network>(() => Network(
        get<ILogger>(),
        get<Connectivity>(),
        get<String>(instanceName: 'ApiEndpoint'),
      ));
  gh.factory<AuthBloc>(
      () => AuthBloc(get<IAuthFacade>(), get<IUserRepository>()));
  gh.lazySingleton<IPostRepository>(() => PostRepository(
        get<Network>(),
        get<ILogger>(),
        get<MyDatabase>(),
        get<SharedPreferences>(),
      ));
  gh.lazySingleton<IRepository>(
      () => Repository(get<Network>(), get<ILogger>()));
  gh.lazySingleton<ITopicRepository>(() => TopicRepository(
        get<MyDatabase>(),
        get<Network>(),
        get<ILogger>(),
      ));
  gh.factory<InitBloc>(() => InitBloc(get<IRepository>()));
  gh.factory<PostBloc>(() => PostBloc(get<IPostRepository>()));
  gh.factory<SavedPostsBloc>(() => SavedPostsBloc(get<IPostRepository>()));
  gh.factory<SinglePostBloc>(() => SinglePostBloc(get<IPostRepository>()));
  gh.factory<TopicBloc>(
      () => TopicBloc(get<IUserRepository>(), get<ITopicRepository>()));
  gh.factory<TopicSelectionBloc>(() =>
      TopicSelectionBloc(get<IUserRepository>(), get<ITopicRepository>()));
  gh.factory<UserProfileBloc>(() => UserProfileBloc(get<IPostRepository>()));

  // Eager singletons must be registered in the right order
  gh.singleton<ILogger>(Logger(get<FirebaseAnalytics>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
