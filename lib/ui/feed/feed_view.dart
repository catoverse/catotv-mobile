import 'package:feed/ui/feed/widgets/feed_item.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';

import 'feed_viewmodel.dart';

class FeedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<FeedViewModel>(
        viewModel: FeedViewModel(),
        onModelReady: (model) => model.getVideos(),
        builder: (context, uiHelpers, model) => Scaffold(
              body: model.isBusy
                  ? Center(child: CircularProgressIndicator())
                  : RefreshIndicator(
                      onRefresh: () => model.refresh(),
                      child: ListView(
                        children: [
                          ...model.videos
                              .map(
                                (video) => FeedItem(
                                  onShare: () => model.shareVideo(video),
                                  video: video,
                                  feedPlayerController: model.controller,
                                ),
                              )
                              .toList(),
                          Container(
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                                color: AppColors.surface,
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Woow! You covered all the videos and reached the end of the list\n",
                                  style: uiHelpers.button,
                                  textAlign: TextAlign.center,
                                ),
                                ElevatedButton(
                                    onPressed: () => model.refresh(),
                                    child: Text("Want More?")),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
            ));
  }
}
