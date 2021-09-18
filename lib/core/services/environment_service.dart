import 'package:feed/app/app.logger.dart';
import 'package:feed/core/constants/keys.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Returns values from the environment read from the .env file
class EnvironmentService {
  final log = getLogger('EnvironmentService');

  /// Returns the value associated with the key
  String getValue(String key, {bool verbose = false}) {
    final value = dotenv.env[key] ?? kNoKey;
    if (verbose) log.v('key:$key value:$value');
    return value;
  }

  static Future<EnvironmentService> getInstance() async {
    debugPrint('Load environment');
    await dotenv.load(fileName: ".env");
    debugPrint('Environement loaded');
    return Future.value(EnvironmentService());
  }
}
