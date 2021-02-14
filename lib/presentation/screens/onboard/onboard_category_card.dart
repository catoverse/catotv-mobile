import 'package:auto_size_text/auto_size_text.dart';
import 'package:cato_feed/presentation/screens/onboard/onboard.dart';
import 'package:cato_feed/presentation/screens/onboard_selection/onboard_selection.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:flutter/material.dart';

class OnboardCategoryCard extends StatelessWidget {
  final OnboardSelectionCategory cardData;
  final double cardWidth;
  final double cardHeight;
  final Color cardBorderColor;
  final bool isSelected;

  const OnboardCategoryCard({
    Key key,
    this.cardData,
    this.cardWidth,
    this.cardHeight,
    this.cardBorderColor,
    this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      child: Container(
        margin: EdgeInsets.only(left: 0, right: 4.0, bottom: 4.0),
        width: cardWidth,
        height: cardHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          border: Border.all(color: cardBorderColor, width: 1.5),
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 4.0, right: 4.0, top: 16.0),
                  child: Image.asset(
                    cardData.imagePath,
                    height: 48,
                    width: 48,
                    fit: BoxFit.contain,
                  ),
                ),
                if (isSelected) // TODO: Update Selection
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0, left: 2.0),
                    child: Icon(
                      Icons.check_circle,
                      color: Color(0xFF51DFD7),
                      size: 18.0,
                    ),
                  ),
              ],
            ),
            Container(
              width: cardWidth - 64,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  AutoSizeText(
                    cardData.title,
                    style: TextStyle(
                      fontFamily: FontAssets.Poppins,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    maxLines: 1,
                  ),
                  Text(
                    cardData.body,
                    maxLines: 5,
                    softWrap: true,
                    style: TextStyle(
                      fontFamily: FontAssets.Poppins,
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Color(0xFF8F8F8F),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      color: Color(0x00000000),
      elevation: 4.0,
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      shadowColor: Color(0x0F000000),
    );
  }
}
