import 'package:feed/core/constants/assets.dart';
import 'package:feed/core/constants/strings.dart';
import 'package:feed/ui/global/ui_helpers.dart';
import 'package:flutter/material.dart';

class OnboardingItem {
  final String heading, subheading, image;

  OnboardingItem(
      {required this.heading, required this.subheading, required this.image});
}

final kOnboardingItem = OnboardingItem(
    heading: OnboardingItemTitle1,
    image: Assets.onboardingImage1,
    subheading: OnboardingItemSubtitle1);

final List<OnboardingItem> onboardingItems = [
  OnboardingItem(
      heading: OnboardingItemTitle1,
      image: Assets.onboardingImage1,
      subheading: OnboardingItemSubtitle1),
  OnboardingItem(
      heading: OnboardingItemTitle2,
      image: Assets.onboardingImage2,
      subheading: OnboardingItemSubtitle2),
  OnboardingItem(
      heading: OnboardingItemTitle3,
      image: Assets.onboardingImage3,
      subheading: OnboardingItemSubtitle3),
];

class OnboardingBodyListItem extends StatelessWidget {
  final OnboardingItem item;

  const OnboardingBodyListItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiHelpers = UIHelpers.fromContext(context);
    return Column(
      children: [
        Container(
            width: double.infinity,
            height: uiHelpers.blockSizeVertical! * 45,
            padding: EdgeInsets.all(30.0),
            child: Image.asset(
              item.image,
              fit: BoxFit.contain,
            )),
        Text(
          item.heading,
          style: uiHelpers.heading,
          textAlign: TextAlign.center,
        ),
        uiHelpers.verticalSpaceLow!,
        Text(
          item.subheading,
          style: uiHelpers.subheading,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
