import 'dart:ui';
import 'package:feed/ui/feed/widgets/controls.dart';
import 'package:feed/ui/feed/widgets/player.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';

import 'feed_viewmodel.dart';

class FeedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<FeedViewModel>(
        viewModel: FeedViewModel(),
        onModelReady: (model) => model.initPlayer(),
        builder: (context, uiHelpers, model) => Scaffold(
            backgroundColor: AppColors.textPrimary,
            body: model.isBusy
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : GestureDetector(
                    onVerticalDragUpdate: (details) {
                      int sensitivity = 8;
                      if (details.delta.dy > sensitivity) {
                        // Down Swipe
                      } else if (details.delta.dy < -sensitivity) {
                        model.playNextVideo();
                      }
                    },
                    child: Stack(fit: StackFit.expand, children: [
                      if (model.videos.isNotEmpty)
                        Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(model.getThumbnail()),
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                          ),
                          child: BackdropFilter(
                            filter:
                                ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.0)),
                            ),
                          ),
                        ),
                      // Positioned(
                      //     top: uiHelpers.blockSizeVertical! * 28,
                      //     right: 0,
                      //     child: IconButton(
                      //         color: AppColors.onPrimary,
                      //         icon: Icon(Icons.fullscreen),
                      //         onPressed: () {})),
                      Container(
                        alignment: Alignment.center,
                        child: VideoPlayer(),
                      ),
                      Positioned(
                        bottom: uiHelpers.blockSizeVertical! * 10,
                        right: 5,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                color: AppColors.onPrimary,
                                icon: Icon(Icons.thumb_up_alt_outlined),
                                onPressed: () {}),
                            IconButton(
                                color: AppColors.onPrimary,
                                icon: Icon(Icons.bookmark_outline),
                                onPressed: () {}),
                            IconButton(
                                color: AppColors.onPrimary,
                                icon: Icon(Icons.ios_share),
                                onPressed: () {}),
                          ],
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: VideoPlayerControls()),
                    ]),
                  )));
  }
}
