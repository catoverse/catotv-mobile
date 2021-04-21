import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:cato_feed/presentation/utils/assets/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class PlaygroundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(body: Center(child: PlaygroundPage(),),);
  }
}

class PlaygroundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(ImageAssets.Release.icon_playground_abstract),
          Text(
            'Coming Soon',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: FontAssets.Poppins,
              fontSize: 14,
              color: Color(0xA80C3C57),
            ),
          ),
          SizedBox(height: 96,)
        ],
      ),
    );
  }
}

