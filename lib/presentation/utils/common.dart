import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void makeStatusBarWhite() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark));
}

String getYoutubeThumbnail(String videoId) {
  return 'https://img.youtube.com/vi/$videoId/sddefault.jpg';
}