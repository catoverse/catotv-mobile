import 'package:feed/feedplayer/controller.dart';
import 'package:feed/feedplayer/controls.dart';
import 'package:flick_video_player/flick_video_player.dart';

import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:video_player/video_player.dart';

class FeedPlayer extends StatefulWidget {
  const FeedPlayer(
      {Key? key,
      required this.url,
      required this.thumbnail,
      required this.feedPlayerController})
      : super(key: key);

  final String url;
  final String thumbnail;
  final FeedPlayerController feedPlayerController;

  @override
  _FeedPlayerState createState() => _FeedPlayerState();
}

class _FeedPlayerState extends State<FeedPlayer> {
  late FlickManager flickManager;

  @override
  void initState() {
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network(widget.url),
      autoPlay: false,
    );
    widget.feedPlayerController.init(flickManager);

    super.initState();
  }

  @override
  void dispose() {
    widget.feedPlayerController.remove(flickManager);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: ObjectKey(flickManager),
      onVisibilityChanged: (visiblityInfo) {
        if (visiblityInfo.visibleFraction > 0.9) {
          widget.feedPlayerController.play(flickManager);
        }
      },
      child: Container(
        child: FlickVideoPlayer(
          flickManager: flickManager,
          flickVideoWithControls: FlickVideoWithControls(
              playerLoadingFallback: Positioned.fill(
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Image.network(
                        widget.thumbnail,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: Container(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.white,
                          strokeWidth: 4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              controls: FeedPlayerPortraitControls(
                feedPlayerController: widget.feedPlayerController,
                flickManager: flickManager,
              )),
          flickVideoWithControlsFullscreen: FlickVideoWithControls(
            playerLoadingFallback: Center(
                child: Image.network(
              widget.thumbnail,
              fit: BoxFit.fitWidth,
            )),
            controls: FlickLandscapeControls(),
            iconThemeData: IconThemeData(
              size: 40,
              color: Colors.white,
            ),
            textStyle: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}