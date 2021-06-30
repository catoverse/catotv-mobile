import 'package:feed/core/models/app_models.dart';
import 'package:feed/feedplayer/player.dart';
import 'package:flutter/material.dart';
import 'package:inview_notifier_list/inview_notifier_list.dart';

class FeedPlayerListView extends StatelessWidget {
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
        builder: (BuildContext context, bool isInView, Widget? child) =>
            FeedPlayer(video: items[index], isInView: isInView),
      ),
    );
  }
}
