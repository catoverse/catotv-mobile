import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';

import 'feed_drawer_viewmodel.dart';

class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<DrawerViewModel>(
        viewModel: DrawerViewModel(),
        builder: (context, uiHelpers, model) => Drawer(
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
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
                      style: TextStyle(color: AppColors.textSecondary),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.bug_report),
                    title: Text("Report Bug"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.people),
                    title: Text("Invite Friends"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text("About Catoverse"),
                    onTap: () {},
                  ),
                ],
              ),
            ));
  }
}
