import 'package:flutter/foundation.dart';

abstract class ILogger {
  void log(String msg);
  void logKeyValue(String key, dynamic value);
  void logError(Error error, {String msg});
  void logException(Exception error, {String msg});
  void setUserIdentifier({@required String identifier});
  void resetUserIdentifier();
  void logAppOpen();
  void logLogin({String loginProvider});
  void logShare(String itemId, {String contentType, String method});
  void logEvent(String name, {Map<String, dynamic> params});
}
