import 'package:auto_size_text/auto_size_text.dart';
import 'package:cato_feed/application/share_video/share_video_bloc.dart';
import 'package:cato_feed/application/user_profile/user_profile.dart';
import 'package:cato_feed/application/video_player/video_player_bloc.dart';
import 'package:cato_feed/domain/core/i_logger.dart';
import 'package:cato_feed/domain/posts/post.dart';
import 'package:cato_feed/infrastructure/core/logger/log_events.dart';
import 'package:cato_feed/injection.dart';
import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class _PostTitleWidget extends StatelessWidget {
  final String title;

  _PostTitleWidget({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 15,
        ),
        Expanded(
          flex: 1,
          child: AutoSizeText(
            title,
            style: TextStyle(color: Colors.white, fontSize: 16),
            overflowReplacement: AutoSizeText(title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.25,
                ),
                maxLines: 2),
            maxLines: 1,
          ),
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}

class _PostMediaWidget extends StatefulWidget {
  final String postId;
  final String youtubeVideoId;
  final int startTime;
  final int endTime;

  const _PostMediaWidget(
      {Key key, this.postId, this.youtubeVideoId, this.startTime, this.endTime})
      : super(key: key);

  @override
  _PostMediaWidgetState createState() =>
      _PostMediaWidgetState(postId, youtubeVideoId, startTime, endTime);
}

class _PostMediaWidgetState extends State<_PostMediaWidget> {
  final String youtubeVideoId;
  final int startTime;
  final int endTime;
  final String postId;

  YoutubePlayerController _controller;
  bool _isPlayerReady = false;
  VideoPlayerBloc videoPlayerBloc;

  _PostMediaWidgetState(
      this.postId, this.youtubeVideoId, this.startTime, this.endTime);

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: youtubeVideoId,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        enableCaption: false,
        controlsVisibleAtStart: false,
        hideControls: false,
        loop: false,
        disableDragSeek: false,
        startAt: startTime,
        endAt: endTime,
      ),
    )..addListener(_youtubePlayerListener);
  }

  void _youtubePlayerListener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {}
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.removeListener(_youtubePlayerListener);
    videoPlayerBloc?.add(VideoPlayerEvent.setCurrentPlayablePlayingId(null));
    videoPlayerBloc = null;
    var currentPosition = _controller.value.position.inSeconds;
    if(currentPosition != startTime) {
      getIt<ILogger>().logEvent(LogEvents.EVENT_VIDEO_WATCHED_TIMESTAMP,
          params: LogEvents.getVideoPlayerParams(postId, playbackTimeStamp: currentPosition));
    }
    _controller.dispose();
    _controller = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    videoPlayerBloc = context.bloc<VideoPlayerBloc>();
    return BlocBuilder<VideoPlayerBloc, VideoPlayerState>(
      buildWhen: (previous, current) {
        if (previous.currentPlayingPostId == current.currentPlayingPostId)
          return false;
        if (previous.currentPlayingPostId == postId) return true;
        if (current.currentPlayingPostId == postId) return true;
        return false;
      },
      builder: (context, state) {
        if (state.currentPlayingPostId == postId) {
          return YoutubePlayer(
            controller: _controller,
            onReady: () {
              _isPlayerReady = true;
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
            ],
            onEnded: (e) {
              getIt<ILogger>().logEvent(LogEvents.EVENT_VIDEO_WATCHED_FINISHED,
                  params: LogEvents.getVideoPlayerParams(postId));
              context
                  .bloc<VideoPlayerBloc>()
                  .add(VideoPlayerEvent.setCurrentPlayablePlayingId(null));
            },
            showVideoProgressIndicator: true,
          );
        } else {
          return InkWell(
            onTap: () {
              getIt<ILogger>().logEvent(LogEvents.EVENT_VIDEO_PLAY_PRESSED,
                  params: LogEvents.getVideoPlayerParams(postId));
              context
                  .bloc<VideoPlayerBloc>()
                  .add(VideoPlayerEvent.setCurrentPlayablePlayingId(postId));
            },
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9.0,
                  child: Image.network(
                    getYoutubeThumbnail(youtubeVideoId),
                    fit: BoxFit.cover,
                    loadingBuilder: (_, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return BlurHash(hash: 'LKO2?U%2Tw=w]~RBVZRi};RPxuwH');
                    },
                    errorBuilder: (_, __, ___) =>
                        BlurHash(hash: 'LKO2?U%2Tw=w]~RBVZRi};RPxuwH'),
                  ),
                ),
                AspectRatio(
                  aspectRatio: 16 / 9.0,
                  child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.play_arrow,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          );
        }
      },
    );
  }
}

class _PostSocialStatsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 15,
        ),
        Text('6M views'),
        SizedBox(
          width: 5,
        ),
        Text('|'),
        SizedBox(
          width: 5,
        ),
        Text('Liked by rutvijkarkhanis and 20k others')
      ],
    );
  }
}

class _PostSocialInteractionWidget extends StatelessWidget {
  final String postId;
  final String title;
  final String imageUrl;

  const _PostSocialInteractionWidget(this.postId, this.title, this.imageUrl,
      {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserProfileBloc, UserProfileState>(
      builder: (_, state) {
        var isLiked = state.isLiked(postId);
        var isSaved = state.isSaved(postId);
        // ignore: close_sinks
        var bloc = context.bloc<UserProfileBloc>();
        return Row(
          children: [
            SizedBox(
              width: 15,
            ),
            InkWell(
              onTap: () {
                if (isLiked) {
                  bloc.add(UserProfileEvent.unlikePost(postId));
                } else {
                  bloc.add(UserProfileEvent.likePost(postId));
                }
              },
              child: Icon(
                (isLiked) ? Icons.favorite : Icons.favorite_border,
                color: (isLiked) ? Colors.red.shade600 : Colors.white,
                size: 30,
              ),
            ),
            SizedBox(
              width: 24,
            ),
            InkWell(
              onTap: () {
                if (isSaved) {
                  bloc.add(UserProfileEvent.unSavePost(postId));
                } else {
                  bloc.add(UserProfileEvent.savePost(postId));
                }
              },
              child: Icon(
                (isSaved) ? Icons.bookmark : Icons.bookmark_border,
                size: 30,
                color: (isSaved) ? ColorAssets.teal : Colors.white,
              ),
            ),
            Spacer(),
            InkWell(
              onTap: () {
                context.bloc<ShareVideoBloc>().add(
                      ShareVideoEvent.share(postId, title, imageUrl),
                    );
              },
              child: Icon(
                Icons.share,
                size: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 15,
            )
          ],
        );
      },
    );
  }
}

class _PostDescription extends StatelessWidget {
  final String authorName;
  final String description;

  const _PostDescription({this.authorName, this.description});

  @override
  Widget build(BuildContext context) {
    var isTextEmpty = authorName.isEmpty && description.isEmpty;
    if (isTextEmpty) return Container();
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 8.0, bottom: 8.0),
      child: RichText(
        text: TextSpan(
          style: TextStyle(color: Colors.white),
          children: <TextSpan>[
            TextSpan(
                text: authorName,
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: ' '),
            TextSpan(text: description)
          ],
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var youtubeVideoId = YoutubePlayer.convertUrlToId(post.videoUrl);
    if (youtubeVideoId == null) return Container();
    return Card(
      color: ColorAssets.black21,
      margin: EdgeInsets.only(left: 15, right: 15),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 12,
          ),
          _PostTitleWidget(
            title: post.title ?? '',
          ),
          SizedBox(
            height: 10,
          ),
          _PostMediaWidget(
            postId: post.id,
            youtubeVideoId: youtubeVideoId,
            startTime: post.startTimestamp,
            endTime: post.endTimestamp,
          ),
          // SizedBox(
          //   height: 5,
          // ),
          // _PostSocialStatsWidget(),
          SizedBox(
            height: 10,
          ),
          _PostSocialInteractionWidget(
            post.id,
            post.title,
            getYoutubeThumbnail(youtubeVideoId),
          ),
          SizedBox(
            height: 10,
          ),
          _PostDescription(
            authorName: post.authorName,
            description: post.description,
          ),
        ],
      ),
    );
  }
}

String getYoutubeThumbnail(String videoId) {
  return 'https://img.youtube.com/vi/$videoId/sddefault.jpg';
}
