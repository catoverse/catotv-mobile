import 'package:cato_feed/presentation/utils/assets/color_assets.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

final materialThemeData = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.black,
  accentColor: ColorAssets.teal,
  appBarTheme:
      AppBarTheme(color: Colors.white, centerTitle: true, elevation: 0),
  backgroundColor: Colors.white,
  fontFamily: FontAssets.Roboto,
);
final cupertinoTheme = CupertinoThemeData(
  primaryColor: Colors.black,
  barBackgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
);

final Color notificationBlueColor = Color(0x1592E6);
