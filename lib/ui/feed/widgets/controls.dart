import 'package:feed/ui/feed/feed_viewmodel.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerControls extends ViewModelWidget<FeedViewModel> {
  @override
  Widget build(BuildContext context, FeedViewModel viewModel) {
    return Container(
      padding: EdgeInsets.only(right: 10.0),
      height: 50,
      width: double.infinity,
      child: Row(
        children: [
          IconButton(
            color: AppColors.onPrimary,
            icon: viewModel.isPlaying
                ? Icon(Icons.pause)
                : Icon(Icons.play_arrow),
            onPressed: viewModel.playPauseVideo,
          ),
          ProgressBar(
            controller: viewModel.controller,
            isExpanded: true,
            colors: ProgressBarColors(
                handleColor: AppColors.onPrimary,
                backgroundColor: AppColors.primary[200],
                playedColor: AppColors.primary[100]),
          ),
          SizedBox(
            width: 10.0,
          ),
          RemainingDuration(controller: viewModel.controller),
        ],
      ),
    );
  }
}
