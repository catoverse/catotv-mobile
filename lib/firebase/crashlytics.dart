import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class CrashlyticsService {
  static CrashlyticsService? _instance;

  static CrashlyticsService getInstance() {
    _instance ??= CrashlyticsService._(FirebaseCrashlytics.instance);

    return _instance!;
  }

  final FirebaseCrashlytics _crashlyticsService;
  CrashlyticsService._(
    this._crashlyticsService,
  );

  void recordFlutterErrorToCrashlytics(FlutterErrorDetails details) {
    _crashlyticsService.recordFlutterError(details);
  }

  Future logToCrashlytics(
      Level level, List<String> lines, StackTrace stacktrace,
      {required bool logwarnings}) async {
    if (level == Level.error || level == Level.wtf) {
      await _crashlyticsService.recordError(
        lines.join('\n'),
        stacktrace,
        printDetails: true,
        fatal: true,
      );
    }
    if (level == Level.warning && logwarnings) {
      await _crashlyticsService.recordError(
        lines.join('\n'),
        stacktrace,
        printDetails: true,
      );
    }
    if (level == Level.info || level == Level.verbose || level == Level.debug) {
      await _crashlyticsService.log(lines.join('\n'));
    }
  }

  Future setCustomKeysToTrack(String key, dynamic value) async {
    await _crashlyticsService.setCustomKey(key, value);
  }

  // Be very careful when you excute this code it will crash the app
  // So, be sure to remove it after usage
  void crashApp() {
    _crashlyticsService.crash();
  }
}

class CrashlyticsOutput extends LogOutput {
  final bool logWarnings;
  CrashlyticsOutput({this.logWarnings = false});

  @override
  void output(OutputEvent event) {
    try {
      CrashlyticsService.getInstance().logToCrashlytics(
          event.level, event.lines, StackTrace.current,
          logwarnings: logWarnings);
    } catch (e) {
      debugPrint('CRASHLYTICS FAILED: $e');
    }
  }
}
