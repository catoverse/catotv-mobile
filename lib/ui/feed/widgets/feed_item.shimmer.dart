import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class $ShimmerFeedItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 250,
                      height: 10,
                      color: AppColors.primary,
                      margin: EdgeInsets.only(left: 20, bottom: 5.0),
                    ),
                    Container(
                      width: 100,
                      height: 8,
                      color: AppColors.primary,
                      margin: EdgeInsets.only(left: 20),
                    ),
                  ],
                ),
                Container(
                  width: 30,
                  height: 30,
                  color: AppColors.primary,
                  margin: EdgeInsets.only(right: 20),
                )
              ],
            ),
            Container(
              height: 250,
              color: AppColors.primary,
              margin: EdgeInsets.only(left: 0, bottom: 5.0, top: 10.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  color: AppColors.primary,
                  margin: EdgeInsets.only(left: 20),
                ),
                Container(
                  width: 30,
                  height: 30,
                  color: AppColors.primary,
                  margin: EdgeInsets.only(right: 20),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
