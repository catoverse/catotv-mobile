import 'package:feed/feedplayer/list/list.dart';
import 'package:feed/ui/base/feedmodel.dart';
import 'package:feed/ui/feed/widgets/greeting.dart';
import 'package:feed/ui/feed_drawer/feed_drawer.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';

import 'feed_viewmodel.dart';

class FeedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<BaseFeedModel>(
        viewModel: FeedViewModel(),
        onModelReady: (model) => model.getData(),
        builder: (context, uiHelpers, model) => WillPopScope(
              onWillPop: () => model.showExitDialog(),
              child: Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  foregroundColor: AppColors.primary,
                  iconTheme: IconThemeData(color: AppColors.textPrimary),
                  centerTitle: true,
                  title: Text("Home",
                      style: uiHelpers.button!
                          .copyWith(color: AppColors.textPrimary)),
                ),
                drawer: DrawerView(),
                body: model.isBusy
                    ? Center(child: CircularProgressIndicator())
                    : RefreshIndicator(
                        onRefresh: model.refresh,
                        child: FeedPlayerListView(
                          header: GreetingWidget(
                            userImage: model.currentUser.avatar,
                            userName: model.currentUser.name,
                          ),
                          footer: Container(
                              padding: const EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                  color: AppColors.surface,
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Woow! You covered all the videos and reached the end of the list\n",
                                    style: uiHelpers.button,
                                    textAlign: TextAlign.center,
                                  ),
                                  ElevatedButton(
                                      onPressed: () => model.refresh(),
                                      child: Text("Want More?")),
                                ],
                              )),
                        )),
              ),
            ));
  }
}
