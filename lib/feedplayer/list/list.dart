import 'package:feed/feedplayer/controller.dart';
import 'package:feed/feedplayer/list/list.widgets.dart';
import 'package:feed/feedplayer/player.dart';
import 'package:feed/ui/base/feedmodel.dart';
import 'package:flutter/material.dart';
import 'package:inview_notifier_list/inview_notifier_list.dart';
import 'package:stacked/stacked.dart';

class FeedPlayerListView extends ViewModelWidget<BaseFeedModel> {
  FeedPlayerListView({this.header, this.footer})
      : controller = FeedPlayerController();

  /// Default Viewport visible condition
  /// This function defines the area within which the widgets should be notified as [inView].
  bool isInViewPortCondition(
          double deltaTop, double deltaBottom, double viewPortDimension) =>
      deltaTop < (0.5 * viewPortDimension) &&
      deltaBottom > (0.5 * viewPortDimension);

  final FeedPlayerController controller;

  final Widget? header;

  final Widget? footer;

  @override
  Widget build(BuildContext context, BaseFeedModel viewModel) {
    final int length = _getItemCount(viewModel.videos.length);
    return InViewNotifierList(
        isInViewPortCondition: isInViewPortCondition,
        itemCount: length,
        initialInViewIds: [header != null ? '1' : '0'],
        builder: (BuildContext context, int index) {
          if (header != null && index == 0) return header!;
          if (footer != null && index == length - 1) return footer!;

          return InViewNotifierWidget(
              id: "$index",
              builder: (BuildContext context, bool isInView, Widget? child) {
                final videoIndex = header != null ? index - 1 : index;
                return Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Feed header to display channelName and Title of the video
                      FeedHeader(index: videoIndex),

                      // Feed Video Player
                      FeedPlayer(
                          video: viewModel.videos[videoIndex],
                          isInView: isInView,
                          baseFeedModel: viewModel,
                          feedPlayerController: controller,
                          index: index),

                      // Feed Footer
                      FeedFooter(index: videoIndex)
                    ],
                  ),
                );
              });
        });
  }

  int _getItemCount(int length) {
    int totalLength = length;

    if (header != null) totalLength++;

    if (footer != null) totalLength++;

    return totalLength;
  }
}
