import 'package:cato_feed/application/share_video/share_video_bloc.dart';
import 'package:cato_feed/application/user_profile/user_profile.dart';
import 'package:cato_feed/application/video_player/video_player_bloc.dart';
import 'package:cato_feed/domain/posts/post.dart';
import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 16),
            maxLines: 1,
            textWidthBasis: TextWidthBasis.parent,
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
  PlayerState _playerState;
  bool _isPlayerReady = false;

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
    _playerState = PlayerState.unknown;
  }

  void _youtubePlayerListener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
      });
    }
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.removeListener(_youtubePlayerListener);
    _controller.dispose();
    _controller = null;
    context
        .bloc<VideoPlayerBloc>()
        .add(VideoPlayerEvent.setCurrentPlayablePlayingId(null));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              // ProgressBar(
              //   controller: this._controller,
              //   isExpanded: true,
              // )
            ],
            onEnded: (e) {
              context
                  .bloc<VideoPlayerBloc>()
                  .add(VideoPlayerEvent.setCurrentPlayablePlayingId(null));
            },
            showVideoProgressIndicator: true,
          );
        } else {
          return InkWell(
            onTap: () {
              context
                  .bloc<VideoPlayerBloc>()
                  .add(VideoPlayerEvent.setCurrentPlayablePlayingId(postId));
            },
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9.0,
                  child: Image.network(
                    YoutubePlayer.getThumbnail(videoId: youtubeVideoId),
                    fit: BoxFit.cover,
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
            YoutubePlayer.getThumbnail(videoId: youtubeVideoId),
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
