import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void makeStatusBarWhite() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark));
}