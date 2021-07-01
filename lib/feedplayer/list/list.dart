import 'package:feed/feedplayer/controller.dart';
import 'package:feed/feedplayer/list/list.widgets.dart';
import 'package:feed/feedplayer/player.dart';
import 'package:feed/ui/base/feedmodel.dart';
import 'package:flutter/material.dart';
import 'package:inview_notifier_list/inview_notifier_list.dart';
import 'package:stacked/stacked.dart';

class FeedPlayerListView extends ViewModelWidget<BaseFeedModel> {
  /// Default Viewport visible condition
  /// This function defines the area within which the widgets should be notified as [inView].
  bool isInViewPortCondition(
          double deltaTop, double deltaBottom, double viewPortDimension) =>
      deltaTop < (0.5 * viewPortDimension) &&
      deltaBottom > (0.5 * viewPortDimension);

  final FeedPlayerController controller = FeedPlayerController();

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
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Feed header to display channelName and Title of the video
                    FeedHeader(index: index),

                    // Feed Video Player
                    FeedPlayer(
                      videoUrl: video.videoUrl,
                      isInView: isInView,
                      baseFeedModel: viewModel,
                      feedPlayerController: controller,
                    ),

                    // Feed Footer
                    FeedFooter(index: index)
                  ],
                ),
              );
            }));
  }
}
