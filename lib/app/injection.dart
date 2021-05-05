import 'dart:async';

import 'package:feed/core/models/user/user.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

class HiveInjection {
  /// To setup [Hive], you need to configure path and adapater registrations
  /// Inorder to presolve the additional config we make use of [HiveInjection]
  static Future<HiveInterface> getInstance() async {
    final appDocumentDir =
        await pathProvider.getApplicationDocumentsDirectory();

    final path = appDocumentDir.path;
    final hive = Hive;

    hive.init(path);

    /// Register Adapters
    hive.registerAdapter(UserAdapter());
    return Hive;
  }
}