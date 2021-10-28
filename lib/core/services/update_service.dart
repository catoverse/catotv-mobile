import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/app/app.router.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:stacked_services/stacked_services.dart';

class AppUpdateService {
  final _apiService = locator<APIService>();
  final _navigationService = locator<NavigationService>();

  final _log = getLogger("AppUpdateService");

  handleAppUpdate() async {
    var forceUpdateRequired = await _apiService.isUpdateRequired();

    if (forceUpdateRequired is bool && forceUpdateRequired) {
      _log.i('The app needs to be updated, fire force app update');
      return _navigationService.navigateTo(Routes.updateView);
    }

    await _checkPlaystoreUpdates();
  }

  _checkPlaystoreUpdates() async {
    var updateInfo = await InAppUpdate.checkForUpdate();

    if (updateInfo.updateAvailability == UpdateAvailability.updateAvailable) {
      _log.i("Update Available");
      await InAppUpdate.startFlexibleUpdate();
    }
  }
}
