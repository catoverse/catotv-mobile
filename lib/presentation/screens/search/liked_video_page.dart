import 'package:flutter/material.dart';

import 'horizontal_video_tile.dart';

class LikedVideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context, index) {
      return HorizontalVideoTile();
    }, itemCount: 10, separatorBuilder: (context, index) {
      return SizedBox(height: 16,);
    },);
  }
}