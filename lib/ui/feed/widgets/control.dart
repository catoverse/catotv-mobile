import 'package:feed/core/utils/multi_manager.dart';
import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';

class FeedPlayerPortraitControls extends StatelessWidget {
  const FeedPlayerPortraitControls(
      {Key? key, this.flickMultiManager, this.flickManager})
      : super(key: key);

  final FlickMultiManager? flickMultiManager;
  final FlickManager? flickManager;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
              right: 0,
              top: 0,
              child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: FlickFullScreenToggle())),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(20),
              ),
              child: FlickSoundToggle(
                toggleMute: () => flickMultiManager?.toggleMute(),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
