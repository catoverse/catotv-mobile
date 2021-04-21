import 'package:auto_route/auto_route.dart';
import 'package:cato_feed/application/auth/auth.dart';
import 'package:cato_feed/application/user_profile/user_profile.dart';
import 'package:cato_feed/domain/posts/post.dart';
import 'package:cato_feed/domain/topic/topic.dart';
import 'package:cato_feed/injection.dart';
import 'package:cato_feed/presentation/routes/Router.gr.dart';
import 'package:cato_feed/presentation/screens/search/horizontal_video_tile.dart';
import 'package:cato_feed/presentation/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cato_feed/application/videos_by_category/videos_by_category_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class VideosByCategoryScreen extends StatelessWidget {
  final Topic topic;

  const VideosByCategoryScreen({Key key, this.topic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => getIt<VideosByCategoryBloc>(),
      child: VideosByCategoryPage(
        topic: topic,
      ),
    );
  }
}

class VideosByCategoryPage extends StatefulWidget {
  final Topic topic;

  const VideosByCategoryPage({Key key, this.topic}) : super(key: key);

  @override
  _VideosByCategoryPageState createState() => _VideosByCategoryPageState();
}

class _VideosByCategoryPageState extends State<VideosByCategoryPage> {
  final PagingController<int, Post> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    var userId = context.read<AuthBloc>().state.getUserId() ?? '';

    _pagingController.addPageRequestListener((pageKey) {
      context
          .read<VideosByCategoryBloc>()
          .add(VideosByCategoryEvent.load(widget.topic, userId));
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
        BlocListener<VideosByCategoryBloc, VideosByCategoryState>(
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
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 32),
            child: PagedListView.separated(
              pagingController: _pagingController,
              builderDelegate: PagedChildBuilderDelegate<Post>(
                itemBuilder: (context, post, index) => GestureDetector(
                  child: HorizontalVideoTile(post: post, index: index),
                  onTap: () {
                    context.navigator.push(CatoRoutes.singlePostScreen,
                        arguments: SinglePostScreenArguments(postId: post.id));
                  },
                ),
              ),
              separatorBuilder: (ctx, index) => SizedBox(
                height: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
