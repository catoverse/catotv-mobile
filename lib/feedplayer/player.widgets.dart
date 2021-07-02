import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';

class VideoProgressBar extends StatefulWidget {
  final FlickManager? flickManager;
  final Color progressColor;
  final Color backgroundColor;

  const VideoProgressBar(
      {Key? key,
      this.flickManager,
      this.progressColor = Colors.red,
      this.backgroundColor = Colors.white30})
      : super(key: key);

  @override
  _VideoProgressBarState createState() => _VideoProgressBarState();
}

class _VideoProgressBarState extends State<VideoProgressBar> {
  _VideoProgressBarState() {
    listener = () {
      if (!mounted) {
        return;
      }
      setState(() {});
    };
  }

  FlickVideoManager? flickVideoManager;

  late VoidCallback listener;

  @override
  void initState() {
    super.initState();
    flickVideoManager = widget.flickManager?.flickVideoManager;
    flickVideoManager!.videoPlayerController!.addListener(listener);
  }

  @override
  void deactivate() {
    flickVideoManager!.videoPlayerController!.removeListener(listener);
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    late Widget returnWidget;

    if (flickVideoManager != null && flickVideoManager!.isVideoInitialized) {
      final controller = flickVideoManager!.videoPlayerValue;
      final int duration = controller!.duration.inMilliseconds;
      final int position = controller.position.inMilliseconds;

      returnWidget = LinearProgressIndicator(
        value: position / duration,
        valueColor: AlwaysStoppedAnimation<Color>(widget.progressColor),
        backgroundColor: widget.backgroundColor,
      );

      return returnWidget;
    }

    return LinearProgressIndicator(
      value: 0,
      valueColor: AlwaysStoppedAnimation<Color>(widget.progressColor),
      backgroundColor: widget.backgroundColor,
    );
  }
}
