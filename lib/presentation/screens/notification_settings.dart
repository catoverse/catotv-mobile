import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:cato_feed/presentation/utils/wave_path_clipper.dart';
import 'package:cato_feed/presentation/utils/assets/image_assets.dart';

class NotificationSettingScreen extends StatefulWidget {
  @override
  _NotificationSettingScreenState createState() => _NotificationSettingScreenState();
}

class _NotificationSettingScreenState extends State<NotificationSettingScreen> {

  List<_NotificationItem> _notificationItems = [
    _NotificationItem(title: 'Like to comments', subTitle: 'sahilganjare liked your comment', isChecked: true),
    _NotificationItem(title: 'Reply to comments', subTitle: 'sahilganjare replied your comment', isChecked: true),
    _NotificationItem(title: 'Reminders', subTitle: 'You have unseen notifications', isChecked: false),
    _NotificationItem(title: 'New Stuff', subTitle: 'New course on Mental Health added', isChecked: false),
  ];

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: Column(
        children: [
          Container(
            height: 75,
            child: Stack(
              children: [
                Align(
                  child: Container(
                    margin: EdgeInsets.only(left: 32),
                    child: InkWell(
                      child: Icon(
                        Icons.arrow_back,
                        color: ColorAssets.blueHaiti,
                      ),
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                ),
                Align(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 3),
                    child: Text(
                      'NOTIFICATIONS',
                      style: TextStyle(
                          color: ColorAssets.blueHaiti,
                          fontFamily: FontAssets.SFProDisplay,
                          fontWeight: FontWeight.w300,
                          fontSize: 16),
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                )
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            margin: EdgeInsets.only(left: 32, right: 32),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (_, index) {
                return _notificationItems[index].buildWidget((newValue) {
                  setState(() {
                    _notificationItems[index].isChecked = newValue;
                  });
                  // TODO: Call handler to update the functionality for this index
                });
              },
            ),
          ),
          Expanded(
            child: ClipPath(
              clipper: WavePathClipper(clipFromTop: true, offset: 4.5),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageAssets.Release.abstract_bg),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NotificationItem {
  final String title;
  final String subTitle;
  bool isChecked = false;

  _NotificationItem({@required this.title, @required this.subTitle, this.isChecked});

  Widget buildWidget(ValueChanged<bool> onChanged) {
    return Container(
      margin: EdgeInsets.only(top: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: ColorAssets.blueHaiti,
                  fontFamily: FontAssets.SFProDisplay,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                subTitle,
                style: TextStyle(
                    fontSize: 14,
                    color: ColorAssets.blueHaiti,
                    fontFamily: FontAssets.SFProDisplay,
                    fontWeight: FontWeight.w300
                ),
              ),
            ],
          ),
          CupertinoSwitch(
            value: isChecked,
            onChanged: onChanged,
            activeColor: ColorAssets.teal,
          ),
        ],
      ),
    );
  }
}
