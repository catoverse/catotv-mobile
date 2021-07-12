import 'package:feed/core/models/app_models.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenLinkService {
  /// Opens the given [url]
  ///
  /// Throws error if the link can't be opened
  openLink(String url) async {
    bool canLaunchUrl = await canLaunch(url);

    if (!canLaunchUrl) return Result.failed("Could not launch $url");

    await launch(url);
  }
}
