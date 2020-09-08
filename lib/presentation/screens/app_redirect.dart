import 'package:auto_route/auto_route.dart';
import 'package:cato_feed/customplugins/customclock/customclock.dart';
import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:cato_feed/presentation/utils/assets/image_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AppRedirectScreen extends StatefulWidget {
  @override
  _AppRedirectScreenState createState() => _AppRedirectScreenState();
}

class _AppRedirectScreenState extends State<AppRedirectScreen> {
  int currentStep = 2;
  List<_AppRedirectItems> _appRedirectItems = [
    _AppRedirectItems(
        title: 'Apps To Restrict',
        body:
            'Select the apps that distract you. You\'ll be redirected to Cato whenever you try to open these apps.'),
    _AppRedirectItems(
        title: 'Set Timing',
        body:
            'This is when you want to restrict yourself from using these apps.'),
    _AppRedirectItems(
        title: 'Permissions',
        body:
            'Almost done, set App Access. Cato Usage Access Must Be Enabled In Order To Restrict Apps.'),
  ];

  // ignore: missing_return
  Widget _buildFeatureWidget() {
    if (currentStep == 1) {
      return _buildAppSelect();
    } else if (currentStep == 2) {
      return _buildTimingSet();
    } else if (currentStep == 3) {
      return Padding(
        child: Image.asset(ImageAssets.Release.permission_lock),
        padding: EdgeInsets.only(right: 40, bottom: 10),
      );
    }
  }

  Widget _buildAppSelect() {
    InstalledPackages package = InstalledPackages(
        appName: 'Google',
        appIcon: ImageAssets.Debug.google_logo,
        isSelected: true);
    return Expanded(
      child: StaggeredGridView.builder(
        itemCount: 20,
        padding: EdgeInsets.only(left: 32, right: 32, bottom: 40),
        gridDelegate: SliverStaggeredGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          staggeredTileBuilder: (__) {
            return StaggeredTile.fit(1);
          },
          staggeredTileCount: 22,
          mainAxisSpacing: 14,
          crossAxisSpacing: 14,
        ),
        itemBuilder: (_, index) {
          return package._buildWidget();
        },
      ),
    );
  }

  List<String> _weekDays = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
  List<int> _selectedWeekdays = [0, 1, 2, 3, 4];

  Widget _buildTimingSet() {
    return Flex(
      direction: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        // Clock
        CustomClock(),
        Container(
          margin: EdgeInsets.only(left: 32, right: 32, top: 8),
          child: Text(
            'Days the restriction should apply',
            style: TextStyle(color: ColorAssets.black2150o, fontFamily: FontAssets.Roboto, fontSize: 14),
          ),
        ),
        SizedBox(height: 10,),
        // Week Days
        Container(
          margin: EdgeInsets.only(left: 32, right: 32),
          height: 40,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            addRepaintBoundaries: false,
            itemCount: _weekDays.length,
            separatorBuilder: (_, __) {
              return SizedBox(
                width: 10,
              );
            },
            itemBuilder: (_, index) {
              var isSelected = _selectedWeekdays.contains(index);
              return GestureDetector(
                child: Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: isSelected ? ColorAssets.teal : Colors.white),
                  child: Center(
                    child: Text(
                      _weekDays[index],
                      style: TextStyle(
                        fontFamily: FontAssets.Roboto,
                        color: isSelected ? Colors.white : ColorAssets.black21,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    if(_selectedWeekdays.contains(index)) {
                      _selectedWeekdays.remove(index);
                    } else {
                      _selectedWeekdays.add(index);
                    }
                  });
                },
              );
            },
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      backgroundColor: ColorAssets.black21,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 32),
            child: Text(
              'Step $currentStep/3',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: LinearProgressIndicator(
              minHeight: 2,
              value: currentStep / 3.0,
              backgroundColor: Color(0x1AFFFFFF),
              valueColor: AlwaysStoppedAnimation(ColorAssets.teal),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        _appRedirectItems[currentStep - 1].title,
                        style: TextStyle(
                          color: ColorAssets.black21,
                          fontSize: 22,
                          fontFamily: FontAssets.Roboto,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 12,
                          left: 32,
                          right: 32,
                        ),
                        child: Text(
                          _appRedirectItems[currentStep - 1].body,
                          style: TextStyle(
                            color: ColorAssets.black2150o,
                            fontSize: 14,
                            fontFamily: FontAssets.Roboto,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _buildFeatureWidget(),
                      SizedBox(
                        height: 80,
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.transparent,
                      margin: EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          Spacer(
                            flex: 1,
                          ),
                          GestureDetector(
                            child: Card(
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 60, right: 60, top: 20, bottom: 20),
                                child: Text(
                                  'Back',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: FontAssets.Roboto,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              elevation: 0,
                              color: ColorAssets.black21,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                            ),
                            onTap: () {
                              // Handle Back Press
                              if(currentStep == 1) {
                                ExtendedNavigator.of(context).pop();
                              } else {
                                setState(() {
                                  currentStep -= 1;
                                });
                              }
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            child: Card(
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: (currentStep == 3) ? 20 : 60, right: (currentStep == 3) ? 20 : 60, top: 20, bottom: 20),
                                child: Text(
                                  (currentStep == 3) ? 'Go to Settings' : 'Next',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: FontAssets.Roboto,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              elevation: 0,
                              color: ColorAssets.teal,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                            ),
                            onTap: () {
                              if(currentStep == 3) {
                                // todo: Open settings
                              } else {
                                setState(() {
                                  currentStep += 1;
                                });
                              }
                            },
                          ),
                          Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InstalledPackages {
  final String appName;
  final String appIcon;
  bool isSelected = false;

  InstalledPackages(
      {@required this.appName, @required this.appIcon, this.isSelected});

  Widget _buildWidget() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
          border: Border.all(
            color: isSelected ? ColorAssets.teal : Colors.white,
            width: isSelected ? 3 : 0,
          )),
      child: Column(
        children: [
          Padding(
            child: Image.asset(appIcon),
            padding: EdgeInsets.only(left: 10, right: 10, top: 5),
          ),
          Text(
            appName,
            style: TextStyle(
                color: ColorAssets.black21,
                fontSize: 14,
                fontFamily: FontAssets.Roboto),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}

class _AppRedirectItems {
  final String title;
  final String body;

  _AppRedirectItems({@required this.title, @required this.body});
}
