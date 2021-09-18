import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:package_info/package_info.dart';

void main() {
  setUp(() {
    WidgetsFlutterBinding.ensureInitialized();
  });

  test('y-MM-d h:m:s date format test', () {
    debugPrint(DateFormat("y-MM-d h:m:s").format(DateTime.now()).toString());
  });

  test('package version test', () async {
    final package = await PackageInfo.fromPlatform();
    var currentVersion = int.parse(package.version.split(".")[0]);

    debugPrint(currentVersion.toString());
  });
}
