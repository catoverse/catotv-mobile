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
        builder: (context, uiHelpers, model) => Column(
              children: [
                Container(
                  width: double.infinity,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                  decoration: textFieldStyle,
                  margin:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                  child: Text(
                    "What would you like to know? ",
                    style: uiHelpers.button,
                  ),
                ),
                GridView.count(
                  padding: EdgeInsets.all(10.0),
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  shrinkWrap: true,
                  childAspectRatio: 4 / 2,
                  children: model.topics
                      .map((e) => Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                gradient: LinearGradient(colors: [
                                  AppColors.primary,
                                  AppColors.google
                                ])),
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              e.name,
                              style: uiHelpers.subheading!
                                  .copyWith(color: AppColors.onPrimary),
                            ),
                          ))
                      .toList(),
                ),
              ],
            ));
  }
}
