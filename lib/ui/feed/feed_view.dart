import 'package:feed/ui/global/screen.dart';
import 'package:flutter/material.dart';

import 'feed_viewmodel.dart';

class FeedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<FeedViewModel>(
        viewModel: FeedViewModel(),
        builder: (context, uiHelpers, model) => Scaffold(
              body: ListView(
                children: model.videos
                    .map((e) => ListTile(
                          title: Text(e.title),
                          subtitle: Text(e.video_url),
                        ))
                    .toList(),
              ),
            ));
  }
}
