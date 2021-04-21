import 'package:app_usage/app_usage.dart';
import 'package:injectable/injectable.dart';
import 'package:app_blocker/app_blocker.dart';
import 'package:device_apps/device_apps.dart';

@lazySingleton
class AppRedirectHelper {

  AppBlocker appBlocker = AppBlocker();

  Future<List<String>> getBlockedPackages() async {
    return await appBlocker.getBlockedPackages();
  }

  Future<List<Application>> getAppListByOrder(List<String> blockedPackages) async {
    if(blockedPackages == null) {
      blockedPackages = await getBlockedPackages();
    }
    List<Application> apps = await DeviceApps.getInstalledApplications(includeSystemApps: false, includeAppIcons: true);
    List<Application> blockedApps = [];
    apps.forEach((element) {
      if(blockedPackages?.contains(element.packageName) ?? false) {
        blockedApps.add(element);
      }
    });
    apps.removeWhere((element) => element.packageName == "cato.tv.feed");
    blockedApps.forEach((element) {
      apps.remove(element);
    });
    apps.sort((app1, app2) => app1.appName.compareTo(app2.appName));
    apps.insertAll(0, blockedApps);
    return apps;
  }
}