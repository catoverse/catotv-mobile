import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:cato_feed/presentation/routes/Router.gr.dart';
import 'package:cato_feed/presentation/utils/assets/image_assets.dart';
import 'package:cato_feed/presentation/widgets/horizontal_tags.dart';
import 'package:cato_feed/presentation/widgets/post_widgets.dart';
import 'package:flutter/material.dart';

class ProfileOverviewScreen extends StatelessWidget {

  ProfileOverviewScreen({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      key: PageStorageKey('profile_overview'),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            GestureDetector(
              child: Container(
                color: Color(0xFF212121),
                height: 90,
              ),
              onTap: () {
                ExtendedNavigator.of(context).push(CatoRoutes.profileScreen);
              },
            ),
            Positioned(
              bottom: 20,
              left: 16,
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            Positioned(
              left: 48,
              bottom: 12,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(ImageAssets.Debug.google_logo),
                      // TODO: Update this also
                      fit: BoxFit.fill),
                ),
              ),
            ),
            Positioned(
              left: 90,
              bottom: 24,
              child: Text(
                'Rutvij Karkhanis',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: MediaQuery.removePadding(
            context: context,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16, top: 16),
                  child: Text(
                    'Saved',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                Container(
                  height: 32,
                  margin: EdgeInsets.only(top: 20, bottom: 30),
                  child: null,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (_, index) {
                    return SizedBox(
                      height: 30,
                    );
                  },
                  itemCount: 10,
                  itemBuilder: (_, index) {
                    return PostWidget();
                  },
                ),
              ],
            ),
            removeTop: true,
          ),
        ),
      ],
    );
  }
}
