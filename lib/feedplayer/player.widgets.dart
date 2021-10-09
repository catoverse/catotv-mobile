import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';

class VideoProgressBar extends StatelessWidget {
  final FlickManager flickManager;
  final Color progressColor;
  final Color backgroundColor;

  const VideoProgressBar({Key? key, required this.flickManager, this.progressColor = Colors.red, this.backgroundColor = Colors.white30}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: flickManager.flickVideoManager!,
      builder: (context, _) {
        final videoPlayerValue = flickManager.flickVideoManager!.videoPlayerValue;
        final int duration = videoPlayerValue!.duration.inMilliseconds + 1;
        final int position = videoPlayerValue.position.inMilliseconds;

        return LinearProgressIndicator(
          value: position / duration,
          valueColor: AlwaysStoppedAnimation<Color>(progressColor),
          backgroundColor: backgroundColor,
        );
      },
    );
  }
}
