import 'package:feed/feedplayer/controller.dart';
// import 'package:feed/ui/feed/widgets/feed_item.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'restricted_home_viewmodel.dart';

class RestrictedHomeView extends StatelessWidget {
  final feedPlayerController = FeedPlayerController();
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<RestrictedHomeViewModel>(
        viewModel: RestrictedHomeViewModel(),
        onModelReady: (model) => listenToListScroll(model),
        onDispose: feedPlayerController.dispose(),
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
                body: VisibilityDetector(
                  key: ObjectKey(feedPlayerController),
                  onVisibilityChanged: (visibility) {
                    if (visibility.visibleFraction == 0) {
                      feedPlayerController.pause();
                    }
                  },
                  child: model.isBusy
                      ? Center(child: CircularProgressIndicator())
                      : ListView(
                          controller: _controller,
                          cacheExtent: 1000,
                          children:
                              model.videos.map((video) => ListTile()).toList()),
                ),
              ),
            ));
  }

  _reachEndListener(VoidCallback showConstraint) {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) showConstraint.call();
  }

  void listenToListScroll(RestrictedHomeViewModel model) {
    _controller
        .addListener(() => _reachEndListener(() => model.showConstraint()));

    model.getVideos();
  }
}
