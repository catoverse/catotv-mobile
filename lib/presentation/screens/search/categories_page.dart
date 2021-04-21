import 'package:auto_route/auto_route.dart';
import 'package:cato_feed/application/topic/topic.dart';
import 'package:cato_feed/presentation/routes/Router.gr.dart';
import 'package:cato_feed/presentation/screens/onboard_selection/onboard_category_card.dart';
import 'package:cato_feed/presentation/screens/onboard_selection/onboard_selection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var topics = context.read<TopicBloc>().state.allTopics;
    var cardWidth = (MediaQuery.of(context).size.width - 40) / 2.0;
    var cardHeight = 96.0;

    return GridView.count(
      crossAxisSpacing: 8.0,
      crossAxisCount: 2,
      mainAxisSpacing: 20.0,
      childAspectRatio: (cardWidth * 1.0) / cardHeight,
      children: List.generate(topics.length, (index) {
        var borderColor = Colors.white;
        return Align(
          child: GestureDetector(
            onTap: () {
              context.navigator.push(CatoRoutes.videosByCategoryScreen, arguments: VideosByCategoryScreenArguments(topic: topics[index]));
            },
            child: OnboardCategoryCard(
              cardData: topics[index],
              cardWidth: cardWidth,
              cardHeight: cardHeight,
              cardBorderColor: borderColor,
              isSelected: false,
            ),
          ),
          alignment: Alignment.topCenter,
        );
      }),
    );
  }
}