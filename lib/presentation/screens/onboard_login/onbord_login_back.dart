import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:cato_feed/presentation/utils/assets/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class OnboardLoginBackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnboardLoginBackPage();
  }
}

class OnboardLoginBackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 128,),
            Container(
              child: Center(
                child: Image.asset(ImageAssets.Release.cato_logo),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Container(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Welcome Back!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: FontAssets.Poppins,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 32,),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: PlatformButton(
                  color: Colors.white,
                  onPressed: () {},
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign in with Google ',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: FontAssets.Poppins,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        Container(
                            width: 24,
                            height: 24,
                            child:
                                Image.asset(ImageAssets.Release.google_logo)),
                      ],
                    ),
                  ),
                  material: (_, __) => MaterialRaisedButtonData(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 10.0)),
                ),
              ),
            ),
            Flexible(child: Container(), flex: 1,),
            Center(
              child: Text(
                'Trouble logging in?',
                style: TextStyle(
                    color: Color(0xFF082D42),
                    fontSize: 16,
                    fontFamily: FontAssets.Poppins,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline
                ),
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
          ],
        ),
      ),
    );
  }
}
