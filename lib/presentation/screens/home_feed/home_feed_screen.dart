import 'package:auto_size_text/auto_size_text.dart';
import 'package:cato_feed/application/auth/auth.dart';
import 'package:cato_feed/application/post/post.dart';
import 'package:cato_feed/application/share_video/share_video_bloc.dart';
import 'package:cato_feed/application/topic/topic.dart';
import 'package:cato_feed/application/user_profile/user_profile.dart';
import 'package:cato_feed/application/video_player/video_player_bloc.dart';
import 'package:cato_feed/domain/posts/post.dart';
import 'package:cato_feed/injection.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:cato_feed/presentation/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:youtube_player_webview/core/youtube_player.dart';
import 'package:youtube_player_webview/utils/youtube_player_controller.dart';
import 'package:youtube_player_webview/utils/youtube_player_flags.dart';
import 'package:youtube_player_webview/widgets/widgets.dart';

class HomeFeedScreen extends StatelessWidget {
  final Container player;
  final YoutubePlayerController controller;

  HomeFeedScreen({Key key, this.player, this.controller}) : super(key: key);

  HomeFeedPage _homeFeedPage;

  @override
  Widget build(BuildContext context) {
    makeStatusBarWhite();
    if (_homeFeedPage == null) {
      _homeFeedPage = HomeFeedPage(
        player: player,
        controller: controller,
      );
    }
    return _homeFeedPage;
  }

  void updatePlayer({Container player}) {}
}

class HomeFeedPage extends StatefulWidget {
  final Container player;
  final YoutubePlayerController controller;

  const HomeFeedPage({Key key, this.player, this.controller}) : super(key: key);

  @override
  _HomeFeedPageState createState() => _HomeFeedPageState();
}

class _HomeFeedPageState extends State<HomeFeedPage> {
  final PagingController<int, Post> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context.read<PostBloc>().add(PostEvent.loadRecommendedVideos(
          context.read<AuthBloc>().state.getUserId() ?? ''));
    });
    super.initState();
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<PostBloc, PostState>(
          listener: (ctx, state) {
            if (state.failure != null) {
              _pagingController.error = state.failure.toString();
            }

            if (state.allPosts.isNotEmpty &&
                state.lastLazilyLoadedPosts.isEmpty) {
              _pagingController.appendLastPage(state.lastLazilyLoadedPosts);
            }

            if (state.lastLazilyLoadedPosts.isNotEmpty) {
              _pagingController.appendPage(
                  state.lastLazilyLoadedPosts,
                  _pagingController.nextPageKey ??
                      0 + state.lastLazilyLoadedPosts.length);
            }
          },
        ),
      ],
      child: PlatformScaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: PagedListView.separated(
              pagingController: _pagingController,
              builderDelegate: PagedChildBuilderDelegate<Post>(
                itemBuilder: (context, post, index) => FeedPost(
                    post: post,
                    youtubePlayer: widget.player,
                    controller: widget.controller,
                    index: index),
              ),
              separatorBuilder: (ctx, index) => Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Divider(
                  color: Color(0xFFC4C4C4),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FeedPost extends StatelessWidget {
  final Post post;
  final int index;
  final Widget youtubePlayer;
  final YoutubePlayerController controller;

  const FeedPost({
    Key key,
    @required this.post,
    @required this.youtubePlayer,
    @required this.controller,
    @required this.index,
  }) : super(key: key);

  Widget _getThumbnailWidget(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        context.read<VideoPlayerBloc>().add(
            VideoPlayerEvent.setCurrentPlayablePlayingId('${post.id};$index'));

        if (controller != null) {
          controller.load(YoutubePlayer.convertUrlToId(post.videoUrl));
        }
      },
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 16.0 / 9.0,
            child: Image.network(
              getYoutubeThumbnail(YoutubePlayer.convertUrlToId(post.videoUrl)),
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
            child: Container(
              color: Color(0x4D000000),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMediaWidget(BuildContext context, VideoPlayerState state,
      String playingPostId, int playingIndex, String postId) {
    if (state.currentPlayingPostId != null &&
        playingPostId == postId &&
        playingIndex == index) {
      return youtubePlayer;
    } else {
      return _getThumbnailWidget(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoPlayerBloc, VideoPlayerState>(
      buildWhen: (previous, current) {
        if (previous.currentPlayingPostId == current.currentPlayingPostId)
          return false;
        if (previous.currentPlayingPostId == '${post.id};$index') return true;
        if (current.currentPlayingPostId == '${post.id};$index') return true;
        return false;
      },
      builder: (ctx, state) {
        var split = (state.currentPlayingPostId ?? ';-1').split(';');
        var playingPostId = split[0];
        var playingIndex = int.parse(split[1]);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildMediaWidget(
                context, state, playingPostId, playingIndex, post.id),

            SizedBox(
              height: 4,
            ),
            // Container(
            //   height: 4,
            //   width: 50,
            //   decoration: BoxDecoration(
            //       color: Color(0xFFF05773),
            //       borderRadius: BorderRadius.all(Radius.circular(2.0))),
            // ),
            SizedBox(
              height: 8,
            ),
            AutoSizeText(
              post.title,
              maxFontSize: 16.0,
              minFontSize: 12.0,
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: FontAssets.Poppins,
                fontSize: 16,
                color: Color(0xFF082D42),
              ),
            ),
            if (post.description.isNotEmpty)
              AutoSizeText(
                post.description,
                maxFontSize: 12.0,
                minFontSize: 10.0,
                maxLines: 2,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: FontAssets.Poppins,
                  fontSize: 16,
                  color: Color(0x80082D42),
                ),
              ),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                if (post.authorName.isNotEmpty)
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0x47C4C4C4),
                        borderRadius: BorderRadius.circular(4.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 8.0),
                      child: Text(
                        post.authorName,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: FontAssets.Poppins,
                          fontSize: 12,
                          color: Color(0xFF8F8F8F),
                        ),
                      ),
                    ),
                  ),
                if (post.authorName.isNotEmpty)
                  SizedBox(
                    width: 16.0,
                  ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0x47C4C4C4),
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 8.0),
                    child: Text(
                      context.read<TopicBloc>().state.getName(post.topicId),
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: FontAssets.Poppins,
                        fontSize: 12,
                        color: Color(0xFF8F8F8F),
                      ),
                    ),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                BlocBuilder<UserProfileBloc, UserProfileState>(
                    builder: (ctx, state) {
                      print(state.likedVideosId);
                  var isLiked = state.isLiked(post.id);
                  return GestureDetector(
                    onTap: () {
                      // ignore: close_sinks
                      var bloc = ctx.read<UserProfileBloc>();
                      if (isLiked) {
                        bloc.add(UserProfileEvent.unlikePost(post.id));
                      } else {
                        bloc.add(UserProfileEvent.likePost(post.id));
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        isLiked ? Icons.favorite : Icons.favorite_outline,
                        size: 24.0,
                        color: isLiked ? Color(0xFFF05773) : Color(0xFFC4C4C4),
                      ),
                    ),
                  );
                }),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    // ignore: close_sinks
                    var bloc = context.read<ShareVideoBloc>();
                    if (bloc.state.isLoading == false) {
                      bloc.add(
                        ShareVideoEvent.share(
                            post.id,
                            post.title,
                            getYoutubeThumbnail(
                                YoutubePlayer.convertUrlToId(post.videoUrl) ??
                                    '')),
                      );
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.share_outlined,
                      size: 24.0,
                      color: Color(0xFFC4C4C4),
                    ),
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
