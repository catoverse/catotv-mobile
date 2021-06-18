import 'package:feed/core/models/app_models.dart';
import 'package:feed/feedplayer/controller.dart';
import 'package:feed/ui/feed/feed_view.page.dart';
import 'package:feed/ui/feed/widgets/feed_item.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'feed_viewmodel.dart';

class FeedView extends StatelessWidget with $FeedView {
  final feedPlayerController = FeedPlayerController();
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<BaseFeedViewModel>(
        viewModel: BaseFeedViewModel(),
        onModelReady: (model) => listenToPageRequests(model),
        onDispose: feedPlayerController.dispose(),
        builder: (context, uiHelpers, model) => Scaffold(
              body: VisibilityDetector(
                key: ObjectKey(feedPlayerController),
                onVisibilityChanged: (visibility) {
                  if (visibility.visibleFraction == 0) {
                    feedPlayerController.pause();
                  }
                },
                child: PagedListView<int, Video>(
                  pagingController: pagingController,
                  builderDelegate: PagedChildBuilderDelegate<Video>(
                    itemBuilder: (context, item, index) => FeedItem(
                        onShare: () => model.shareVideo(item),
                        video: item,
                        feedPlayerController: feedPlayerController),
                  ),
                ),
              ),
            ));
  }
}
