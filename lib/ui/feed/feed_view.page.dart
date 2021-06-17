import 'package:feed/core/models/app_models.dart';
import 'package:feed/ui/base/feed_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

mixin $FeedView on StatelessWidget {
  final PagingController<int, Video> pagingController =
      PagingController(firstPageKey: 0, invisibleItemsThreshold: 5);
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  /// Registers a listener that calls [model.fetchPage()]
  /// on every page request
  void listenToPageRequests(FeedViewModel model) {
    pagingController.addPageRequestListener(
        (pageKey) => _updateViewModel(model, pagingController, pageKey));
  }

  void _updateViewModel(FeedViewModel model,
          PagingController<int, Video> controller, int page) =>
      model.fetchPage(page, controller);

  void dispose() {
    // The dispose function for a PagingController sets all listeners to null
    pagingController.dispose();
  }
}
