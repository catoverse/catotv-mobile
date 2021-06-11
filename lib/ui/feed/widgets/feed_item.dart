import 'package:auto_size_text/auto_size_text.dart';
import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/video/video.dart';
import 'package:feed/core/services/youtube_service/youtube_service.dart';
import 'package:feed/core/utils/multi_manager.dart';
import 'package:feed/ui/feed/widgets/player.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';

final yt = locator<YoutubeService>();

class FeedItem extends StatefulWidget {
  final Video video;
  final VoidCallback? onShare;
  final FlickMultiManager flickMultiManager;

  const FeedItem(
      {Key? key,
      required this.video,
      required this.flickMultiManager,
      this.onShare})
      : super(key: key);

  @override
  _FeedItemState createState() => _FeedItemState();
}

class _FeedItemState extends State<FeedItem>
    with AutomaticKeepAliveClientMixin {
  late String videoUrl;

  bool mounted = false;

  @override
  void initState() {
    getStreamUrl().then((value) => setState(() {
          videoUrl = value;
          mounted = true;
        }));
    super.initState();
  }

  Future getStreamUrl() async {
    YoutubeService youtubeService = locator<YoutubeService>();

    String streamUrl = await youtubeService.getStream(widget.video.youtubeUrl);

    return streamUrl;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    if (!mounted) return LinearProgressIndicator();

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 8.0),
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          // Header of the video card
          _displayTitleTopic(context, widget.video.title, "Productivity"),

          FlickMultiPlayer(
            url: videoUrl,
            flickMultiManager: widget.flickMultiManager,
            thumbnail: YoutubeService.getThumbnail(widget.video.youtubeUrl),
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
