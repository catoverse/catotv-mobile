import 'package:cato_feed/domain/core/i_logger.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ILogger)
class Logger implements ILogger {
  FirebaseAnalytics _analytics;

  Logger(this._analytics);

  @override
  void log(String msg) {
    Crashlytics.instance.log(msg);
  }

  @override
  void logError(Error error, {String msg}) {
    if (msg != null) log(msg);
    Crashlytics.instance.recordError(error, error.stackTrace);
  }

  @override
  void logException(Exception error, {String msg}) {
    if (msg != null) log(msg);
    Crashlytics.instance
        .recordError(error, StackTrace.fromString(error.toString()));
  }

  @override
  void logKeyValue(String key, dynamic value) {
    if (value.runtimeType == bool) {
      Crashlytics.instance.setBool(key, value);
    } else if (value.runtimeType == int) {
      Crashlytics.instance.setInt(key, value);
    } else if (value.runtimeType == double) {
      Crashlytics.instance.setDouble(key, value);
    } else {
      Crashlytics.instance.setString(key, value.toString());
    }
  }

  @override
  void resetUserIdentifier() {
    Crashlytics.instance.setUserName('');
    Crashlytics.instance.setUserEmail('');
    Crashlytics.instance.setUserIdentifier('');
    _analytics.setUserId('');
  }

  @override
  void setUserIdentifier({String name, String email, String identifier}) {
    if (name != null) Crashlytics.instance.setUserName(name);
    if (email != null) Crashlytics.instance.setUserEmail(email);
    if (identifier != null) {
      Crashlytics.instance.setUserIdentifier(identifier);
      _analytics.setUserId(identifier);
    }
  }

  @override
  void logAppOpen() {
    _analytics.logAppOpen();
  }

  @override
  void logLogin({String loginProvider = 'google'}) {
    _analytics.logLogin(loginMethod: loginProvider);
  }

  @override
  void logShare(String itemId,
      {String contentType = 'Post', String method = 'in_app_share'}) {
    _analytics.logShare(
      contentType: contentType,
      itemId: itemId,
      method: method,
    );
  }

  @override
  void logEvent(String name, {Map<String, dynamic> params}) {
    _analytics.logEvent(
      name: name,
      parameters: params,
    );
  }
}
