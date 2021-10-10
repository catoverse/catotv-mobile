import 'package:feed/app/app.locator.dart';
import 'package:feed/core/constants/assets.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/video_manager_service.dart';
import 'package:feed/feedplayer/controller.dart';
import 'package:feed/feedplayer/controls.dart';
import 'package:feed/feedplayer/player.widgets.dart';
import 'package:feed/ui/base/feedmodel.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:feed/ui/global/thumbnail_image.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:video_player/video_player.dart';

class FeedPlayer extends StatefulWidget {
  final bool isInView;
  final int index;
  final Video video;
  final BaseFeedModel baseFeedModel;
  final FeedPlayerController feedPlayerController;
  final bool showBookmark;

  const FeedPlayer(
      {Key? key,
      required this.video,
      required this.isInView,
      required this.index,
      required this.feedPlayerController,
      required this.baseFeedModel,
      this.showBookmark = true})
      : super(key: key);

  @override
  _FeedPlayerState createState() => _FeedPlayerState();
}

class _FeedPlayerState extends State<FeedPlayer> with AutomaticKeepAliveClientMixin, WidgetsBindingObserver {
  late Future<void> _initializeVideoPlayerFuture;
  FlickManager? flickManager;
  late String thumbnail;
  final _videoManagerService = locator<VideoManagerService>();

  Widget loading() => Stack(alignment: Alignment.center, children: [
        ThumbnailImage(
          thumbnail: thumbnail,
        ),
        Lottie.asset(Assets.loading, alignment: Alignment.center, fit: BoxFit.contain, height: 70),
      ]);

  @override
  void initState() {
    WidgetsBinding.instance!.addObserver(this);
    thumbnail = widget.baseFeedModel.getThumbnail(widget.video.videoUrl);
    _initializeVideoPlayerFuture = widget.baseFeedModel.getStreamUrl(widget.video.videoUrl).then((dataSource) {
      // Initalising the video with [streamUrl]

      flickManager = FlickManager(
          videoPlayerController: VideoPlayerController.network(dataSource),
          autoPlay: widget.isInView,
          onVideoEnd: () {
            final currentPosition = flickManager!.flickVideoManager!.videoPlayerValue!.position.inSeconds;

            if (currentPosition != 0) {
              widget.baseFeedModel.logCompleteVideo(widget.index);
            }
          });

      widget.feedPlayerController.init(flickManager!);
    });

    _videoManagerService.getStream().listen((state) {
      if (widget.isInView && flickManager != null && flickManager!.flickVideoManager!.isVideoInitialized) {
        if (state == FeedRouteState.away) {
          flickManager?.flickControlManager?.pause();
        } else if (state == FeedRouteState.onit && widget.showBookmark) {
          flickManager!.flickControlManager?.play();
        }
      }
    });

    super.initState();
  }

  @override
  void didUpdateWidget(FeedPlayer oldWidget) {
    if (oldWidget.isInView != widget.isInView) {
      if (widget.isInView) {
        if (flickManager != null && flickManager!.flickVideoManager!.isVideoInitialized) {
          flickManager!.flickControlManager?.play();
        }
      } else {
        if (flickManager != null && flickManager!.flickVideoManager!.isVideoInitialized) {
          flickManager!.flickControlManager?.pause();
          // logSkipOrView();
        }
      }
    }

    super.didUpdateWidget(oldWidget);
  }

  void logSkipOrView() {
    final currentVideoDuration = flickManager!.flickVideoManager!.videoPlayerValue!.position;

    if (currentVideoDuration.inSeconds < 10) {
      widget.baseFeedModel.logSkipVideo(widget.index - 1);
    } else {
      widget.baseFeedModel.logViewVideo(widget.index - 1);
    }
  }

  @override
  void dispose() {
    flickManager?.dispose();
    super.dispose();
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
                      index: widget.index,
                      feedPlayerController: widget.feedPlayerController,
                      feedViewModel: widget.baseFeedModel,
                      flickManager: flickManager!),
                  playerErrorFallback: Positioned.fill(
                      // TODO: Add blur
                      child: ThumbnailImage(thumbnail: thumbnail)),
                  playerLoadingFallback: loading(),
                ),
                flickVideoWithControlsFullscreen: FlickVideoWithControls(
                  playerLoadingFallback: Center(
                      child: ThumbnailImage(
                    thumbnail: thumbnail,
                  )),
                  playerErrorFallback: Positioned.fill(child: ThumbnailImage(thumbnail: thumbnail)),
                  controls: FeedControls(
                      feedPlayerController: widget.feedPlayerController,
                      feedViewModel: widget.baseFeedModel,
                      index: widget.index,
                      flickManager: flickManager!),
                  iconThemeData: const IconThemeData(
                    size: 40,
                    color: Colors.white,
                  ),
                  textStyle: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              VideoProgressBar(
                flickManager: flickManager!,
                progressColor: AppColors.primary,
              )
            ],
          );
        } else {
          return loading();
        }
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
