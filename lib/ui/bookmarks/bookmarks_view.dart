import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';

import 'bookmarks_viewmodel.dart';
import 'bookmarks.empty.dart';

class BookmarksView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<BookmarksViewModel>(
        viewModel: BookmarksViewModel(),
        builder: (context, uiHelpers, model) => Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                iconTheme: IconThemeData(color: AppColors.textPrimary),
              ),
              body: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  Text(
                    "Bookmarks",
                    style: uiHelpers.heading,
                  ),
                  if (model.bookmarks.isEmpty)
                    NoBookmarksView()
                  else
                    ...model.bookmarks.map((e) => Container()).toList()
                ],
              ),
            ));
  }
}
