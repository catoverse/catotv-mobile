import 'package:feed/ui/feed_drawer/widgets/contact_us_dialog.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';

import 'feed_drawer_viewmodel.dart';

class DrawerView extends StatelessWidget {
  void onTapContact(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: ContactUsDialog(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<DrawerViewModel>(
        viewModel: DrawerViewModel(),
        builder: (context, uiHelpers, model) => Drawer(
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(model.currentUser.avatar),
                    ),
                    accountName: Text(
                      model.currentUser.name,
                      style: uiHelpers.button!
                          .copyWith(color: AppColors.textPrimary),
                    ),
                    accountEmail: Text(
                      model.currentUser.email,
                      style: const TextStyle(color: AppColors.textSecondary),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.bookmark),
                    title: const Text("Bookmarks"),
                    onTap: () => model.viewBookmakrs(),
                  ),
                  ListTile(
                    leading: const Icon(Icons.category),
                    title: const Text("Selected Topics"),
                    onTap: () => model.updateTopics(),
                  ),
                  ListTile(
                    leading: const Icon(Icons.people),
                    title: const Text("Refer a Friend"),
                    onTap: () => model.inviteFriends(),
                  ),
                  ListTile(
                    leading: const Icon(Icons.forum),
                    title: const Text("Feedback"),
                    onTap: () => model.launchUrl("https://feedback.cato.tv"),
                  ),
                  ListTile(
                    leading: const Icon(Icons.mail),
                    title: const Text("Contact"),
                    onTap: () => onTapContact(context),
                  ),
                  ListTile(
                    leading: const Icon(Icons.bug_report),
                    title: const Text("Report Bug"),
                    onTap: () => model
                        .launchUrl("mailto:dev@cato.tv?subject=Bug Report"),
                  ),
                  ListTile(
                    leading: const Icon(Icons.info),
                    title: const Text("About Catoverse"),
                    onTap: () => model.launchUrl("https://www.cato.tv"),
                  ),
                ],
              ),
            ));
  }
}
