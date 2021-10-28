import 'package:feed/core/services/url_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactUsDialog extends StatelessWidget {
  ContactUsDialog({
    Key? key,
  }) : super(key: key);
  final _launcher = OpenLinkService();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          onTap: () {
            _launcher.openLink('https://twitter.com/navgurukul');
            Navigator.pop(context);
          },
          leading: const FaIcon(FontAwesomeIcons.twitter),
          title: const Text('Slide into our DMs'),
        ),
        ListTile(
          onTap: () {
            _launcher.openLink('mailto:dev@cato.tv?subject=Feedback');
            Navigator.pop(context);
          },
          leading: const FaIcon(FontAwesomeIcons.solidPaperPlane),
          title: const Text('Shoot us an Email'),
        ),
      ],
    );
  }
}
