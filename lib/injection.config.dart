// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i6;
import 'package:firebase_analytics/firebase_analytics.dart' as _i8;
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart' as _i9;
import 'package:firebase_messaging/firebase_messaging.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i20;

import 'application/app_redirect/app_redirect_bloc/app_redirect_bloc.dart'
    as _i23;
import 'application/app_redirect/app_redirect_selection_bloc/app_redirect_selection_bloc.dart'
    as _i4;
import 'application/app_redirect/installed_apps_bloc/installed_apps_bloc.dart'
    as _i12;
import 'application/app_redirect/plugin/AppRedirectHelper.dart' as _i3;
import 'application/app_redirect_setting/app_redirect_setting_bloc.dart' as _i5;
import 'application/auth/auth_bloc.dart' as _i43;
import 'application/home/feed/feed_bloc.dart' as _i7;
import 'application/home/saved_posts/saved_posts_bloc.dart' as _i35;
import 'application/init/init_bloc.dart' as _i33;
import 'application/onboard/onboard_bloc.dart' as _i14;
import 'application/onboard_invite/onboard_invite_bloc.dart' as _i15;
import 'application/onboard_login/onboard_login_bloc.dart' as _i16;
import 'application/onboard_selection/onboard_selection_bloc.dart' as _i17;
import 'application/post/post_bloc.dart' as _i34;
import 'application/share_video/share_video_bloc.dart' as _i18;
import 'application/single_post/single_post_bloc.dart' as _i36;
import 'application/splash/splash_bloc.dart' as _i21;
import 'application/topic/topic_bloc.dart' as _i37;
import 'application/topic_selection/topicselection_bloc.dart' as _i38;
import 'application/user_profile/userprofile_bloc.dart' as _i39;
import 'application/video_player/video_player_bloc.dart' as _i22;
import 'application/videos_by_category/videos_by_category_bloc.dart' as _i40;
import 'domain/auth/i_auth_facade.dart' as _i41;
import 'domain/auth/i_user_repository.dart' as _i31;
import 'domain/core/i_logger.dart' as _i19;
import 'domain/core/i_repository.dart' as _i27;
import 'domain/posts/i_post_repository.dart' as _i25;
import 'domain/topic/i_topic_repository.dart' as _i29;
import 'infrastructure/auth/auth_facade.dart' as _i42;
import 'infrastructure/auth/user_repository.dart' as _i32;
import 'infrastructure/core/db/moor/moor_database.dart' as _i13;
import 'infrastructure/core/logger/logger.dart' as _i44;
import 'infrastructure/core/remote/network.dart' as _i24;
import 'infrastructure/core/repository.dart' as _i28;
import 'infrastructure/di/di.dart' as _i45;
import 'infrastructure/posts/post_repository.dart' as _i26;
import 'infrastructure/topic/topic_repository.dart'
    as _i30; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.AppRedirectHelper>(() => _i3.AppRedirectHelper());
  gh.factory<_i4.AppRedirectSelectionBloc>(
      () => _i4.AppRedirectSelectionBloc(get<_i3.AppRedirectHelper>()));
  gh.factory<_i5.AppRedirectSettingBloc>(
      () => _i5.AppRedirectSettingBloc(get<_i3.AppRedirectHelper>()));
  gh.factory<_i6.Connectivity>(() => registerModule.connectivity);
  gh.factory<_i7.FeedBloc>(() => _i7.FeedBloc());
  gh.lazySingleton<_i8.FirebaseAnalytics>(
      () => registerModule.firebaseAnalytics);
  gh.factory<_i9.FirebaseDynamicLinks>(() => registerModule.dynamicLinks);
  gh.factory<_i10.FirebaseMessaging>(() => registerModule.firebaseMessaging);
  gh.lazySingleton<_i11.GoogleSignIn>(() => registerModule.getGoogleSignIn);
  gh.factory<_i12.InstalledAppsBloc>(
      () => _i12.InstalledAppsBloc(get<_i3.AppRedirectHelper>()));
  gh.lazySingleton<_i13.MyDatabase>(() => _i13.MyDatabase());
  gh.factory<_i14.OnboardBloc>(() => _i14.OnboardBloc());
  gh.factory<_i15.OnboardInviteBloc>(() => _i15.OnboardInviteBloc());
  gh.factory<_i16.OnboardLoginBloc>(() => _i16.OnboardLoginBloc());
  gh.factory<_i17.OnboardSelectionBloc>(() => _i17.OnboardSelectionBloc());
  gh.factory<_i18.ShareVideoBloc>(
      () => _i18.ShareVideoBloc(get<_i19.ILogger>()));
  await gh.factoryAsync<_i20.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.factory<_i21.SplashBloc>(() => _i21.SplashBloc());
  gh.factory<String>(() => registerModule.playStoreUrl,
      instanceName: 'PlayStoreUrl');
  gh.factory<String>(() => registerModule.apiEndpoint,
      instanceName: 'ApiEndpoint');
  gh.factory<String>(() => registerModule.appStoreUrl,
      instanceName: 'AppStoreUrl');
  gh.factory<_i22.VideoPlayerBloc>(() => _i22.VideoPlayerBloc());
  gh.factory<_i23.AppRedirectBloc>(
      () => _i23.AppRedirectBloc(get<_i3.AppRedirectHelper>()));
  gh.lazySingleton<_i24.Network>(() => _i24.Network(get<_i19.ILogger>(),
      get<_i6.Connectivity>(), get<String>(instanceName: 'ApiEndpoint')));
  gh.lazySingleton<_i25.IPostRepository>(() => _i26.PostRepository(
      get<_i24.Network>(),
      get<_i19.ILogger>(),
      get<_i13.MyDatabase>(),
      get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i27.IRepository>(
      () => _i28.Repository(get<_i24.Network>(), get<_i19.ILogger>()));
  gh.lazySingleton<_i29.ITopicRepository>(() => _i30.TopicRepository(
      get<_i13.MyDatabase>(), get<_i24.Network>(), get<_i19.ILogger>()));
  gh.lazySingleton<_i31.IUserRepository>(() => _i32.UserRepository(
      get<_i13.MyDatabase>(),
      get<_i24.Network>(),
      get<_i19.ILogger>(),
      get<_i20.SharedPreferences>()));
  gh.factory<_i33.InitBloc>(() => _i33.InitBloc(get<_i27.IRepository>()));
  gh.factory<_i34.PostBloc>(() => _i34.PostBloc(get<_i25.IPostRepository>()));
  gh.factory<_i35.SavedPostsBloc>(
      () => _i35.SavedPostsBloc(get<_i25.IPostRepository>()));
  gh.factory<_i36.SinglePostBloc>(
      () => _i36.SinglePostBloc(get<_i25.IPostRepository>()));
  gh.factory<_i37.TopicBloc>(() => _i37.TopicBloc(
      get<_i31.IUserRepository>(), get<_i29.ITopicRepository>()));
  gh.factory<_i38.TopicSelectionBloc>(() => _i38.TopicSelectionBloc(
      get<_i31.IUserRepository>(), get<_i29.ITopicRepository>()));
  gh.factory<_i39.UserProfileBloc>(() => _i39.UserProfileBloc(
      get<_i25.IPostRepository>(), get<_i31.IUserRepository>()));
  gh.factory<_i40.VideosByCategoryBloc>(
      () => _i40.VideosByCategoryBloc(get<_i25.IPostRepository>()));
  gh.lazySingleton<_i41.IAuthFacade>(() => _i42.AuthFacade(
      get<_i11.GoogleSignIn>(),
      get<_i31.IUserRepository>(),
      get<_i19.ILogger>()));
  gh.factory<_i43.AuthBloc>(() =>
      _i43.AuthBloc(get<_i41.IAuthFacade>(), get<_i31.IUserRepository>()));
  gh.singleton<_i19.ILogger>(_i44.Logger(get<_i8.FirebaseAnalytics>()));
  return get;
}

class _$RegisterModule extends _i45.RegisterModule {}
