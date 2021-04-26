import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cato_feed/application/single_post/single_post_bloc.dart';
import 'package:cato_feed/injection.dart';
import 'package:cato_feed/presentation/routes/Router.gr.dart';
import 'package:cato_feed/presentation/screens/home_feed/home_feed_screen.dart';
import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:cato_feed/presentation/utils/common.dart';
import 'package:cato_feed/presentation/widgets/post_widgets.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cato_feed/application/user_profile/user_profile.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cato_feed/application/video_player/video_player_bloc.dart';
import 'package:youtube_player_webview/core/youtube_player.dart';
import 'package:youtube_player_webview/utils/youtube_player_controller.dart';
import 'package:youtube_player_webview/utils/youtube_player_flags.dart';
import 'package:youtube_player_webview/widgets/widgets.dart';

class SinglePostScreen extends StatelessWidget {
  final String postId;

  const SinglePostScreen({@required this.postId});

  @override
  Widget build(BuildContext context) {
    makeStatusBarWhite();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) =>
                getIt<UserProfileBloc>()..add(UserProfileEvent.refresh())),
        BlocProvider(create: (_) => getIt<VideoPlayerBloc>()),
        BlocProvider(
            create: (_) =>
                getIt<SinglePostBloc>()..add(SinglePostEvent.loadPost(postId))),
      ],
      child: SinglePostPage(),
    );
  }
}

class SinglePostPage extends StatefulWidget {
  @override
  _SinglePostPageState createState() => _SinglePostPageState();
}

class _SinglePostPageState extends State<SinglePostPage> {
  YoutubePlayerController _controller;

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SinglePostBloc, SinglePostState>(
      listener: (_, state) async {
        if (state.failure != null) {
          Flushbar(
            message: state.failure?.toString(),
            duration: Duration(seconds: 3),
          )..show(context);
        }

      },
      builder: (_, state) {
        var isPostLoading = state.post == null;
        if(!isPostLoading && _controller == null) {
          _controller = YoutubePlayerController(
            initialVideoId: YoutubePlayer.convertUrlToId(state.post.videoUrl),
            flags: YoutubePlayerFlags(
              autoPlay: true,
              enableCaption: false,
              controlsVisibleAtStart: false,
              hideControls: false,
              loop: false,
              disableDragSeek: false,
              startAt: 0,
            ),
          );
        }
        return YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: _controller,
            onReady: () {
              _controller.play();
            },
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

            },
            showVideoProgressIndicator: true,
          ),
          onEnterFullScreen: () async {
            await Future.delayed(Duration(milliseconds: 300));
            _controller.play();
          },
          onExitFullScreen: () async {
            await Future.delayed(Duration(milliseconds: 300));
            _controller.play();
          },
          builder: (context, player) {
            return PlatformScaffold(
              body: (isPostLoading)
                  ? Center(child: CircularProgressIndicator())
                  : Column(
                      children: [
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
                          child: FeedPost(
                              post: state.post,
                              youtubePlayer: player,
                              controller: _controller,
                              index: 0),
                        ),
                      ],
                    ),
            );
          },
        );
      },
    );
  }
}
