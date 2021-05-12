import 'package:feed/ui/global/screen.dart';
import 'package:flutter/material.dart';

import 'explore_viewmodel.dart';

class ExploreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<ExploreViewModel>(
        viewModel: ExploreViewModel(),
        builder: (context, uiHelpers, model) => ListView(
              children: model.topics
                  .map((e) => ListTile(
                        title: Text(e.name),
                      ))
                  .toList(),
            ));
  }
}
