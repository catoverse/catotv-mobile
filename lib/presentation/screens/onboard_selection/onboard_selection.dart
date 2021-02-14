import 'package:auto_size_text/auto_size_text.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:cato_feed/presentation/utils/assets/image_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class OnboardSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnboardSelectionPage();
  }
}

class OnboardSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var onboardItems = OnboardSelectionCategory.getAll();
    var cardWidth = (MediaQuery.of(context).size.width - 40) / 2.0;
    var cardHeight = 96.0;
    return PlatformScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              Text(
                'What you want to learn at Cato?',
                style: TextStyle(
                    fontFamily: FontAssets.Poppins,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 24.0),
                maxLines: 2,
              ),
              Text(
                'Select minimum of 3',
                style: TextStyle(
                  fontFamily: FontAssets.Poppins,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFC4C4C4),
                  fontSize: 14.0,
                ),
                maxLines: 2,
              ),
              SizedBox(
                height: 8.0,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisSpacing: 8.0,
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.0,
                  childAspectRatio: (cardWidth * 1.0) / cardHeight,
                  children: List.generate(onboardItems.length, (index) {
                    var borderColor =
                        index == 2 ? Color(0xFF51DFD7) : Colors.white;
                    // TODO: Update BorderColor based on selection
                    return Align(
                      child: PhysicalModel(
                        child: Container(
                          margin:
                              EdgeInsets.only(left: 0, right: 4.0, bottom: 4.0),
                          width: cardWidth,
                          height: cardHeight,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            border: Border.all(color: borderColor, width: 1.5),
                            color: Colors.white,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                  left: 4.0, right: 4.0, top: 16.0),
                                    child: Image.asset(
                                      onboardItems[index].imagePath,
                                      height: 48,
                                      width: 48,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  if(index == 2) // TODO: Update Selection
                                  Padding(
                                    padding: const EdgeInsets.only(top: 2.0, left: 2.0),
                                    child: Icon(
                                      Icons.check_circle,
                                      color: Color(0xFF51DFD7),
                                      size: 18.0,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: cardWidth - 64,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      height: 8,
                                    ),
                                    AutoSizeText(
                                      onboardItems[index].title,
                                      style: TextStyle(
                                        fontFamily: FontAssets.Poppins,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                      maxLines: 1,
                                    ),
                                    Text(
                                      onboardItems[index].body,
                                      maxLines: 5,
                                      softWrap: true,
                                      style: TextStyle(
                                        fontFamily: FontAssets.Poppins,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Color(0xFF8F8F8F),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        color: Color(0x00000000),
                        elevation: 4.0,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        shadowColor: Color(0x0F000000),
                      ),
                      alignment: Alignment.topCenter,
                    );
                  }),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                width: double.infinity,
                child: PlatformButton(
                  color: Colors.white,
                  onPressed: () {},
                  child: Container(
                    child: Text(
                      'Surprise Me!',
                      style: TextStyle(
                        color: Color(0xFF51DFD7),
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
                        side: BorderSide(color: Color(0xFF51DFD7)),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 10.0)),
                ),
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardSelectionCategory {
  final String title;
  final String body;
  final String imagePath;

  OnboardSelectionCategory(this.title, this.body, this.imagePath);

  static List<OnboardSelectionCategory> getAll() {
    return [
      OnboardSelectionCategory(
        'Career',
        'Storytelling, Creating Wealth, Empathy & More.',
        ImageAssets.Release.icon_career,
      ),
      OnboardSelectionCategory(
        'Self Dev',
        'Productivity, Digital Hygiene & More.',
        ImageAssets.Release.icon_self_dev,
      ),
      OnboardSelectionCategory(
        'Mind',
        'Mental Health, Critical Thinking & More.',
        ImageAssets.Release.icon_mind,
      ),
      OnboardSelectionCategory(
        'Fun',
        'Magic, Life Hacks, DIY & More.',
        ImageAssets.Release.icon_fun,
      ),
      OnboardSelectionCategory(
        'Health',
        'Biohacking, Nutrition, Fitness & More.',
        ImageAssets.Release.icon_health,
      ),
      OnboardSelectionCategory(
        'Relationships',
        'Conflicts, Family, Friends, Love & More.',
        ImageAssets.Release.icon_relationships,
      ),
      OnboardSelectionCategory(
        'Startups',
        'Ideas, Fund Raising, PMF & More.',
        ImageAssets.Release.icon_startups,
      ),
      OnboardSelectionCategory(
        'Fundamentals',
        'First Principles of Knowledge & More.',
        ImageAssets.Release.icon_fundamentals,
      ),
    ];
  }
}