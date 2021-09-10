import 'package:feed/feedplayer/list/list.dart';
import 'package:feed/ui/base/feedmodel.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';

import 'restricted_home_viewmodel.dart';

class RestrictedHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<BaseFeedModel>(
        viewModel: RestrictedHomeViewModel(),
        onModelReady: (model) => model.getData(),
        builder: (context, uiHelpers, model) => WillPopScope(
              onWillPop: () => model.showExitDialog(),
              child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    automaticallyImplyLeading: false,
                    title: Text("👋 Hello There",
                        style: uiHelpers.subheading!
                            .copyWith(color: AppColors.textPrimary)),
                    actions: [
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        child: TextButton(
                          onPressed: () => model.loginWithGoogle(),
                          child: Text("Sign in", style: uiHelpers.button),
                        ),
                      )
                    ],
                  ),
                  body: model.isBusy
                      ? Center(child: CircularProgressIndicator())
                      : FeedPlayerListView(
                          showShare: false,
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
                                    onPressed: () => model.showConstraint(),
                                    child: Text("Want More?")),
                              ],
                            ),
                          ),
                        )),
            ));
  }

  // _reachEndListener(VoidCallback showConstraint) {
  //   if (_controller.offset >= _controller.position.maxScrollExtent &&
  //       !_controller.position.outOfRange) showConstraint.call();
  // }

  // void listenToListScroll(BaseFeedModel model) {
  //   _controller
  //       .addListener(() => _reachEndListener(() => model.showConstraint()));

  //   model.getVideos();
  // }
}
