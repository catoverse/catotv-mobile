import 'package:feed/ui/explore/explore_view.dart';
import 'package:feed/ui/global/lazy_indexed_stack.dart';
import 'package:feed/ui/global/screen.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:feed/ui/profile/profile_view.dart';
import 'package:flutter/material.dart';

import '../feed/feed_view.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  final _views = [FeedView(), ExploreView(), ProfileView()];

  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<HomeViewModel>(
        viewModel: HomeViewModel(),
        builder: (context, uiHelpers, model) => WillPopScope(
              onWillPop: model.showExitSnackbar,
              child: Scaffold(
                  appBar: AppBar(
                    automaticallyImplyLeading: false,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    centerTitle: true,
                    title: Text(
                      homeViewItems[model.index].title,
                      style: TextStyle(color: AppColors.textPrimary),
                    ),
                  ),
                  body: LazyIndexedStack(
                    reuse: true,
                    index: model.index,
                    sizing: StackFit.expand,
                    itemCount: _views.length,
                    itemBuilder: (_, index) => _views[index],
                  ),
                  bottomNavigationBar: Visibility(
                    visible: model.showNav(),
                    child: Theme(
                        data: ThemeData(canvasColor: AppColors.surface),
                        child: BottomNavigationBar(
                          fixedColor: AppColors.primary,
                          unselectedItemColor: AppColors.textSecondary,
                          currentIndex: model.index,
                          onTap: model.changeTab,
                          items: homeViewItems
                              .map(
                                (homeViewItem) => BottomNavigationBarItem(
                                  activeIcon: Icon(homeViewItem.activeIcon),
                                  icon: Icon(homeViewItem.inactiveIcon),
                                  label: (homeViewItem.title),
                                ),
                              )
                              .toList(),
                        )),
                  )),
            ));
  }
}

class HomeViewItem {
  final String title;
  final IconData activeIcon;
  final IconData inactiveIcon;

  HomeViewItem(
      {required this.title,
      required this.activeIcon,
      required this.inactiveIcon});
}

List<HomeViewItem> homeViewItems = [
  HomeViewItem(
    title: "Home",
    activeIcon: Icons.home_filled,
    inactiveIcon: Icons.home,
  ),
  HomeViewItem(
    title: "Explore",
    activeIcon: Icons.search,
    inactiveIcon: Icons.search_outlined,
  ),
  HomeViewItem(
    title: "Profile",
    activeIcon: Icons.person,
    inactiveIcon: Icons.person_outline,
  ),
];
