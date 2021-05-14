import 'package:feed/ui/feed/feed_viewmodel.dart';
import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Sidebar extends ViewModelWidget<FeedViewModel> {
  @override
  Widget build(BuildContext context, FeedViewModel viewModel) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
            color: AppColors.onPrimary,
            icon: Icon(Icons.thumb_up_alt_outlined),
            onPressed: () {}),
        IconButton(
            color: AppColors.onPrimary,
            icon: Icon(Icons.bookmark_outline),
            onPressed: () {}),
        IconButton(
            color: AppColors.onPrimary,
            icon: Icon(Icons.ios_share),
            onPressed: () {}),
      ],
    );
  }
}
