import 'package:feed/core/utils/multi_manager.dart';
import 'package:feed/ui/feed/widgets/feed_item.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';
import 'package:inview_notifier_list/inview_notifier_list.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'feed_viewmodel.dart';

bool isInView(double deltaTop, double deltaBottom, double viewPortDimension) =>
    deltaTop < (0.5 * viewPortDimension) &&
    deltaBottom > (0.5 * viewPortDimension);

class FeedView extends StatelessWidget {
  final FlickMultiManager flickMultiManager = FlickMultiManager();
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<FeedViewModel>(
        viewModel: FeedViewModel(),
        onModelReady: (model) => model.getPosts(),
        builder: (context, uiHelpers, model) => Scaffold(
              body: model.isBusy
                  ? Center(child: CircularProgressIndicator())
                  : VisibilityDetector(
                      key: ObjectKey(flickMultiManager),
                      onVisibilityChanged: (visibility) {
                        if (visibility.visibleFraction == 0) {
                          flickMultiManager.pause();
                        }
                      },
                      child: ListView.builder(
                        itemCount: model.videos.length,
                        itemBuilder: (BuildContext context, int index) =>
                            FeedItem(
                          video: model.videos[index],
                          flickMultiManager: flickMultiManager,
                        ),
                      ),
                    ),
            ));
  }
}
