import 'package:feed/feedplayer/controller.dart';
import 'package:feed/feedplayer/controls.dart';
import 'package:feed/feedplayer/player.widgets.dart';
import 'package:feed/ui/base/feedmodel.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:feed/ui/global/thumbnail_image.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FeedPlayer extends StatefulWidget {
  final bool isInView;
  final String videoUrl;
  final BaseFeedModel baseFeedModel;
  final FeedPlayerController feedPlayerController;
  const FeedPlayer(
      {Key? key,
      required this.videoUrl,
      required this.isInView,
      required this.feedPlayerController,
      required this.baseFeedModel})
      : super(key: key);

  @override
  _FeedPlayerState createState() => _FeedPlayerState();
}

class _FeedPlayerState extends State<FeedPlayer>
    with AutomaticKeepAliveClientMixin {
  late Future<void> _initializeVideoPlayerFuture;
  FlickManager? flickManager;
  late String thumbnail;

  @override
  void initState() {
    thumbnail = widget.baseFeedModel.getThumbnail(widget.videoUrl);
    _initializeVideoPlayerFuture =
        widget.baseFeedModel.getStreamUrl(widget.videoUrl).then((dataSource) {
      // Initalising the video with [streamUrl]

      flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.network(dataSource),
        autoPlay: widget.isInView,
      );

      widget.feedPlayerController.init(flickManager!);
    });

    super.initState();
  }

  @override
  void didUpdateWidget(FeedPlayer oldWidget) {
    if (oldWidget.isInView != widget.isInView) {
      if (widget.isInView) {
        if (flickManager != null &&
            flickManager!.flickVideoManager!.isVideoInitialized)
          flickManager!.flickControlManager?.play();
      } else {
        if (flickManager != null &&
            flickManager!.flickVideoManager!.isVideoInitialized)
          flickManager!.flickControlManager?.pause();
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    flickManager?.dispose();
    super.dispose();
  }

  @override
  void deactivate() {
    flickManager?.flickControlManager?.pause();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FlickVideoPlayer(
                flickManager: flickManager!,
                flickVideoWithControls: FlickVideoWithControls(
                  controls: FeedControls(
                      feedPlayerController: widget.feedPlayerController,
                      feedViewModel: widget.baseFeedModel,
                      flickManager: flickManager!),
                  playerErrorFallback: Positioned.fill(
                      // TODO: Add blur
                      child: ThumbnailImage(thumbnail: thumbnail)),
                  playerLoadingFallback: Positioned.fill(
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                            child: ThumbnailImage(thumbnail: thumbnail)),
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
                ),
                flickVideoWithControlsFullscreen: FlickVideoWithControls(
                  playerLoadingFallback: Center(
                      child: ThumbnailImage(
                    thumbnail: thumbnail,
                  )),
                  playerErrorFallback: Positioned.fill(
                      child: ThumbnailImage(thumbnail: thumbnail)),
                  controls: FeedControls(
                      feedPlayerController: widget.feedPlayerController,
                      feedViewModel: widget.baseFeedModel,
                      flickManager: flickManager!),
                  iconThemeData: IconThemeData(
                    size: 40,
                    color: Colors.white,
                  ),
                  textStyle: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              VideoProgressBar(
                flickManager: flickManager,
                progressColor: AppColors.primary,
              )
            ],
          );
        } else {
          return Center(
            child: ThumbnailImage(
              thumbnail: thumbnail,
            ),
          );
        }
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
