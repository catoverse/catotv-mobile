import 'package:feed/core/models/video/video.dart';
import 'package:feed/ui/feed/feed_view.page.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'feed_viewmodel.dart';

class FeedView extends StatelessWidget with $FeedView {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<BaseFeedViewModel>(
        viewModel: BaseFeedViewModel(),
        onModelReady: (model) => listenToPageRequests(model),
        builder: (context, uiHelpers, model) => Scaffold(
              body: PagedListView<int, Video>(
                pagingController: pagingController,
                builderDelegate: PagedChildBuilderDelegate<Video>(
                  itemBuilder: (context, item, index) => AspectRatio(
                    aspectRatio: 16 / 9,
                    child: ListTile(
                      title: Text(item.title),
                    ),
                  ),
                ),
              ),
            ));
  }
}
