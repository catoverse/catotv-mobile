import 'package:auto_route/auto_route.dart';
import 'package:cato_feed/application/home/saved_posts/saved_posts_bloc.dart';
import 'package:cato_feed/injection.dart';
import 'package:cato_feed/presentation/routes/Router.gr.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:cato_feed/presentation/utils/assets/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'horizontal_video_tile.dart';

class LikedVideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SavedPostsBloc>()..add(SavedPostsEvent.refresh()),
      child: BlocBuilder<SavedPostsBloc, SavedPostsState>(
        builder: (ctx, state) {
          if(state.likedPosts.length == 0) {
            return Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(ImageAssets.Release.icon_playground_abstract),
                  Text(
                    'Your Like Videos will show here.',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: FontAssets.Poppins,
                      fontSize: 14,
                      color: Color(0xA80C3C57),
                    ),
                  ),
                  SizedBox(height: 96,)
                ],
              ),
            );
          }
          return ListView.separated(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.navigator.push(CatoRoutes.singlePostScreen, arguments: SinglePostScreenArguments(postId: state.likedPosts[index].id));
                },
                child: HorizontalVideoTile(
                    post: state.likedPosts[index], index: index),
              );
            },
            itemCount: state.likedPosts.length,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 16,
              );
            },
          );
        },
      ),
    );
  }
}
