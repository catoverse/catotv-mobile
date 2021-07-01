import 'package:feed/feedplayer/list/list.dart';
import 'package:feed/ui/base/feedmodel.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:flutter/material.dart';

import 'restricted_home_viewmodel.dart';

class RestrictedHomeView extends StatelessWidget {
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<BaseFeedModel>(
        viewModel: RestrictedHomeViewModel(),
        onModelReady: (model) => listenToListScroll(model),
        builder: (context, uiHelpers, model) => WillPopScope(
              onWillPop: model.showExitSnackbar,
              child: Scaffold(
                  appBar: AppBar(
                    automaticallyImplyLeading: false,
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    actions: [
                      TextButton(
                          onPressed: () => model.showConstraint(),
                          child: Text('Login')),
                    ],
                  ),
                  body: model.isBusy
                      ? Center(child: CircularProgressIndicator())
                      : FeedPlayerListView()),
            ));
  }

  _reachEndListener(VoidCallback showConstraint) {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) showConstraint.call();
  }

  void listenToListScroll(BaseFeedModel model) {
    _controller
        .addListener(() => _reachEndListener(() => model.showConstraint()));

    model.getVideos();
  }
}
