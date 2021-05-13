import 'package:feed/core/models/video/video.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer extends StatefulWidget {
  final Video video;

  const VideoPlayer({Key? key, required this.video}) : super(key: key);

  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.video.video_url)!,
      flags: YoutubePlayerFlags(),
    );

    super.initState();
  }

  late DateTime startTime;
  late Duration totalTimeWatched;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print("Total time watched: " +
            startTime.difference(DateTime.now()).toString());

        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.video.title,
            style: TextStyle(color: AppColors.primary),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: AppColors.primary),
              onPressed: () {}),
        ),
        body: Center(
          child: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: false,
            topActions: [
              Container(),
              Container(),
              Container(),
              FullScreenButton(),
            ],
            bottomActions: [
              Container(),
              Container(),
              Container(),
              Container(),
            ],
            onReady: () {
              setState(() {
                startTime = DateTime.now();
              });
            },
            onEnded: (meta) {
              setState(() {
                totalTimeWatched = startTime.difference(DateTime.now());
              });

              print("Total time watched: " + totalTimeWatched.toString());
            },
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(right: 10.0),
          color: AppColors.primary,
          height: 50,
          width: double.infinity,
          child: Row(
            children: [
              IconButton(
                color: AppColors.onPrimary,
                icon: _controller.value.isPlaying
                    ? Icon(Icons.pause)
                    : Icon(Icons.play_arrow),
                onPressed: () {
                  bool isPlaying = _controller.value.isPlaying;

                  if (isPlaying) {
                    _controller.pause();
                  } else {
                    _controller.play();
                  }
                },
              ),
              ProgressBar(
                controller: _controller,
                isExpanded: true,
                colors: ProgressBarColors(
                    handleColor: AppColors.onPrimary,
                    backgroundColor: AppColors.primary[200],
                    playedColor: AppColors.primary[100]),
              ),
              SizedBox(
                width: 10.0,
              ),
              RemainingDuration(
                controller: _controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
