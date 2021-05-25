import 'package:feed/ui/global/screen.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'widgets/videoplayer.dart';
import 'feed_viewmodel.dart';

class FeedView extends StatefulWidget {
  @override
  _FeedViewState createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: '',
  );

  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<FeedViewModel>(
        viewModel: FeedViewModel(),
        isReactive: true,
        disposeViewModel: false,
        onModelReady: (model) {
          model.updateCallBack(() {
            setState(() {
              _controller = YoutubePlayerController(
                initialVideoId:
                    YoutubePlayer.convertUrlToId(model.videos[0].video_url)!,
                flags: YoutubePlayerFlags(
                  autoPlay: true,
                  enableCaption: false,
                  hideControls: false,
                  loop: false,
                  disableDragSeek: true,
                  hideThumbnail: true,
                ),
              );
            });
          });
        },
        builder: (context, uiHelpers, model) => YoutubePlayerBuilder(
              builder: (BuildContext context, Widget player) => model.isBusy
                  ? Center(child: CircularProgressIndicator())
                  : Center(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: model.videos.map((e) {
                          int index = model.videos.indexOf(e);
                          return VisibilityDetector(
                            key: ValueKey(index),
                            onVisibilityChanged: (visibilityInfo) {
                              var visiblePercentage =
                                  visibilityInfo.visibleFraction * 100;

                              if (visibilityInfo.key ==
                                      ValueKey(model.currentPlayingIndex) &&
                                  visiblePercentage < 60.0) {
                                //increase the currentPlaying index to 1
                                int newIndex = index + 1;
                                if (model.currentPlayingIndex != newIndex) {
                                  model.updateCurrentPlayingIndex(newIndex);
                                  playVideo(model.videos[newIndex].video_url);
                                }
                              }
                            },
                            child: VideoPlayer(
                              video: model.videos[index],
                              player: player,
                              onPlay: () {
                                // if (model.currentPlayingIndex == index)
                                //   return pauseVideo();
                                // model.updateCurrentPlayingIndex(index);
                                // playVideo(model.videos[index].video_url);
                              },
                              showHiddenPlayer:
                                  index == 0 && model.currentPlayingIndex == -1,
                              isPlaying: model.currentPlayingIndex == index,
                            ),
                          );
                        }).toList(),
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
