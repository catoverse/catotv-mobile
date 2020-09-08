import 'package:auto_route/auto_route_annotations.dart';
import 'package:cato_feed/application/single_post/single_post_bloc.dart';
import 'package:cato_feed/injection.dart';
import 'package:cato_feed/presentation/routes/Router.gr.dart';
import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:cato_feed/presentation/widgets/post_widgets.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cato_feed/application/user_profile/user_profile.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cato_feed/application/video_player/video_player_bloc.dart';

class SinglePostScreen extends StatelessWidget {
  final String postId;

  const SinglePostScreen({@PathParam() this.postId});

  @override
  Widget build(BuildContext context) {
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

class SinglePostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SinglePostBloc, SinglePostState>(
      listener: (_, state) {
        if (state.failure != null) {
          Flushbar(
            message: state.failure.when(
              error: (e) => e.toString(),
              exception: (exc) => 'Error while loading post.',
              message: (msg) => msg,
            ),
            duration: Duration(seconds: 3),
          )..show(context);
        }
      },
      builder: (_, state) {
        var isPostLoading = state.post == null;
        return PlatformScaffold(
          backgroundColor: ColorAssets.black32,
          appBar: PlatformAppBar(
            leading: InkWell(
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onTap: () {
                context.navigator.replace(CatoRoutes.homeScreen);
              },
            ),
            backgroundColor: ColorAssets.black21,
            title: Text(
              (isPostLoading) ? 'Loading...' : state.post.title,
              style: TextStyle(color: Colors.white, fontSize: 15),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          body: (isPostLoading)
              ? Center(child: CircularProgressIndicator())
              : Column(
                  children: [
                    SizedBox(height: 20),
                    PostWidget(post: state.post)
                  ],
                ),
        );
      },
    );
  }
}
