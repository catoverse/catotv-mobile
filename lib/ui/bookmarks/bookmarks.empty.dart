import 'package:feed/core/constants/assets.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:feed/ui/global/ui_helpers.dart';
import 'package:flutter/material.dart';

class NoBookmarksView extends StatelessWidget {
  const NoBookmarksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiHelpers = UIHelpers.fromContext(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            width: double.infinity,
            height: uiHelpers.blockSizeVertical! * 40,
            child: Image.asset(
              Assets.noBookmarksImage,
              fit: BoxFit.contain,
            )),
        uiHelpers.verticalSpaceMedium!,
        Text(
          "Make the most of bookmarks",
          style: uiHelpers.heading,
          textAlign: TextAlign.center,
        ),
        Text(
          "\nAdd your favorite stories to revisit them later",
          style: uiHelpers.subheading,
          textAlign: TextAlign.center,
        ),
        Wrap(
          children: [
            Text(
              "Simply click on ",
              style: uiHelpers.subheading,
              textAlign: TextAlign.center,
            ),
            Icon(
              Icons.bookmark_outline,
              color: AppColors.textSecondary,
            ),
            Text(
              "any video to save them",
              style: uiHelpers.subheading,
              textAlign: TextAlign.center,
            ),
          ],
        )
      ],
    );
  }
}
