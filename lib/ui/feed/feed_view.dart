import 'package:feed/ui/global/screen.dart';
import 'package:flutter/material.dart';

import 'feed_viewmodel.dart';

class FeedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<FeedViewModel>(
        viewModel: FeedViewModel(),
        builder: (context, uiHelpers, model) => Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                elevation: 0,
                backgroundColor: Colors.transparent,
              ),
              body: Container(),
            ));
  }
}
