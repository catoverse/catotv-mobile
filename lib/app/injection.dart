import 'dart:async';
import 'package:feed/core/models/app_models.dart';
import 'package:hive/hive.dart';
import 'package:package_info/package_info.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:shared_preferences/shared_preferences.dart';

class HiveInjection {
  /// To setup [Hive], you need to configure path and adapater registrations
  /// Inorder to presolve the additional config we make use of [HiveInjection]
  static Future<HiveInterface> getInstance() async {
    final appDocumentDir =
        await path_provider.getApplicationDocumentsDirectory();

    final path = appDocumentDir.path;
    final hive = Hive;

    hive.init(path);

    /// Register Adapters
    hive.registerAdapter(UserAdapter());
    hive.registerAdapter(VideoAdapter());
    hive.registerAdapter(MEventqLogAdapter());
    hive.registerAdapter(TopicAdapter());
    return Hive;
  }
}

class PackageInjection {
  /// Injects the regular [PackageInfo] instance instead of [Future]
  static Future<PackageInfo> getInstance() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo;
  }
}

class SharedPrefsInjection {
  /// Injects the regular [SharedPreferences] instance instead of [Future]
  static Future<SharedPreferences> getInstance() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences;
  }
}
