import 'dart:async';

import 'package:feed/core/models/user/user.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql/client.dart';
import 'package:hive/hive.dart';
import 'package:package_info/package_info.dart';
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

class GQLInjection {
  static GraphQLClient getInstance() {
    String apiURL = env['API_URL'] ?? "";

    final _link = HttpLink(apiURL);

    return GraphQLClient(
      cache: GraphQLCache(),
      link: _link,
    );
  }
}

class PackageInjection {
  /// Injects the regular [PackageInfo] instance instead of [Future]
  static Future<PackageInfo> getInstance() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo;
  }
}
