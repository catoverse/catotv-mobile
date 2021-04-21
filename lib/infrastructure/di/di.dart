import 'package:connectivity/connectivity.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  
  @Named('ApiEndpoint')
  String get apiEndpoint => 'http://18.224.135.76:4000/graphql';

  @Named('PlayStoreUrl')
  String get playStoreUrl => 'https://play.google.com/store/apps/details?id=cato.tv.feed';

  @Named('AppStoreUrl')
  String get appStoreUrl => 'https://play.google.com/store/apps/details?id=cato.tv.feed';

  @lazySingleton
  GoogleSignIn get getGoogleSignIn => GoogleSignIn(
      scopes: ['email', 'profile'],
      clientId:
          '1054751809312-q6aep1tujfbdsns6rljjnfcl1n550jpg.apps.googleusercontent.com');

  @lazySingleton
  FirebaseAnalytics get firebaseAnalytics => FirebaseAnalytics();

  @injectable
  FirebaseDynamicLinks get dynamicLinks => FirebaseDynamicLinks.instance;

  @injectable
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging();

  @injectable
  Connectivity get connectivity => Connectivity();

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
