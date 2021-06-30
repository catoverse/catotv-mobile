import 'package:feed/core/models/app_models.dart';
import 'package:feed/ui/base/feed_viewmodel.dart';
import 'package:feed/ui/global/thumbnail_image.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FeedPlayer extends StatefulWidget {
  final bool isInView;
  final String videoUrl;
  const FeedPlayer({Key? key, required this.videoUrl, required this.isInView})
      : super(key: key);

  @override
  _FeedPlayerState createState() => _FeedPlayerState();
}

class _FeedPlayerState extends State<FeedPlayer>
    with AutomaticKeepAliveClientMixin, BaseFeedViewModel {
  VideoPlayerController? _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _initializeVideoPlayerFuture =
        getStreamUrl(widget.videoUrl).then((dataSource) {
      _controller = VideoPlayerController.network(dataSource);
      _controller!.initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
        if (widget.isInView) {
          if (_controller != null && _controller!.value.isInitialized)
            _controller?.play();
        }
      });
    });

    super.initState();
  }

  @override
  void didUpdateWidget(FeedPlayer oldWidget) {
    if (oldWidget.isInView != widget.isInView) {
      if (widget.isInView) {
        if (_controller != null && _controller!.value.isInitialized)
          _controller?.play();
      } else {
        if (_controller != null && _controller!.value.isInitialized)
          _controller?.pause();
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  void deactivate() {
    _controller?.pause();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return AspectRatio(
              aspectRatio: 16 / 9, child: VideoPlayer(_controller!));
        } else {
          return Center(
            child: ThumbnailImage(
              thumbnail: getThumbnail(widget.videoUrl),
            ),
          );
        }
      },
    );
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Future getVideos() => Future.value();

  @override
  List<Video> get videos => throw UnimplementedError();
}
