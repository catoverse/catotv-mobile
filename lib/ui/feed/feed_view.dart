import 'package:feed/app/app.locator.dart';
import 'package:feed/feedplayer/controller.dart';
import 'package:feed/ui/feed/widgets/feed_item.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'feed_viewmodel.dart';

class FeedView extends StatelessWidget {
  final FeedPlayerController controller = locator<FeedPlayerController>();
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
                      child: VisibilityDetector(
                        key: ObjectKey(controller),
                        onVisibilityChanged: (visibility) {
                          if (visibility.visibleFraction == 0) {
                            controller.pause();
                          }
                        },
                        child: ListView(
                          addAutomaticKeepAlives: true,
                          children: [
                            ...model.videos
                                .map(
                                  (video) => FeedItem(
                                    onShare: () => model.shareVideo(video),
                                    video: video,
                                    feedPlayerController: controller,
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
                                      onPressed: () {
                                        controller.dispose();
                                        model.refresh();
                                      },
                                      child: Text("Want More?")),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
            ));
  }
}
