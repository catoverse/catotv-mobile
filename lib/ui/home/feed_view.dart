import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/user/user.dart';
import 'package:feed/core/models/video/video.dart';
import 'package:feed/core/services/feed_service/feed_service.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'videoplayer.dart';

class FeedView extends StatefulWidget {
  @override
  _FeedViewState createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: '',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      enableCaption: false,
      controlsVisibleAtStart: false,
      hideControls: false,
      loop: false,
      disableDragSeek: false,
      hideThumbnail: true,
      startAt: 0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<FeedViewModel>(
        viewModel: FeedViewModel(),
        isReactive: true,
        builder: (context, uiHelpers, model) => YoutubePlayerBuilder(
              builder: (BuildContext context, Widget player) => model.isBusy
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      addAutomaticKeepAlives: true,
                      itemCount: model.videos.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (BuildContext context, int index) =>
                          VideoPlayer(
                        video: model.videos[index],
                        player: player,
                        onPlay: () {
                          if (model.currentPlayingIndex == index)
                            return pauseVideo();
                          model.updateCurrentPlayingIndex(index);
                          playVideo(model.videos[index].video_url);
                        },
                        showHiddenPlayer:
                            index == 0 && model.currentPlayingIndex == -1,
                        isPlaying: model.currentPlayingIndex == index,
                      ),
                    ),
              player: YoutubePlayer(
                controller: _controller,
                bottomActions: [
                  const SizedBox(width: 14.0),
                  CurrentPosition(),
                  const SizedBox(width: 8.0),
                  ProgressBar(
                    controller: _controller,
                    isExpanded: true,
                  ),
                  RemainingDuration(),
                  const SizedBox(width: 14.0),
                  FullScreenButton(),
                ],
                onEnded: (e) {
                  model.updateCurrentPlayingIndex(-1);
                },
                showVideoProgressIndicator: true,
              ),
            ));
  }

  void playVideo(String link) {
    String id = YoutubePlayer.convertUrlToId(link)!;
    _controller.load(id);
  }

  void pauseVideo() {
    _controller.pause();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class FeedViewModel extends FutureViewModel {
  final FeedService _feedService = locator<FeedService>();
  final UserService _userService = locator<UserService>();
  User? get currentUser => _userService.currentUser;

  List<Video> get videos => _feedService.videos;

  int _currentPlayingIndex = -1;

  int get currentPlayingIndex => _currentPlayingIndex;

  updateCurrentPlayingIndex(int currentPlayingIndex) {
    _currentPlayingIndex = currentPlayingIndex;
    notifyListeners();
  }

  @override
  Future futureToRun() async {
    var res = await _feedService.fetchVideos(currentUser!.id);

    if (res is bool && res) {
      print("Data fetched");
    }
  }
}
