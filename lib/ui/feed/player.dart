import 'package:feed/ui/feed/feed_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer extends ViewModelWidget<FeedViewModel> {
  @override
  Widget build(BuildContext context, FeedViewModel model) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: model.controller,
          showVideoProgressIndicator: false,
          topActions: [
            Container(),
            Container(),
            Container(),
            FullScreenButton()
          ],
          bottomActions: [Container(), Container(), Container(), Container()],
        ),
        builder: (context, player) {
          return player;
        });
  }
}
