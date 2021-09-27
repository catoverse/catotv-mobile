import 'package:feed/ui/global/theme.dart';
import 'package:feed/ui/global/ui_helpers.dart';
import 'package:flutter/material.dart';

class InfoCardWidget extends StatelessWidget {
  InfoCardWidget({
    Key? key,
    required this.uiHelpers,
    required this.label,
    required this.value,
  }) : super(key: key);

  final UIHelpers uiHelpers;
  final String label;
  final int value;
  final scalingHelper = ScalingHelper();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: scalingHelper.fromLTRB(16, 0, 16, 8),
      padding: scalingHelper.all(30),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.auto_awesome,
            color: AppColors.primary,
          ),
          SizedBox(width: scalingHelper.size(17)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label),
                SizedBox(
                  height: scalingHelper.size(4),
                ),
                Text(
                  value.toString(),
                  style: uiHelpers.heading?.copyWith(
                    fontSize: 30,
                  ),
                  // textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
