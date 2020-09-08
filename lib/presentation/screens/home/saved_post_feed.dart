import 'package:cato_feed/application/home/saved_posts/saved_posts_bloc.dart';
import 'package:cato_feed/application/user_profile/user_profile.dart';
import 'package:cato_feed/injection.dart';
import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:cato_feed/presentation/widgets/horizontal_tags.dart';
import 'package:cato_feed/presentation/widgets/post_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:cato_feed/domain/posts/post.dart';

class SavedPostScreen extends StatelessWidget {
  SavedPostScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SavedPostsBloc>()..add(SavedPostsEvent.refresh()),
      child: SavedPostPage(),
    );
  }
}

class SavedPostPage extends StatefulWidget {
  SavedPostPage({Key key}) : super(key: key);

  @override
  _SavedPostPageState createState() => _SavedPostPageState();
}

class _SavedPostPageState extends State<SavedPostPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SavedPostsBloc, SavedPostsState>(
          listener: (_, state) {},
        ),
        BlocListener<UserProfileBloc, UserProfileState>(
          listener: (context, state) {
            context.bloc<SavedPostsBloc>().add(SavedPostsEvent.refresh());
          },
        ),
      ],
      child: PlatformScaffold(
        backgroundColor: ColorAssets.black32,
        appBar: PlatformAppBar(
          backgroundColor: ColorAssets.black21,
          material: (_, __) {
            return MaterialAppBarData(
              flexibleSpace: Container(
                height: 32,
                margin: EdgeInsets.only(top: 35, bottom: 10),
                child: BlocBuilder<SavedPostsBloc, SavedPostsState>(
                  builder: (context, state) {
                    var list = List<SelectedPage>();
                    if (state.savedPosts.isNotEmpty) list.add(SelectedPage.Saved);
                    if (state.likedPosts.isNotEmpty) list.add(SelectedPage.Liked);
                    return ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        var isSelected = state.selectedPage == list[index];
                        var name = (list[index] == SelectedPage.Saved) ? 'Saved' : 'Liked';
                        var color = (list[index] == SelectedPage.Saved)
                            ? ColorAssets.teal
                            : Colors.red.shade600;
                        return GestureDetector(
                          child: CategoryTag(
                            tagColor: color,
                            tagName: name,
                            isChecked: isSelected,
                          ),
                          onTap: () {
                            if (state.selectedPage != list[index]) {
                              context
                                  .bloc<SavedPostsBloc>()
                                  .add(SavedPostsEvent.updateSelectedPage(list[index]));
                            }
                          },
                        );
                      },
                      separatorBuilder: (_, __) => SizedBox(
                        width: 10,
                      ),
                      itemCount: list.length,
                    );
                  },
                ),
              ),
            );
          },
        ),
        body: BlocBuilder<SavedPostsBloc, SavedPostsState>(
          builder: (_, state) {
            List<Post> posts = List();
            if (state.selectedPage == SelectedPage.Saved) {
              posts = state.savedPosts;
            } else if (state.selectedPage == SelectedPage.Liked) {
              posts = state.likedPosts;
            }

            return ListView.separated(
              padding: EdgeInsets.only(top: 20),
              itemBuilder: (_, index) => PostWidget(
                post: posts[index],
                key: ValueKey(posts[index].id),
              ),
              separatorBuilder: (_, __) => SizedBox(
                height: 20,
              ),
              itemCount: posts.length,
            );
          },
        ),
      ),
    );
    // return BlocConsumer<UserProfileBloc, UserProfileState>(
    //   listener: (context, state) {
    //     context.bloc<SavedPostsBloc>().add(SavedPostsEvent.refresh());
    //   },
    //   builder: (context, state) {
    //     var list = List<SelectedPage>();
    //     if (state.savedVideosId.isNotEmpty) {
    //       list.add(SelectedPage.Saved);
    //     }
    //     if (state.likedVideosId.isNotEmpty) list.add(SelectedPage.Liked);
    //     var topicWidget = _buildLocalTopics(
    //         list, context.bloc<SavedPostsBloc>().state.selectedPage, context);
    //
    //     return PlatformScaffold(
    //       backgroundColor: ColorAssets.black32,
    //       appBar: PlatformAppBar(
    //         backgroundColor: ColorAssets.black21,
    //         material: (_, __) {
    //           return MaterialAppBarData(
    //             flexibleSpace: Container(
    //                 height: 32,
    //                 margin: EdgeInsets.only(top: 35, bottom: 10),
    //                 child: topicWidget),
    //           );
    //         },
    //       ),
    //       body: BlocBuilder<SavedPostsBloc, SavedPostsState>(
    //         builder: (_, state) {
    //           List<Post> posts = List();
    //           if (state.selectedPage == SelectedPage.Saved) {
    //             posts = state.savedPosts;
    //           } else if (state.selectedPage == SelectedPage.Liked) {
    //             posts = state.likedPosts;
    //           }
    //
    //           return ListView.separated(
    //             padding: EdgeInsets.only(top: 20),
    //             itemBuilder: (_, index) => PostWidget(
    //               post: posts[index],
    //               key: ValueKey(posts[index].id),
    //             ),
    //             separatorBuilder: (_, __) => SizedBox(
    //               height: 20,
    //             ),
    //             itemCount: posts.length,
    //           );
    //         },
    //       ),
    //     );
    //   },
    // );
  }

  Widget _buildLocalTopics(List<SelectedPage> list, SelectedPage selectedPage,
      BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 16),
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, index) {
        var isSelected = selectedPage == list[index];
        var name = (list[index] == SelectedPage.Saved) ? 'Saved' : 'Liked';
        var color = (list[index] == SelectedPage.Saved)
            ? ColorAssets.teal
            : Colors.red.shade600;
        return GestureDetector(
          child: CategoryTag(
            tagColor: color,
            tagName: name,
            isChecked: isSelected,
          ),
          onTap: () {
            if (selectedPage != list[index]) {
              context
                  .bloc<SavedPostsBloc>()
                  .add(SavedPostsEvent.updateSelectedPage(list[index]));
            }
          },
        );
      },
      separatorBuilder: (_, __) => SizedBox(
        width: 10,
      ),
      itemCount: list.length,
    );
  }
}
