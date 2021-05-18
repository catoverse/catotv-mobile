import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<ProfileViewModel>(
        viewModel: ProfileViewModel(),
        builder: (context, uiHelpers, model) => DefaultTabController(
              length: 3,
              child: Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  foregroundColor: AppColors.primary,
                  centerTitle: true,
                  iconTheme: IconThemeData(color: AppColors.textPrimary),
                  leading:
                      IconButton(icon: Icon(Icons.settings), onPressed: () {}),
                  title:
                      Text(model.currentUser.name, style: uiHelpers.subheading),
                  actions: [
                    Container(
                      margin: EdgeInsets.all(8),
                      width: 40,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: NetworkImage(model.currentUser.avatar),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                  // flexibleSpace: PreferredSize(
                  //   preferredSize: Size(100, 100),
                  //   child:
                  // ),
                  bottom: TabBar(
                      automaticIndicatorColorAdjustment: true,
                      labelColor: AppColors.primary,
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                            color: AppColors.primary,
                            width: 4.0,
                            style: BorderStyle.solid),
                      ),
                      tabs: [
                        Tab(
                          text: "Stats",
                        ),
                        Tab(
                          text: "Timeline",
                        ),
                        Tab(
                          text: "Friends",
                        ),
                      ]),
                ),
                 body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
              ),
            ));
  }
}
