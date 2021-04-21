import 'package:auto_route/auto_route.dart';
import 'package:cato_feed/presentation/routes/Router.gr.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:cato_feed/presentation/utils/assets/image_assets.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class OnboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: OnboardPage(),
    );
  }
}

class OnboardPage extends StatefulWidget {
  @override
  _OnboardPageState createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  int _currentPage = 0;
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            FlatButton(
              onPressed: () async {
                context.navigator.replace(CatoRoutes.onboardSelectionScreen);
              },
              child: Text(
                'Skip',
                style: TextStyle(
                  color: Color(0xFF8F8F8F),
                  fontSize: 16,
                  fontFamily: FontAssets.Poppins,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (_, position) {
              OnboardMetaData item = OnboardMetaData.getDefaultList()[position];
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 4,
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: item.title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: FontAssets.Poppins,
                          fontWeight: FontWeight.bold,
                          height: 1.2),
                    ),
                    TextSpan(text: "\n"),
                    TextSpan(
                      text: item.body,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: FontAssets.Poppins,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ])),
                  Expanded(
                    child: Image.asset(item.imagePath),
                  ),
                  if (item.hasExtraInfoText)
                    RichText(
                      text: TextSpan(
                          text: 'Disclaimer',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: FontAssets.Poppins,
                            fontWeight: FontWeight.w700,
                          ),
                          children: [
                            TextSpan(
                                style: TextStyle(fontWeight: FontWeight.w400),
                                text:
                                    ': they\’re not affiliated with Cato and we are only curating their existing content.'),
                          ]),
                      maxLines: 2,
                    ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              );
            },
            scrollDirection: Axis.horizontal,
            itemCount: OnboardMetaData.getDefaultList().length,
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(bottom: 10.0, left: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DotsIndicator(
                dotsCount: 3,
                position: _currentPage.toDouble(),
                decorator: DotsDecorator(
                    color: Color(0xFF51DFD7),
                    activeColor: Color(0xFF51DFD7),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    activeSize: Size(24, 10),
                    size: Size.square(10),
                    shape: CircleBorder(),
                    spacing: EdgeInsets.all(4)),
              ),
              FlatButton(
                onPressed: () {
                  if (_currentPage == 2) {
                    context.navigator
                        .replace(CatoRoutes.onboardSelectionScreen);
                  } else {
                    _pageController.jumpToPage(_currentPage + 1);
                  }
                },
                child: Text(
                  _currentPage == 2 ? "Done" : 'Next',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: FontAssets.Poppins,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardMetaData {
  final String title;
  final String body;
  final String imagePath;
  final bool hasExtraInfoText;

  OnboardMetaData(this.title, this.body, this.imagePath,
      {this.hasExtraInfoText = false});

  static List<OnboardMetaData> getDefaultList() {
    return [
      OnboardMetaData(
          'Learn. Everyday. Effortlessly.',
          'Handpicked bitesized content from the world\'s best minds.',
          ImageAssets.Release.onboard_expert,
          hasExtraInfoText: true),
      OnboardMetaData(
          'Learn what matters. From the best. For Free.',
          'Learn from the experts, all for free! Seen a better deal than this? Please send it our way too.',
          ImageAssets.Release.onboard_learn),
      OnboardMetaData(
          'Learn. By Doing. With Friends.',
          'Play games with friends to practice, implement and improve upon what you learn.',
          ImageAssets.Release.onboard_friends),
    ];
  }
}
