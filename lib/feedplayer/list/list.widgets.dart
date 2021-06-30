import 'package:feed/ui/base/base_feedmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class FeedFooter extends ViewModelWidget<BaseFeedModel> {
  final int index;

  const FeedFooter({required this.index});

  @override
  Widget build(BuildContext context, BaseFeedModel viewModel) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InputChip(
            label: Text(viewModel.videos[index].topic.name),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.share_outlined),
            onPressed: () => viewModel.shareVideo(index),
          )
        ],
      ),
    );
  }
}

class FeedHeader extends ViewModelWidget<BaseFeedModel> {
  final int index;

  const FeedHeader({required this.index});

  @override
  Widget build(BuildContext context, BaseFeedModel viewModel) {
    final channelName = viewModel.videos[index].channelInformation.name;
    final title = viewModel.videos[index].title;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (channelName != null)
            Text(
              channelName,
              maxLines: 3,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal),
            ),
          Text(
            title,
            maxLines: 3,
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal),
          ),
        ],
      ),
    );
  }
}