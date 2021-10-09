import 'package:feed/feedplayer/list/list.dart';
import 'package:feed/ui/base/feedmodel.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';

import 'bookmarks_viewmodel.dart';
import 'bookmarks.empty.dart';

class BookmarksView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<BaseFeedModel>(
        viewModel: BookmarksViewModel(),
        onModelReady: (model) => model.getData(),
        builder: (context, uiHelpers, model) => WillPopScope(
              onWillPop: () async {
                model.onBack();
                return true;
              },
              child: Scaffold(
                appBar: AppBar(
                  leading: BackButton(onPressed: model.onBack),
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  iconTheme: const IconThemeData(color: AppColors.textPrimary),
                ),
                body: model.isBusy
                    ? const Center(child: CircularProgressIndicator())
                    : model.videos.isEmpty
                        ? const NoBookmarksView()
                        : FeedPlayerListView(
                          showBookmark: false,
                        ),
              ),
            ));
  }
}
