import 'package:auto_size_text/auto_size_text.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:cato_feed/presentation/utils/assets/image_assets.dart';
import 'package:cato_feed/presentation/utils/common.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UserProfilePage();
  }
}

class NoGlowScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: 0,
    );
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    makeStatusBarWhite();
    return PlatformScaffold(
      body: SafeArea(
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overScroll) {
            overScroll.disallowGlow();
            return;
          },
          child: NestedScrollView(
            controller: _scrollController,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                MediaQuery.removePadding(
                  context: context,
                  removeLeft: true,
                  child: SliverAppBar(
                    titleSpacing: 0,
                    title: ProfileHeaderWidget(),
                    toolbarHeight: 172,
                    backgroundColor: Colors.white,
                    floating: true,
                    snap: false,
                    pinned: true,
                    bottom: TabBar(
                      controller: _tabController,
                      tabs: [
                        Tab(
                          text: 'Progress',
                        ),
                        Tab(
                          text: 'Friends',
                        )
                      ],
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 4,
                            color: Color(0xFFFF8364),
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
                  ),
                )
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: [ProfileProgressPage(), ProfileFriendsPage()],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                ImageAssets.Release.icon_profile,
                height: 48,
                width: 48,
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rahul Garg',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: FontAssets.Poppins,
                      fontSize: 16,
                      color: Color(0xFF082D42),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // TODO: Share Profile
                    },
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Share your profile ',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: FontAssets.Poppins,
                            fontSize: 12,
                            color: Color(0xFF8F8F8F),
                          ),
                        ),
                        WidgetSpan(
                            child: Icon(
                          Icons.share_outlined,
                          color: Color(0xFF8F8F8F),
                          size: 18.0,
                        ))
                      ]),
                    ),
                  ),
                ],
              ),
              Spacer(
                flex: 1,
              ),
              GestureDetector(
                onTap: () {
                  // TODO: Profile Cog clicked
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                    left: 12,
                    bottom: 12,
                  ),
                  child: Image.asset(
                    ImageAssets.Release.icon_profile_cog,
                    height: 24,
                    width: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(
            height: 1,
            color: Color(0x33082D42),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProfileStatNumberWidget(
                value: '12',
                title: 'Streaks',
              ),
              ProfileStatNumberWidget(
                value: '1260',
                title: 'Xp Earned',
              ),
              ProfileStatNumberWidget(
                value: '180',
                title: 'Learnings',
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Divider(
          height: 1,
          color: Color(0x33082D42),
        )
      ],
    );
  }
}

class ProfileStatNumberWidget extends StatelessWidget {
  final String value;
  final String title;

  const ProfileStatNumberWidget({Key key, this.value, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: FontAssets.Poppins,
              fontSize: 24,
              color: Color(0xFF082D42)),
        ),
        Text(
          title.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: FontAssets.Poppins,
            fontSize: 12,
            color: Color(0x66082D42),
          ),
        ),
      ],
    );
  }
}

class ProfileProgressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Current streak',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: FontAssets.Poppins,
                  fontSize: 16,
                  color: Color(0xFF082D42),
                ),
              ),
              Text(
                'How it works?',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: FontAssets.Poppins,
                    fontSize: 14,
                    color: Color(0xFF6BD5E1),
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 24,
          child: ListView.separated(
            itemBuilder: (context, index) {
              if (index == 4) {
                return Padding(
                  padding: const EdgeInsets.only(left: 2.0),
                  child: DottedBorder(
                    color: Color(0xFFFF8364),
                    strokeWidth: 1,
                    radius: Radius.circular(8.0),
                    borderType: BorderType.RRect,
                    dashPattern: [6, 3],
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 4,
                          ),
                          child: Text(
                            'SUN',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: FontAssets.Poppins,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }
              return Container(
                decoration: BoxDecoration(
                  color: Color(0xFF6BD5E1),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 4,
                  ),
                  child: Text(
                    'SUN',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: FontAssets.Poppins,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 3,
              );
            },
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: RichText(
            text: TextSpan(children: [
              WidgetSpan(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Image.asset(ImageAssets.Release.icon_square_star),
                ),
              ),
              TextSpan(
                text: 'Unlock 1 invite by adding a day to your streak',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: FontAssets.Poppins,
                  fontSize: 12,
                  color: Color(0xFF082D42),
                ),
              )
            ]),
          ),
        ),
        SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Today\'s watch time',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: FontAssets.Poppins,
              fontSize: 16,
              color: Color(0xFF082D42),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 22,
                decoration: BoxDecoration(
                  color: Color(0x33FF8364),
                  borderRadius: BorderRadius.all(Radius.circular(11.0)),
                ),
              ),
              Container(
                width: 120, // TODO: Dynamic Width
                height: 22,
                decoration: BoxDecoration(
                  color: Color(0xFFFF8364),
                  borderRadius: BorderRadius.all(Radius.circular(11.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 2,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '8 min',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: FontAssets.Poppins,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '30 min',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: FontAssets.Poppins,
                        fontSize: 12,
                        color: Color(0xFFFF8364),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: AutoSizeText(
            'Watch 22 mins more today to add Saturday to your streak',
            maxLines: 1,
            maxFontSize: 12,
            minFontSize: 8,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: FontAssets.Poppins,
              color: Color(0xFF082D42),
            ),
          ),
        ),
        SizedBox(height: 32),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Learning Time',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: FontAssets.Poppins,
                    fontSize: 16,
                    color: Color(0xFF082D42),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Current week',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF6BD5E1)),
                        ),
                        TextSpan(
                          text: ' • ',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0x66082D42)),
                        ),
                        TextSpan(
                          text: 'Month',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0x33082D42)),
                        ),
                        TextSpan(
                          text: ' • ',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0x66082D42)),
                        ),
                        TextSpan(
                          text: 'Max',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0x33082D42)),
                        ),
                      ],
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: FontAssets.Poppins,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            )),
        SizedBox(height: 24),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: LineChart(mainData()),
        ),
      ],
    );
  }

  LineChartData mainData() {
    List<Color> gradientColors = [
      const Color(0xff6BD5E1),
      const Color(0x006BD5E1),
    ];
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Color(0x1A8F8F8F),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 10,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xFF082D42),
            fontFamily: FontAssets.Poppins,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return '20';
              case 2:
                return '21';
              case 4:
                return '22';
              case 6:
                return '23';
              case 8:
                return 'Today';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xFF6BD5E1),
            fontFamily: FontAssets.Poppins,
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '05m';
              case 2:
                return '10m';
              case 3:
                return '15m';
              case 4:
                return '20m';
              case 5:
                return '25m';
            }
            return '';
          },
          reservedSize: 32,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border(
          bottom: BorderSide(
            color: Color(0x4D8F8F8F),
            width: 2,
          ),
        ),
      ),
      minY: 0,
      maxY: 6,
      minX: 0,
      maxX: 9,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3.5),
            FlSpot(2, 2.5),
            FlSpot(4, 3),
            FlSpot(6, 2.1),
            FlSpot(8, 3.8),
          ],
          isCurved: false,
          colors: [Color(0x00000000)],
          barWidth: 0,
          isStrokeCapRound: true,
          dotData: FlDotData(
              show: true,
              getDotPainter: (spot, radius, data, index) {
                return FlDotCirclePainter(
                  strokeWidth: 2,
                  strokeColor: Colors.white,
                  color: index == 4 ? Color(0xFFFF8364) : Color(0xFF6BD5E1),
                );
              }),
          belowBarData: BarAreaData(
            spotsLine: BarAreaSpotsLine(show: false),
            show: true,
            colors: gradientColors,
            gradientFrom: Offset(0, 0),
            gradientTo: Offset(0, 2.2),
          ),
        ),
      ],
    );
  }
}

class ProfileFriendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Nominated by',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: FontAssets.Poppins,
              fontSize: 16,
              color: Color(0xFF082D42),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        _buildFriendTile(
          ImageAssets.Release.icon_friend_avatar,
          'Ravindra',
          'on 23/12/20',
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: PhysicalModel(
            color: Colors.transparent,
            shadowColor: Color(0x29082D42),
            borderRadius: BorderRadius.all(Radius.circular(12)),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
              child: AspectRatio(
                aspectRatio: 1.5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24, top: 24),
                        child: Image.asset(
                          ImageAssets.Release.icon_star_envelope,
                          width: 48,
                          height: 48,
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(text: 'You have unlocked '),
                                    TextSpan(
                                      text: '12 invites ',
                                      style: TextStyle(fontWeight: FontWeight.w600),
                                    ),
                                    TextSpan(text: 'so far'),
                                  ],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: FontAssets.Poppins,
                                    fontSize: 14,
                                    color: Color(0xFF082D42),
                                  ),
                                ),
                                maxLines: 2,
                                softWrap: true,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              AutoSizeText(
                                '1 day gets added to your streak when you watch 30 mins of content on Cato. Every time you complete a streak you will get rewarded.',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: FontAssets.Poppins,
                                  fontSize: 16,
                                  color: Color(0x66082D42),
                                ),
                                maxLines: 4,
                                minFontSize: 10,
                                maxFontSize: 12,
                                softWrap: true,
                                wrapWords: true,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              PlatformButton(
                                color: Color(0xFF51DFD7),
                                onPressed: () {},
                                child: Container(
                                  child: Text(
                                    'Invite a friend now',
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
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 32.0)),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFriendTile(String icon, String name, String desc) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Image.asset(
            icon,
            height: 40,
            width: 40,
            fit: BoxFit.contain,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: FontAssets.Poppins,
                  fontSize: 16,
                  color: Color(0xFF082D42),
                ),
              ),
              if (desc.isNotEmpty)
                Text(
                  desc,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: FontAssets.Poppins,
                    fontSize: 12,
                    color: Color(0xFF8F8F8F),
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
