import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';

class ScalingHelper {
  ScalingHelper({this.width: 750});

  // width of the current device
  double width;

  // scale
  double get scale => _scale;
  set scale(v) {
    _scale = v;
  }

  // default scale set to 1.0
  double _scale = 1.0;

  double size(double value) {
    return this._t(value) / window.devicePixelRatio;
  }

  EdgeInsets fromLTRB(double left, double top, double right, double bottom) {
    return EdgeInsets.fromLTRB(
        size(left), size(top), size(right), size(bottom));
  }

  EdgeInsets all(double value) {
    return EdgeInsets.all(size(value));
  }

  EdgeInsets only(
      {double left = 0.0,
      double top = 0.0,
      double right = 0.0,
      double bottom = 0.0}) {
    return EdgeInsets.only(
      left: size(left),
      top: size(top),
      right: size(right),
      bottom: size(bottom),
    );
  }

  double _t(double value) {
    if (value > -1e-6 && value < 1e-6) {
      return value;
    }
    // Adapt small ones for landscape
    double devWidth =
        min(window.physicalSize.width, window.physicalSize.height);

    double s = devWidth / this.width;

    var r = value * s;

    return r * scale;
  }
}

class UIHelpers {
  double? width;
  double? height;

  //block sizes that change according to ui
  double? blockSizeHorizontal;
  double? blockSizeVertical;

  // An Utility tool to help scale things better.
  ScalingHelper? scalingHelper;

  // Text Styles
  TextStyle? headline;
  TextStyle? title;
  TextStyle? body;

  //Vertical Spaces that change accordingly
  SizedBox? verticalSpaceLow;
  SizedBox? verticalSpaceMedium;
  SizedBox? verticalSpaceHigh;

  //Horizontal Spaces that change accordingly
  SizedBox? horizontalSpaceLow;
  SizedBox? horizontalSpaceMedium;
  SizedBox? horizontalSpaceHigh;

  UIHelpers.fromContext(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    var screenWidth = mediaQuery.size.width;
    var screenHeight = mediaQuery.size.height;

    scalingHelper = ScalingHelper(width: screenWidth);

    headline = TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'Quicksand',
        fontSize: scalingHelper!.size(28));

    title = TextStyle(
        fontWeight: FontWeight.w600,
        fontFamily: 'Quicksand',
        fontSize: scalingHelper!.size(20));

    body = TextStyle(
        fontWeight: FontWeight.w600,
        fontFamily: 'Quicksand',
        fontSize: scalingHelper!.size(18));

    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    verticalSpaceLow = SizedBox(
      height: blockSizeVertical! * 3,
    );
    verticalSpaceMedium = SizedBox(
      height: blockSizeVertical! * 7,
    );
    verticalSpaceHigh = SizedBox(
      height: blockSizeVertical! * 11,
    );

    horizontalSpaceLow = SizedBox(
      width: blockSizeHorizontal! * 3,
    );
    horizontalSpaceMedium = SizedBox(
      width: blockSizeHorizontal! * 7,
    );
    horizontalSpaceHigh = SizedBox(
      width: blockSizeHorizontal! * 11,
    );
  }
}
