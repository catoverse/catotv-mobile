import 'package:flutter/material.dart';

class WavePathClipper extends CustomClipper<Path> {
  final double offset;
  final bool clipFromTop;

  WavePathClipper({this.offset = 3.42, this.clipFromTop = false});

  @override
  Path getClip(Size size) {
    if (clipFromTop) {
      return _clipFromTop(size);
    } else {
      return _clipFromBottom(size);
    }
  }

  Path _clipFromTop(Size size) {
    var path = Path();

    double heightOffset = size.height / offset; // 3.42 is custom
    double widthOffset = heightOffset; // Same

    path.moveTo(size.width, size.height); // Move to bottom right
    path.lineTo(size.width, 0);

    path.quadraticBezierTo(
      size.width - widthOffset * 0.2,
      heightOffset,
      size.width - widthOffset,
      heightOffset
    );

    path.lineTo(widthOffset, heightOffset);

    path.quadraticBezierTo(
    widthOffset * 0.2,
    heightOffset,
    0,
    heightOffset * 2.0);

    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  Path _clipFromBottom(Size size) {
    var path = Path();

    double heightOffset = size.height / offset; // 3.42 is custom
    double widthOffset = heightOffset; // Same

    path.lineTo(0.0, size.height);

    var firstControlPoint =
        Offset(widthOffset * 0.2, size.height - heightOffset);
    var firstEndPoint = Offset(widthOffset, size.height - heightOffset);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width - widthOffset, size.height - heightOffset);

    var secondControlPoint =
        Offset(size.width - (widthOffset * 0.2), size.height - heightOffset);
    var secondEndPoint = Offset(size.width, size.height - (heightOffset * 2.0));
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
