import 'package:feed/app/app.locator.dart';
import 'package:feed/core/constants/strings.dart';
import 'package:feed/core/services/url_service.dart';
import 'package:stacked/stacked.dart';

class UpdateViewModel extends BaseViewModel {
  final _launcher = locator<OpenLinkService>();

  openPlayStore() async => _launcher.openLink(kPlayStoreUrl);
}
