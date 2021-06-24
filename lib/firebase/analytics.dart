import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

class AnalyticsService {
  final FirebaseAnalytics _analytics = FirebaseAnalytics();

  FirebaseAnalyticsObserver getAnalyticsObserver() =>
      FirebaseAnalyticsObserver(analytics: _analytics);

  Future logAppOpen() async {
    if (kReleaseMode) {
      await _analytics.logAppOpen();
    }
  }

  void logLogin() {
    if (kReleaseMode) {
      _analytics.logLogin(loginMethod: 'google');
    }
  }

  Future logShare(String itemId,
      {String contentType = 'Post', String method = 'in_app_share'}) async {
    if (kReleaseMode) {
      await _analytics.logShare(
        contentType: contentType,
        itemId: itemId,
        method: method,
      );
    }
  }

  Future logEvent(String name, {Map<String, dynamic> params = const {}}) async {
    if (kReleaseMode) {
      await _analytics.logEvent(
        name: name,
        parameters: params,
      );
    }
  }

  void setUserIdentifier(String userId) {
    if (kReleaseMode) {
      FirebaseCrashlytics.instance.setUserIdentifier(userId);
      _analytics.setUserId(userId);
    }
  }
}
