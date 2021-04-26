import 'package:cato_feed/application/auth/auth.dart';
import 'package:cato_feed/application/onboard_selection/onboard_selection_bloc.dart';
import 'package:cato_feed/application/post/post_bloc.dart';
import 'package:cato_feed/application/topic/topic.dart';
import 'package:cato_feed/application/user_profile/user_profile.dart';
import 'package:cato_feed/domain/auth/user.dart';
import 'package:cato_feed/domain/topic/topic.dart';
import 'package:cato_feed/injection.dart';
import 'package:cato_feed/presentation/routes/Router.gr.dart';
import 'package:cato_feed/presentation/screens/onboard_selection/onboard_category_card.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../../main.dart';

class OnboardSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: BlocProvider<OnboardSelectionBloc>(
        create: (_) => getIt<OnboardSelectionBloc>(),
        child: OnboardSelectionPage(),
      ),
    );
  }
}

class OnboardSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var topics = context.read<TopicBloc>().state.allTopics;
    // var onboardItems = OnboardSelectionCategory.fromTopics(topics);
    var cardWidth = (MediaQuery.of(context).size.width - 40) / 2.0;
    var cardHeight = 96.0;
    return MultiBlocListener(
      listeners: [
        BlocListener<UserProfileBloc, UserProfileState>(
          listener: (context, state) async {
            if (state.failure != null) {
              context
                  .read<OnboardSelectionBloc>()
                  .add(OnboardSelectionEvent.failure(state.failure));
            }

            if (state.profile != null) {
              // Request for posts
              context.read<PostBloc>().add(PostEvent.loadRecommendedVideos(
                  context.read<AuthBloc>().state.getUserId() ?? ''));

              context.read<UserProfileBloc>().add(UserProfileEvent.refresh());

              // Navigate to home screen
              await openDynamicLinkOr(context,
                  otherScreen: CatoRoutes.homeScreen);
            }
          },
        ),
        BlocListener<OnboardSelectionBloc, OnboardSelectionState>(
          listener: (ctx, state) async {
            if (state.failure != null) {
              Flushbar(
                  message: state.failure.toString(),
                  duration: Duration(seconds: 2))
                ..show(context);
            }
          },
        ),
      ],
      child: BlocBuilder<OnboardSelectionBloc, OnboardSelectionState>(
        builder: (_, state) {
          return SafeArea(
            child: Scaffold(
              body: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: 'What you want to learn at Cato?\n',
                      style: TextStyle(
                          fontFamily: FontAssets.Poppins,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 24.0),
                    ),
                    TextSpan(
                      text: 'Select minimum of 3\n',
                      style: TextStyle(
                        fontFamily: FontAssets.Poppins,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFC4C4C4),
                        fontSize: 14.0,
                      ),
                    ),
                  ])),
                  // topics.length == 0
                  //     ? Container(
                  //         padding: EdgeInsets.all(8.0),
                  //         decoration: BoxDecoration(
                  //             color: Color(0xFF51DFD7).withOpacity(.1),
                  //             border: Border.all(
                  //                 color: Color(0xFF51DFD7),
                  //                 style: BorderStyle.solid,
                  //                 width: 1),
                  //             borderRadius: BorderRadius.circular(8.0)),
                  //         child: Text("No Topics at this moment"),
                  //       ) :
                  GridView.count(
                    crossAxisSpacing: 8.0,
                    crossAxisCount: 2,
                    mainAxisSpacing: 20.0,
                    childAspectRatio: (cardWidth * 1.0) / cardHeight,
                    shrinkWrap: true,
                    children: List.generate(topics.length, (index) {
                      var borderColor = Color(0xFF51DFD7);

                      return Align(
                        child: GestureDetector(
                          onTap: () {
                            // ignore: close_sinks
                            var bloc = context.read<OnboardSelectionBloc>();
                            if (state.isSelected(topics[index])) {
                              bloc.add(OnboardSelectionEvent.unSelectTopic(
                                  topics[index]));
                            } else {
                              bloc.add(OnboardSelectionEvent.selectTopic(
                                  topics[index]));
                            }
                          },
                          child: OnboardCategoryCard(
                            cardData: topics[index],
                            cardWidth: cardWidth,
                            cardHeight: cardHeight,
                            cardBorderColor: borderColor,
                            isSelected: state.isSelected(topics[index]),
                          ),
                        ),
                        alignment: Alignment.topCenter,
                      );
                    }),
                  ),
                ],
              ),
              bottomNavigationBar: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                child: PlatformButton(
                  disabledColor: Colors.white,
                  color: Color(0xFF51DFD7),
                  onPressed: (state.selectedTopic.size < 3 ||
                          state.saveButtonClicked)
                      ? null
                      : () {
                          User user = context.read<AuthBloc>().state.maybeMap(
                                orElse: () => null,
                                authenticated: (u) => u.user,
                                sessionLoggedIn: (u) => u.user,
                              );
                          if (user == null) return;
                          context.read<UserProfileBloc>().add(
                              UserProfileEvent.updateTopicSelection(
                                  user.name, user.id, state.getTopicIds()));
                          context
                              .read<OnboardSelectionBloc>()
                              .add(OnboardSelectionEvent.saveButtonClicked());
                        },
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      color: state.selectedTopic.size < 3 ||
                              state.saveButtonClicked
                          ? Color(0xFF51DFD7)
                          : Colors.white,
                      fontFamily: FontAssets.Poppins,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  material: (_, __) => MaterialRaisedButtonData(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: Color(0xFF51DFD7)),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 10.0)),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// class OnboardSelectionCategory {
//   final String id;
//   final String title;
//   final String body;
//   final String imagePath;
//
//   OnboardSelectionCategory(this.id, this.title, this.body, this.imagePath);
//
//   static fromTopics(List<Topic> topics) {
//     return topics
//         .map((e) => OnboardSelectionCategory(e.id, e.name, '', e.getImage()))
//         .toList();
//   }
//
// // static List<OnboardSelectionCategory> getAll() {
// //   return [
// //     OnboardSelectionCategory(
// //       'Career',
// //       'Storytelling, Creating Wealth, Empathy & More.',
// //       ImageAssets.Release.icon_career,
// //     ),
// //     OnboardSelectionCategory(
// //       'Self Dev',
// //       'Productivity, Digital Hygiene & More.',
// //       ImageAssets.Release.icon_self_dev,
// //     ),
// //     OnboardSelectionCategory(
// //       'Mind',
// //       'Mental Health, Critical Thinking & More.',
// //       ImageAssets.Release.icon_mind,
// //     ),
// //     OnboardSelectionCategory(
// //       'Fun',
// //       'Magic, Life Hacks, DIY & More.',
// //       ImageAssets.Release.icon_fun,
// //     ),
// //     OnboardSelectionCategory(
// //       'Health',
// //       'Biohacking, Nutrition, Fitness & More.',
// //       ImageAssets.Release.icon_health,
// //     ),
// //     OnboardSelectionCategory(
// //       'Relationships',
// //       'Conflicts, Family, Friends, Love & More.',
// //       ImageAssets.Release.icon_relationships,
// //     ),
// //     OnboardSelectionCategory(
// //       'Startups',
// //       'Ideas, Fund Raising, PMF & More.',
// //       ImageAssets.Release.icon_startups,
// //     ),
// //     OnboardSelectionCategory(
// //       'Fundamentals',
// //       'First Principles of Knowledge & More.',
// //       ImageAssets.Release.icon_fundamentals,
// //     ),
// //   ]; 'Startups',
// //       'Ideas, Fund Raising, PMF & More.',
// //       ImageAssets.Release.icon_startups,
// //     ),
// //     OnboardSelectionCategory(
// //       'Fundamentals',
// //       'First Principles of Knowledge & More.',
// //       ImageAssets.Release.icon_fundamentals,
// //     ),
// //   ];
// // }
// // }
// }
