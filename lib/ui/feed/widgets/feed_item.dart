import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/video_service.dart';
import 'package:feed/feedplayer/controller.dart';
import 'package:feed/feedplayer/player.dart';
import 'package:feed/ui/global/thumbnail_image.dart';
import 'package:flutter/material.dart';

final yt = locator<VideoService>();

class FeedItem extends StatefulWidget {
  final Video video;
  final VoidCallback? onShare;
  final VoidCallback? onTopicTapped;
  final FeedPlayerController feedPlayerController;

  const FeedItem({
    Key? key,
    required this.video,
    required this.feedPlayerController,
    this.onShare,
    this.onTopicTapped,
  }) : super(key: key);

  @override
  _FeedItemState createState() => _FeedItemState();
}

class _FeedItemState extends State<FeedItem>
    with AutomaticKeepAliveClientMixin {
  final _videoService = locator<VideoService>();
  late String videoUrl;
  late String thumbnail;
  bool mounted = false;

  @override
  void initState() {
    getStreamUrl().then((value) => setState(() {
          videoUrl = value;
          mounted = true;
        }));
    thumbnail = VideoService.getThumbnail(widget.video.videoUrl);
    super.initState();
  }

  Future getStreamUrl() async {
    String streamUrl = await _videoService.getStream(widget.video.videoUrl);

    return streamUrl;
  }

  @override
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
          _displayTitleTopic(context, widget.video.title),

          mounted
              ? FeedPlayer(
                  url: videoUrl,
                  feedPlayerController: widget.feedPlayerController,
                  thumbnail: thumbnail,
                )
              : ThumbnailImage(thumbnail: thumbnail),

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
          InputChip(
            label: Text(widget.video.topic.name),
            onPressed: () => widget.onTopicTapped?.call(),
          ),
          IconButton(
              icon: Icon(Icons.share_outlined),
              onPressed: () => widget.onShare?.call())
        ],
      ),
    );
  }

  Widget _displayTitleTopic(BuildContext context, String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        maxLines: 3,
        style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
