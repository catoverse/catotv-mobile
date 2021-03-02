import 'package:cato_feed/presentation/screens/onboard_selection/onboard_category_card.dart';
import 'package:cato_feed/presentation/screens/onboard_selection/onboard_selection.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var onboardItems = OnboardSelectionCategory.getAll();
    var cardWidth = (MediaQuery.of(context).size.width - 40) / 2.0;
    var cardHeight = 96.0;

    return GridView.count(
      crossAxisSpacing: 8.0,
      crossAxisCount: 2,
      mainAxisSpacing: 20.0,
      childAspectRatio: (cardWidth * 1.0) / cardHeight,
      children: List.generate(onboardItems.length, (index) {
        var borderColor = index == 2 ? Color(0xFF51DFD7) : Colors.white;
        // TODO: Update BorderColor based on selection
        return Align(
          child: OnboardCategoryCard(
            cardData: onboardItems[index],
            cardWidth: cardWidth,
            cardHeight: cardHeight,
            cardBorderColor: borderColor,
            isSelected: index == 2,
          ),
          alignment: Alignment.topCenter,
        );
      }),
    );
  }
}