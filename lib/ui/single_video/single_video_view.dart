import 'package:feed/feedplayer/list/list.dart';
import 'package:feed/ui/base/feedmodel.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:flutter/material.dart';
import 'package:feed/ui/global/theme.dart';
import 'single_video_viewmodel.dart';

class SingleFeedView extends StatelessWidget {
  final String videoId;

  const SingleFeedView({Key? key, required this.videoId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<BaseFeedModel>(
        viewModel: SingleFeedViewModel(),
        onModelReady: (model) => model.getVideo(videoId),
        builder: (context, uiHelpers, model) => Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                iconTheme: const IconThemeData(color: AppColors.textPrimary),
                title: Text("Video",
                    style: uiHelpers.button!
                        .copyWith(color: AppColors.textPrimary)),
              ),
              body: model.isBusy
                  ? const Center(child: CircularProgressIndicator())
                  : FeedPlayerListView(),
            ));
  }
}
