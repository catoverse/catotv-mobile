import 'package:auto_size_text/auto_size_text.dart';
import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/video/video.dart';
import 'package:feed/core/services/youtube_service/youtube_service.dart';
import 'package:feed/ui/global/blurred_image.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

final yt = locator<YoutubeService>();

class FeedItem extends StatefulWidget {
  final Video video;
  final bool isPlaying;
  final int index;
  final VoidCallback? onShare;

  const FeedItem(
      {Key? key,
      required this.index,
      required this.video,
      required this.isPlaying,
      this.onShare})
      : super(key: key);

  @override
  _FeedItemState createState() => _FeedItemState();
}

class _FeedItemState extends State<FeedItem>
    with AutomaticKeepAliveClientMixin {
  late VideoPlayerController _videoPlayerController;

  /// Returns [true] if the player is initialized
  bool mounted = false;

  /// Initialise player with the [video_url]
  Future startPlayer() async {
    _videoPlayerController =
        VideoPlayerController.network(widget.video.youtubeUrl);

    await _videoPlayerController.initialize();
  }

  @override
  void initState() {
    startPlayer().then((value) {
      setState(() {
        mounted = true;
      });

      /// autoplays video based on the scroll position
      /// If the video is in view it starts playing...
      if (widget.isPlaying) {
        _videoPlayerController.play();
      }
    });
    super.initState();
  }

  @override
  void didUpdateWidget(FeedItem oldWidget) {
    if (oldWidget.isPlaying != widget.isPlaying) {
      if (widget.isPlaying) {
        if (mounted) _videoPlayerController.play();
      } else {
        if (mounted) _videoPlayerController.pause();
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    // if (!mounted) return $ShimmerFeedItem();

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 8.0),
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          // Header of the video card
          _displayTitleTopic(context, widget.video.title, "Productivity"),

          !mounted
              ? AspectRatio(
                  aspectRatio: 16 / 9,
                  child: BlurredImage.network(
                    YoutubeService.getThumbnail(widget.video.youtubeUrl),
                  ),
                )
              : AspectRatio(
                  aspectRatio: _videoPlayerController.value.aspectRatio,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      if (mounted) VideoPlayer(_videoPlayerController),
                      IconButton(
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            _videoPlayerController.value.isPlaying
                                ? _videoPlayerController.pause()
                                : _videoPlayerController.play();
                          });
                        },
                        icon: Icon(
                          _videoPlayerController.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          size: 50,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: VideoProgressIndicator(
                          _videoPlayerController,
                          allowScrubbing: false,
                          colors: VideoProgressColors(
                              playedColor: AppColors.primary),
                        ),
                      )
                    ],
                  ),
                ),

          // Footer of the video card'Example of a Dynamic Link'
          _displayFooter()
        ],
      ),
    );
  }

  Widget _displayFooter() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon: Icon(Icons.thumb_up_alt_outlined), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.share_outlined),
              onPressed: () => widget.onShare?.call())
        ],
      ),
    );
  }

  Widget _displayTitleTopic(BuildContext context, String title, String topic) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  widget.video.title,
                  maxLines: 3,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal),
                ),
                GestureDetector(
                  child: Text(
                    topic,
                    style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  onTap: () {
                    /// TODO: Fetch all the videos with [Topic]
                  },
                ),
              ],
            ),
          ),
          IconButton(
              icon: Icon(Icons.bookmark_outline),
              onPressed: () {
                /// TODO: Store the Video in [Hive]
              })
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
