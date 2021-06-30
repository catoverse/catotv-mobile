import 'package:feed/core/models/app_models.dart';
import 'package:feed/feedplayer/list/list.widgets.dart';
import 'package:feed/ui/base/feed_viewmodel.dart';
import 'package:feed/ui/global/thumbnail_image.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FeedPlayer extends StatefulWidget {
  final bool isInView;
  final Video video;
  const FeedPlayer({Key? key, required this.video, required this.isInView})
      : super(key: key);

  @override
  _FeedPlayerState createState() => _FeedPlayerState();
}

class _FeedPlayerState extends State<FeedPlayer>
    with AutomaticKeepAliveClientMixin, BaseFeedViewModel, $FeedPlayerListView {
  VideoPlayerController? _controller;

  bool mounted = false;

  @override
  void initState() {
    // _initializeVideoPlayerFuture().then((value) => setState(() {
    //       mounted = true;
    //     }));
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

  Future _initializeVideoPlayerFuture() async {
    String videoUrl = await getStreamUrl(widget.video.videoUrl);
    _controller = VideoPlayerController.network(videoUrl);
    await _controller!.initialize().then((value) => setState);

    if (widget.isInView) {
      _controller?.play();
    }
  }

  @override
  Widget build(BuildContext context) {
    print("${widget.video.title} I was created");
    super.build(context);

    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 30.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Feed header to display channelName and Title of the video
          feedHeader(widget.video.title, widget.video.channelInformation.name),

          // Feed Video Player
          ThumbnailImage(thumbnail: getThumbnail(widget.video.videoUrl)),

          // Feed Footer
          feedFooter(widget.video.topic.name)
        ],
      ),
    );

    // return AspectRatio(aspectRatio: 16 / 9, child: VideoPlayer(_controller));
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Future getVideos() => Future.value();

  @override
  List<Video> get videos => throw UnimplementedError();
}
