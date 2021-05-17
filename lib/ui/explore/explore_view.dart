import 'package:feed/ui/custom/input_field.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/styles.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';

import 'explore_viewmodel.dart';

class ExploreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<ExploreViewModel>(
        viewModel: ExploreViewModel(),
        builder: (context, uiHelpers, model) => ListView(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              children: [
                Text(
                  "Search",
                  style: uiHelpers.heading,
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: textFieldStyle,
                  child: Text(
                    "What would you like to know? ",
                    style: uiHelpers.button,
                  ),
                ),
                Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: model.topics
                      .map((e) => Card(
                            child: Container(
                              width: uiHelpers.blockSizeHorizontal! * 45,
                              height: uiHelpers.blockSizeVertical! * 15,
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                e.name,
                                style: uiHelpers.subheading,
                              ),
                            ),
                            elevation: 2.0,
                            color: AppColors.surface,
                          ))
                      .toList(),
                ),
              ],
            ));
  }
}
