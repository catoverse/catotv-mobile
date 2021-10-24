import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

class AnalyticsService {
  final FirebaseAnalytics _analytics = FirebaseAnalytics();
  final bool appMode;

  FirebaseAnalyticsObserver getAnalyticsObserver() =>
      FirebaseAnalyticsObserver(analytics: _analytics);

  AnalyticsService({this.appMode = kReleaseMode});

  Future logAppOpen() async {
    if (appMode) {
      await _analytics.logAppOpen();
    }
  }

  Future logShare(String itemId,
      {String contentType = 'Post', String method = 'in_app_share'}) async {
    if (appMode) {
      await _analytics.logShare(
        contentType: contentType,
        itemId: itemId,
        method: method,
      );
    }
  }

  Future logEvent(String name, {Map<String, dynamic> params = const {}}) async {
    if (appMode) {
      await _analytics.logEvent(
        name: name,
        parameters: params,
      );
    }
  }

  void setUserIdentifier(String userId) {
    if (appMode) {
      FirebaseCrashlytics.instance.setUserIdentifier(userId);
      _analytics.setUserId(userId);
    }
  }
}
