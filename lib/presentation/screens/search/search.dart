import 'package:cato_feed/presentation/screens/search/search_category_and_liked_page.dart';
import 'package:cato_feed/presentation/screens/search/search_result.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:cato_feed/presentation/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';


class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SearchPage();
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    makeStatusBarWhite();
    return PlatformScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              // TextField(
              //   maxLines: 1,
              //   decoration: InputDecoration(
              //     contentPadding: EdgeInsets.symmetric(horizontal: 8),
              //     hintText: 'Search',
              //     alignLabelWithHint: true,
              //     filled: true,
              //     fillColor: Color(0xFFF5F5F5),
              //     suffixIcon: Icon(
              //       Icons.search,
              //       color: Color(0xFF323232),
              //     ),
              //     enabledBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(5)),
              //       borderSide: BorderSide(
              //         color: Color(0xFFF5F5F5),
              //       ),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(5)),
              //       borderSide: BorderSide(
              //         color: Color(0xFFF5F5F5),
              //       ),
              //     ),
              //   ),
              //   textAlignVertical: TextAlignVertical.center,
              //   autocorrect: false,
              //   autofocus: false,
              //   style: TextStyle(
              //     fontWeight: FontWeight.w400,
              //     fontFamily: FontAssets.Poppins,
              //     fontSize: 16,
              //     color: Color(0x990C3C57),
              //   ),
              //   cursorColor: Color(0x990C3C57),
              //   textInputAction: TextInputAction.search,
              // ),
              Expanded(
                child: SearchCategoryAndLikedPage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

