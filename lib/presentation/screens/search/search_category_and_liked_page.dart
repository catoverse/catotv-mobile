import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:flutter/material.dart';

import 'categories_page.dart';
import 'liked_video_page.dart';

class SearchCategoryAndLikedPage extends StatefulWidget {
  @override
  _SearchCategoryAndLikedPageState createState() =>
      _SearchCategoryAndLikedPageState();
}

class _SearchCategoryAndLikedPageState extends State<SearchCategoryAndLikedPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: 0,
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBar(
        controller: _tabController,
        isScrollable: true,
        tabs: [
          Tab(
            text: 'Categories',
          ),
          Tab(
            text: 'Liked Videos',
          )
        ],
        indicatorSize: TabBarIndicatorSize.label,
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 4,
              color: Color(0xFF000000),
            ),
          ),
        ),
        labelColor: Color(0xFF082D42),
        unselectedLabelColor: Color(0x66082D42),
        labelStyle: TextStyle(
          fontFamily: FontAssets.Poppins,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: FontAssets.Poppins,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: TabBarView(
          controller: _tabController,
          children: [CategoriesPage(), LikedVideoPage()],
        ),
      ),
    );
  }
}