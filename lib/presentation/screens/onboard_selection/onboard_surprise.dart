import 'package:auto_size_text/auto_size_text.dart';
import 'package:cato_feed/presentation/screens/onboard_selection/onboard_category_card.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:cato_feed/presentation/utils/assets/image_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'onboard_selection.dart';

class OnboardSurpriseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnboardSurprisePage();
  }
}

class OnboardSurprisePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var onboardItems = OnboardSelectionCategory.getAll().getRange(0, 3).toList();
    var cardWidth = (MediaQuery.of(context).size.width - 40) / 2.0;
    var cardHeight = 96.0;
    var buttonWidth = (MediaQuery.of(context).size.width - 48.0) / 2.0;
    return PlatformScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              AutoSizeText(
                'We have chosen the most popular categories for you!',
                style: TextStyle(
                    fontFamily: FontAssets.Poppins,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 24.0),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: Center(
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 1,
                    childAspectRatio: 2.5,
                    children: List.generate(onboardItems.length, (index) {
                      var borderColor = Color(0xFF51DFD7);
                      return Align(
                        child: OnboardCategoryCard(
                          cardData: onboardItems[index],
                          cardWidth: cardWidth,
                          cardHeight: cardHeight,
                          cardBorderColor: borderColor,
                          isSelected: true,
                        ),
                        alignment: Alignment.topCenter,
                      );
                    }),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: buttonWidth,
                    child: PlatformButton(
                      color: Colors.white,
                      onPressed: () {},
                      child: Container(
                        child: Text(
                          'Back',
                          style: TextStyle(
                            color: Color(0xFF51DFD7),
                            fontFamily: FontAssets.Poppins,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
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
                  SizedBox(
                    width: buttonWidth,
                    child: PlatformButton(
                      color: Color(0xFF51DFD7),
                      onPressed: () {},
                      child: Container(
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: FontAssets.Poppins,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
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
                ],
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
