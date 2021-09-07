import 'package:feed/ui/base/feedmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class FeedFooter extends ViewModelWidget<BaseFeedModel> {
  final int index;
  final bool showShare;

  const FeedFooter({required this.index, this.showShare = true});

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
          Visibility(
            visible: showShare,
            child: IconButton(
              icon: Icon(Icons.share_outlined),
              onPressed: () => viewModel.shareVideo(index),
            ),
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
    final channelName = viewModel.videos[index].channelInformation?.name ?? "";
    final title = viewModel.videos[index].title;
    final isBookmarked = viewModel.bookmarks.contains(viewModel.videos[index].id);
    return Container(
      padding: EdgeInsets.all(10.0),
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
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
          ),
          IconButton(
            onPressed: () => viewModel.addBookmarks(index),
            icon: Icon(
              isBookmarked ? Icons.bookmark : Icons.bookmark_border,
            ),
          ),
        ],
      ),
    );
  }
}
