import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cato_feed/application/auth/auth.dart';
import 'package:cato_feed/application/topic/topic.dart';
import 'package:cato_feed/application/topic_selection/topicselection_bloc.dart';
import 'package:cato_feed/domain/auth/user.dart';
import 'package:cato_feed/domain/core/i_logger.dart';
import 'package:cato_feed/domain/topic/topic.dart';
import 'package:cato_feed/infrastructure/core/logger/log_events.dart';
import 'package:cato_feed/injection.dart';
import 'package:cato_feed/main.dart';
import 'package:cato_feed/presentation/routes/Router.gr.dart';
import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:cato_feed/presentation/utils/wave_path_clipper.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:kt_dart/collection.dart';

class TopicSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: BlocProvider(
        create: (context) => getIt<TopicSelectionBloc>(),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 32, left: 32, right: 32),
              child: Row(
                children: [
                  Spacer(flex: 1,),
                  AutoSizeText(
                    'What do you want to learn?',
                    maxLines: 1,
                    maxFontSize: 18,
                    style: TextStyle(
                      color: ColorAssets.blueHaiti,
                      fontSize: 18,
                      fontFamily: FontAssets.Roboto,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(flex: 1,),
                  Card(
                    elevation: 0.0,
                    margin: EdgeInsets.only(right: 0, top: 4),
                    child: (context.navigator.canPop())
                        ? GestureDetector(
                      child: InkWell(
                        child: Icon(
                          Icons.close,
                          color: ColorAssets.blueHaiti,
                        ),
                      ),
                      onTap: () {
                        getIt<ILogger>()
                            .logEvent(LogEvents.EVENT_TOPIC_PICK_CANCEL);
                        context.navigator.pop();
                      },
                    )
                        : null,
                  ),
                ],
              ),
            ),
            Expanded(child: TopicSelectionPage()),
          ],
        ),
      ),
    );
  }
}

class TopicSelectionPage extends StatefulWidget {
  @override
  _TopicSelectionPageState createState() => _TopicSelectionPageState();
}

class _TopicSelectionPageState extends State<TopicSelectionPage> {
  @override
  void initState() {
    super.initState();
    var state = context.bloc<TopicBloc>().state;
    if (state.selectedTopicIds?.isNotEmpty == true) {
      context.bloc<TopicSelectionBloc>().add(
          TopicSelectionEvent.updateSelectedTopics(
              KtList.from(state.selectedTopicIds)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<TopicBloc, TopicState>(
          listener: (context, state) {
            if (state.selectedTopicIds != null ||
                state.selectedTopicIds.isNotEmpty) {
              context.bloc<TopicSelectionBloc>().add(
                  TopicSelectionEvent.updateSelectedTopics(
                      KtList.from(state.selectedTopicIds)));
            }
            if (state.failure != null) {
              var msg = state.failure.map(
                error: (e) => e.toString(),
                exception: (e) => 'Unknown error occurred.',
                message: (m) => m,
              );
              Flushbar(
                message: msg,
                duration: Duration(seconds: 3),
              )..show(context);
            }
          },
        ),
        BlocListener<TopicSelectionBloc, TopicSelectionState>(
          listener: (context, state) async {
            if (state.topicSavedSuccess == true) {
              if (context.navigator.canPop()) {
                context.navigator.pop();
              } else {
                await openDynamicLinkOr(context,
                    otherScreen: CatoRoutes.homeScreen);
              }
              User user = context
                  .bloc<AuthBloc>()
                  .state
                  .maybeWhen(orElse: () => null, authenticated: (user) => user);
              if (user != null) {
                context
                    .bloc<TopicBloc>()
                    .add(TopicEvent.refreshSelectedTopics(user));
              }
            } else if (state.failure != null) {
              var msg = state.failure.map(
                error: (e) => e.toString(),
                exception: (e) => 'Unknown error occurred.',
                message: (m) => m,
              );
              Flushbar(
                message: msg,
                duration: Duration(seconds: 3),
              )..show(context);
            }
          },
        ),
      ],
      child: BlocBuilder<TopicSelectionBloc, TopicSelectionState>(
        cubit: context.bloc<TopicSelectionBloc>(),
        builder: (_, state) {
          // ignore: close_sinks
          var topicBloc = context.bloc<TopicBloc>();
          var allTopics = topicBloc.state.allTopics;
          return Container(
            margin: EdgeInsets.only(top: 20),
            child: Stack(
              children: [
                (allTopics.length > 0)
                    ? StaggeredGridView.builder(
                        itemCount: allTopics.length + 1,
                        // 1 for getting spacing
                        scrollDirection: Axis.vertical,
                        gridDelegate:
                            SliverStaggeredGridDelegateWithFixedCrossAxisCount(
                                staggeredTileBuilder: (index) {
                                  if (index >= allTopics.length)
                                    return StaggeredTile.fit(2);
                                  return StaggeredTile.fit(1);
                                },
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 12,
                                staggeredTileCount: allTopics.length + 1),
                        padding: EdgeInsets.only(left: 32, right: 32),
                        itemBuilder: (context, index) {
                          if (index >= allTopics.length)
                            return SizedBox(
                              height: 50,
                            );
                          return GestureDetector(
                            onTap: () {
                              var item = allTopics[index];
                              // ignore: close_sinks
                              var bloc = context.bloc<TopicSelectionBloc>();
                              if (state.selectedTopicIds.contains(item.id)) {
                                bloc.add(
                                    TopicSelectionEvent.unSelectTopic(item.id));
                              } else {
                                bloc.add(
                                    TopicSelectionEvent.selectTopic(item.id));
                              }
                            },
                            child: _buildCard(allTopics[index],
                                state.isSelected(allTopics[index].id)),
                          );
                        },
                      )
                    : Center(
                        child: CircularProgressIndicator(),
                      ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    child: Card(
                      margin: EdgeInsets.only(top: 60, bottom: 8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(26))),
                      elevation: 0.0,
                      color: ColorAssets.teal,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 100),
                        child: Text(
                          'Done',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                    onTap: () {
                      if (state.selectedTopicIds == null ||
                          state.selectedTopicIds.isEmpty()) {
                        Flushbar(
                          message:
                              'Please select at least one topic to continue',
                          duration: Duration(seconds: 2),
                        )..show(context);
                      } else {
                        getIt<ILogger>().logEvent(
                            LogEvents.EVENT_TOPIC_PICK_DONE,
                            params: LogEvents.getTopicPickDoneVariables(
                                state.selectedTopicIds.asList()));
                        // ignore: close_sinks
                        var bloc = context.bloc<AuthBloc>();
                        bloc.state.maybeWhen(
                          authenticated: (user) => context
                              .bloc<TopicSelectionBloc>()
                              .add(TopicSelectionEvent.saveTopics(user)),
                          orElse: () {},
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _getImageWidget(Topic topic) {
    return Padding(
      padding: EdgeInsets.only(left: 6, right: 6, top: 6),
      child: Image.asset(topic.getImage()),
    );
  }

  Widget _getCheckboxWidget(bool isChecked) {
    return Container(
      width: 20,
      height: 20,
      margin: EdgeInsets.only(right: 10, top: 10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: (isChecked) ? ColorAssets.teal : Color(0x40ffffff),
        border: Border.all(
          color: (isChecked) ? ColorAssets.teal : Colors.white,
          width: 1,
        ),
      ),
      child: (isChecked)
          ? Icon(
              Icons.check,
              color: Colors.white,
              size: 15,
            )
          : null,
    );
  }

  Widget _buildCard(Topic topic, bool isChecked) {
    return Card(
      key: ValueKey(topic.id),
      color: topic.getColor(),
      elevation: 0.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0))),
      child: Column(
        children: [
          Align(
            child: _getCheckboxWidget(isChecked),
            alignment: Alignment.topRight,
          ),
          _getImageWidget(topic),
          SizedBox(
            height: 10,
          ),
          Text(
            topic.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: FontAssets.Roboto,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 8,
          )
        ],
      ),
    );
  }
}
