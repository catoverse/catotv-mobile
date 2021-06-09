import 'package:feed/ui/feed/widgets/feed_item.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';
import 'package:inview_notifier_list/inview_notifier_list.dart';

import 'feed_viewmodel.dart';

bool isInView(double deltaTop, double deltaBottom, double viewPortDimension) =>
    deltaTop < (0.5 * viewPortDimension) &&
    deltaBottom > (0.5 * viewPortDimension);

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
                foregroundColor: AppColors.textPrimary,
                iconTheme: IconThemeData(color: AppColors.textPrimary),
                leading: IconButton(
                    icon: Icon(Icons.notifications), onPressed: () {}),
                actions: [
                  IconButton(
                      icon: Icon(Icons.supervised_user_circle),
                      onPressed: () {}),
                ],
                centerTitle: true,
                title: Text(
                  "Home",
                  style: TextStyle(color: AppColors.textPrimary),
                ),
              ),
              body: model.isBusy
                  ? Center(child: CircularProgressIndicator())
                  : InViewNotifierList(
                      initialInViewIds: ['0'],
                      itemCount: model.data!.length,
                      builder: (BuildContext context, int index) =>
                          InViewNotifierWidget(
                        id: '$index',
                        builder: (BuildContext context, bool isInView,
                                Widget? child) =>
                            FeedItem(
                          isPlaying: isInView,
                          video: model.data![index],
                        ),
                      ),
                      isInViewPortCondition: isInView,
                    ),
            ));
  }
}
