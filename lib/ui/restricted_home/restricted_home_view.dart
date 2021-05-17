import 'dart:ui';

import 'package:feed/ui/custom/swipe_detector.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/restricted_home/widgets/controls.dart';
import 'package:feed/ui/restricted_home/widgets/player.dart';
import 'package:flutter/material.dart';

import 'restricted_home_viewmodel.dart';

class RestrictedHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<RestrictedHomeViewModel>(
        viewModel: RestrictedHomeViewModel(),
        onModelReady: (model) => model.initPlayer(),
        builder: (context, uiHelpers, model) => WillPopScope(
              onWillPop: model.showExitSnackbar,
              child: Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  actions: [
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      child: GestureDetector(
                        onTap: () => model.showConstraint(),
                        child: CircleAvatar(
                          child: Text("O"),
                        ),
                      ),
                    )
                  ],
                ),
                body: model.isBusy
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : CustomSwipeDetector(
                        onVerticalSwipe: (details) {
                          if (details == SwipeDirection.up)
                            model.playNextVideo();
                          if (details == SwipeDirection.down)
                            model.playPreviousVideo();
                        },
                        child: Stack(fit: StackFit.expand, children: [
                          if (model.videos.isNotEmpty)
                            AnimatedContainer(
                              height: double.infinity,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(model.getThumbnail()),
                                  fit: BoxFit.cover,
                                  alignment: Alignment.center,
                                ),
                              ),
                              duration: Duration(microseconds: 300),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: 10.0, sigmaY: 10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.0)),
                                ),
                              ),
                            ),
                          Center(child: $VideoPlayer()),
                          Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: $VideoPlayerControls()),
                        ]),
                      ),
              ),
            ));
  }
}
