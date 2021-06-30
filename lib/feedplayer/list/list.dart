import 'package:feed/core/models/app_models.dart';
import 'package:feed/feedplayer/list/list.widgets.dart';
import 'package:feed/feedplayer/player.dart';
import 'package:flutter/material.dart';
import 'package:inview_notifier_list/inview_notifier_list.dart';

class FeedPlayerListView extends StatelessWidget with $FeedPlayerListView {
  const FeedPlayerListView({Key? key, required this.items}) : super(key: key);

  final List<Video> items;

  /// Default Viewport visible condition
  /// This function defines the area within which the widgets should be notified as [inView].
  bool isInViewPortCondition(
          double deltaTop, double deltaBottom, double viewPortDimension) =>
      deltaTop < (0.5 * viewPortDimension) &&
      deltaBottom > (0.5 * viewPortDimension);

  @override
  Widget build(BuildContext context) {
    return InViewNotifierList(
        isInViewPortCondition: isInViewPortCondition,
        itemCount: items.length,
        initialInViewIds: ['0'],
        builder: (BuildContext context, int index) => InViewNotifierWidget(
            id: "$index",
            builder: (BuildContext context, bool isInView, Widget? child) {
              final video = items[index];
              return Container(
                width: double.infinity,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 30.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Feed header to display channelName and Title of the video
                    feedHeader(video.title, video.channelInformation.name),

                    // Feed Video Player
                    FeedPlayer(videoUrl: video.videoUrl, isInView: isInView),

                    // Feed Footer
                    feedFooter(video.topic.name)
                  ],
                ),
              );
            }));
  }
}
