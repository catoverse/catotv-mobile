import 'package:feed/feedplayer/list/list.dart';
import 'package:feed/ui/base/feedmodel.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:flutter/material.dart';

import 'feed_viewmodel.dart';

class FeedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<BaseFeedModel>(
        viewModel: FeedViewModel(),
        onModelReady: (model) => model.getVideos(),
        builder: (context, uiHelpers, model) => Scaffold(
              body: model.isBusy
                  ? Center(child: CircularProgressIndicator())
                  : RefreshIndicator(
                      onRefresh: model.refresh, child: FeedPlayerListView()),
            ));
  }
}
