import 'dart:ui';
import 'package:feed/ui/feed/player.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
                        Container(
                            height: double.infinity,
                            alignment: Alignment.center,
                            child: VideoPlayer()),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.only(right: 10.0),
                            height: 50,
                            width: double.infinity,
                            child: Row(
                              children: [
                                IconButton(
                                  color: AppColors.onPrimary,
                                  icon: model.controller.value.isPlaying
                                      ? Icon(Icons.pause)
                                      : Icon(Icons.play_arrow),
                                  onPressed: () {},
                                ),
                                ProgressBar(
                                  controller: model.controller,
                                  isExpanded: true,
                                  colors: ProgressBarColors(
                                      handleColor: AppColors.onPrimary,
                                      backgroundColor: AppColors.primary[200],
                                      playedColor: AppColors.primary[100]),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RemainingDuration(controller: model.controller),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ),
            ));
  }
}
