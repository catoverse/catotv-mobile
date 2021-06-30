import 'package:feed/feedplayer/list/list.widgets.dart';
import 'package:feed/feedplayer/player.dart';
import 'package:feed/ui/base/base_feedmodel.dart';
import 'package:flutter/material.dart';
import 'package:inview_notifier_list/inview_notifier_list.dart';
import 'package:stacked/stacked.dart';

class FeedPlayerListView extends ViewModelWidget<BaseFeedModel>
    with $FeedPlayerListView {
  const FeedPlayerListView({Key? key}) : super(key: key);

  /// Default Viewport visible condition
  /// This function defines the area within which the widgets should be notified as [inView].
  bool isInViewPortCondition(
          double deltaTop, double deltaBottom, double viewPortDimension) =>
      deltaTop < (0.5 * viewPortDimension) &&
      deltaBottom > (0.5 * viewPortDimension);

  @override
  Widget build(BuildContext context, BaseFeedModel viewModel) {
    return InViewNotifierList(
        isInViewPortCondition: isInViewPortCondition,
        itemCount: viewModel.videos.length,
        initialInViewIds: ['0'],
        builder: (BuildContext context, int index) => InViewNotifierWidget(
            id: "$index",
            builder: (BuildContext context, bool isInView, Widget? child) {
              final video = viewModel.videos[index];
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
                    FeedPlayer(
                      videoUrl: video.videoUrl,
                      isInView: isInView,
                      baseFeedModel: viewModel,
                    ),

                    // Feed Footer
                    feedFooter(video.topic.name)
                  ],
                ),
              );
            }));
  }
}
