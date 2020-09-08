import 'dart:ui';

import 'package:cato_feed/application/home/feed/feed_bloc.dart';
import 'package:cato_feed/application/post/post.dart';
import 'package:cato_feed/application/topic/topic.dart';
import 'package:cato_feed/application/video_player/video_player_bloc.dart';
import 'package:cato_feed/domain/posts/post.dart';
import 'package:cato_feed/injection.dart';
import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:cato_feed/presentation/widgets/horizontal_tags.dart';
import 'package:cato_feed/presentation/widgets/post_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MainFeedScreen extends StatelessWidget {
  Key _key;

  MainFeedScreen({Key key}) : super(key: key) {
    _key = key;
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<FeedBloc>()),
        BlocProvider(create: (context) => getIt<VideoPlayerBloc>())
      ],
      child: MainFeedPage(
        key: _key,
      ),
    );
  }
}

class MainFeedPage extends StatefulWidget {
  MainFeedPage({Key key}) : super(key: key);

  @override
  _MainFeedPageState createState() => _MainFeedPageState();
}

class _MainFeedPageState extends State<MainFeedPage> {
  PostDataSource _dataSource;

  @override
  void initState() {
    super.initState();
    _dataSource = PostDataSource(0, 15, context.bloc<FeedBloc>());
  }

  @override
  void dispose() {
    super.dispose();
    _dataSource.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<PostBloc, PostState>(
          listener: (_, state) {
            // ignore: close_sinks
            var feedBloc = context.bloc<FeedBloc>();
            if (feedBloc.state.selectedTopicId == null) {
              // Load All
              if (state.allFeed.posts != null) {
                _dataSource.notifyChange(
                    state.allFeed.posts, null, state.allFeed.skip);
              }
              if (state.allFeed.posts != null || state.failure != null) {
                feedBloc.add(FeedEvent.loadFinished());
              }
            } else {
              // Load from topic
              if (state.feedByTopic.posts != null) {
                _dataSource.notifyChange(
                    state.feedByTopic.posts, null, state.feedByTopic.skip);
              }
              if (state.feedByTopic.posts != null || state.failure != null) {
                feedBloc.add(FeedEvent.loadFinished());
              }
            }
          },
        ),
        BlocListener<FeedBloc, FeedState>(
          listener: (_, state) {
            if (state.isLoading == false) {
              var event = (state.selectedTopicId == null)
                  ? PostEvent.loadFeed(state.nextPageKey, state.pageSize)
                  : PostEvent.loadFeedByTopic(
                      state.nextPageKey, state.pageSize, state.selectedTopicId);
              context.bloc<PostBloc>().add(event);
            }
          },
        ),
      ],
      child: PlatformScaffold(
        backgroundColor: ColorAssets.black32,
        appBar: PlatformAppBar(
          backgroundColor: ColorAssets.black21,
          material: (_, __) {
            return MaterialAppBarData(
              flexibleSpace: BlocBuilder<TopicBloc, TopicState>(
                builder: (_, state) {
                  var topics = state.allTopics
                      .where((element) =>
                          state.selectedTopicIds.contains(element.id))
                      .toList();
                  return Container(
                    height: 32,
                    margin: EdgeInsets.only(top: 35, bottom: 10),
                    child: BlocBuilder<FeedBloc, FeedState>(
                      builder: (_, state) {
                        return HorizontalTags(
                            topics,
                            state.selectedTopicId,
                            onTap: (selectedTopicId) {
                              if(state.selectedTopicId != selectedTopicId) {
                                context.bloc<FeedBloc>().add(FeedEvent.selectTopic(topicId: selectedTopicId));
                              }
                            }
                        );
                      },
                    ),
                  );
                },
              ),
            );
          },
        ),
        body: PagedListView.separated(
          addRepaintBoundaries: false,
          padding: EdgeInsets.only(top: 20),
          separatorBuilder: (_, __) {
            return SizedBox(
              height: 20,
            );
          },
          key: PageStorageKey('feed'),
          dataSource: _dataSource,
          builderDelegate: PagedChildBuilderDelegate<Post>(
            itemBuilder: (context, post, index) {
              return PostWidget(key: ValueKey(post.id), post: post);
            },
            newPageProgressIndicatorBuilder: (context) {
              return Container(
                margin: EdgeInsets.only(top: 8, bottom: 8),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
            firstPageProgressIndicatorBuilder: (context) {
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}

class PostDataSource extends PagedDataSource<int, Post> {
  final int pageSize;
  final FeedBloc bloc;

  PostDataSource(int firstPageKey, this.pageSize, this.bloc)
      : super(firstPageKey);

  @override
  void fetchItems(int pageKey) {
    bloc.add(FeedEvent.load(nextPageKey, pageSize));
  }
}

/**

    Column(
    key: PageStorageKey('feed'),
    children: [
    Card(
    margin: EdgeInsets.only(bottom: 1),
    elevation: 1,
    child: Container(
    height: 32,
    margin: EdgeInsets.only(top: 45, bottom: 10),
    child: HorizontalTags(),
    ),
    ),
    Expanded(
    child: MediaQuery.removePadding(
    context: context,
    child: ListView.separated(
    separatorBuilder: (_, index) {
    return SizedBox(
    height: 30,
    );
    },
    itemCount: 10,
    itemBuilder: (_, index) {
    return PostWidget();
    },
    ),
    removeTop: true,
    ),
    ),
    ],
    )

 **/
