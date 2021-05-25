import 'package:auto_size_text/auto_size_text.dart';
import 'package:feed/core/models/video/video.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:transparent_image/transparent_image.dart';

class VideoPlayer extends StatefulWidget {
  final Widget player;
  final Video video;
  final bool isPlaying;
  final bool showHiddenPlayer;
  final Function onPlay;

  const VideoPlayer(
      {Key? key,
      required this.player,
      required this.showHiddenPlayer,
      required this.video,
      required this.onPlay,
      required this.isPlaying})
      : super(key: key);

  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer>
    with AutomaticKeepAliveClientMixin<VideoPlayer> {
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 8.0),
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          // Header of the video card
          _displayTitleTopic(context, widget.video.title, "Productivity"),

          (widget.isPlaying) ? _showVideoPlayer() : _showThumbnail(),

          // Footer of the video card
          _displayFooter()
        ],
      ),
    );
  }

  Widget _showThumbnail() {
    return Stack(
      children: [
        if (widget.showHiddenPlayer)
          Opacity(
            child: widget.player,
            opacity: 0.01,
          ),
        AspectRatio(
          aspectRatio: 16.0 / 9.0,
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image: _getThumbnail(widget.video.video_url),
            fit: BoxFit.cover,

            // loadingBuilder: (_, child, loadingProgress) {
            //   if (loadingProgress == null) return child;
            //   return Center(
            //     child: CircularProgressIndicator(),
            //   );
            // },
            imageErrorBuilder: (_, obj, trace) => Text("${obj.toString()}"),
          ),
        ),
        AspectRatio(
          aspectRatio: 16 / 9.0,
          child: Container(
            color: Color(0x4D000000),
          ),
        ),
      ],
    );
  }

  Widget _showVideoPlayer() => widget.player;

  Widget _displayFooter() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon: Icon(Icons.thumb_up_alt_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.share_outlined), onPressed: () {})
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
  bool get wantKeepAlive => widget.isPlaying;

  String _getThumbnail(String youtubeURL) {
    String videoId = YoutubePlayer.convertUrlToId(youtubeURL)!;
    return YoutubePlayer.getThumbnail(videoId: videoId);
  }
}
