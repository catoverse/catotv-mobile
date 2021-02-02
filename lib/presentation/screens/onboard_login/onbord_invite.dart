import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:cato_feed/presentation/utils/assets/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class OnboardInviteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnboardInvitePage();
  }
}

class OnboardInvitePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(flex: 2, fit: FlexFit.loose, child: Container(),),
            Container(
              child: Center(
                child: Image.asset(ImageAssets.Release.cato_logo),
              ),
            ),
            Flexible(flex: 3, fit: FlexFit.loose, child: Container(),),
            Padding(
              child: Text(
                'Have Invite Code?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: FontAssets.Poppins,
                  fontWeight: FontWeight.w600,
                ),
              ),
              padding: EdgeInsets.only(left: 16.0),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: FontAssets.Poppins,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
                cursorColor: Colors.black,
                maxLines: 1,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  hintText: 'Enter your invite code',
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
                  color: Color(0xFF51DFD7),
                  onPressed: () {},
                  child: Container(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: FontAssets.Poppins,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  material: (_, __) => MaterialRaisedButtonData(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10.0)
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0,),
            Center(
              child: Text(
                'or',
                style: TextStyle(
                  color: Color(0xFFC4C4C4),
                  fontFamily: FontAssets.Poppins,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 16.0,),
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
                    child: Text(
                      'Join Our Waitlist',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: FontAssets.Poppins,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  material: (_, __) => MaterialRaisedButtonData(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black,),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 10.0)
                  ),
                ),
              ),
            ),
            SizedBox(height: 32.0,),
          ],
        ),
      ),
    );
  }
}
