import 'package:feed/feedplayer/controller.dart';
import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';

class FeedPlayerPortraitControls extends StatelessWidget {
  const FeedPlayerPortraitControls(
      {Key? key,
      required this.feedPlayerController,
      required this.flickManager})
      : super(key: key);

  final FeedPlayerController feedPlayerController;
  final FlickManager flickManager;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        FlickSeekVideoAction(
          child: Center(
              child: FlickVideoBuffer(
            child: FlickPlayToggle(
              size: 50,
            ),
          )),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: FlickVideoProgressBar(
            flickProgressBarSettings: FlickProgressBarSettings(
                padding: EdgeInsets.zero,
                playedColor: Colors.indigoAccent,
                handleColor: Colors.indigo,
                bufferedColor: Colors.indigo,
                height: 5,
                backgroundColor: Colors.indigo.shade100),
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: FlickAutoHideChild(
              autoHide: true,
              showIfVideoNotInitialized: false,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: FlickFullScreenToggle(),
              )),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(20),
              ),
              child: FlickSoundToggle(
                toggleMute: () => feedPlayerController.toggleMute(),
                color: Colors.white,
              )),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: FlickAutoHideChild(
              autoHide: true,
              showIfVideoNotInitialized: false,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: FlickLeftDuration(),
              )),
        ),
      ],
    );
  }
}
