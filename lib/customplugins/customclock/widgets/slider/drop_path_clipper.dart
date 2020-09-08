import 'package:flutter/material.dart';

class DropPathClipper extends CustomClipper<Path> {
  static Path dropPath(Size size, {Offset offset = const Offset(0, 0)}) {
    var path = Path();
    // move to offset
//    path.moveTo(offset.dx, offset.dy);
    // First move to top center
    path.moveTo(offset.dx + size.width / 2, offset.dy + 0);
    path.quadraticBezierTo(offset.dx + 0, offset.dy + size.height * 0.8,
        offset.dx + size.width * 0.45, offset.dy + size.height * 0.95);
    path.quadraticBezierTo(offset.dx + size.width * 0.5, offset.dy + size.height * 0.96,
        offset.dx + size.width * 0.55, offset.dy + size.height * 0.95);
    path.quadraticBezierTo(offset.dx + size.width, offset.dy + size.height * 0.8,
        offset.dx + size.width * 0.5, offset.dy + 0);

    path.close();
    return path;
  }

  @override
  Path getClip(Size size) {
    return dropPath(size);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
