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
          ...viewModel.videos[index].topics
              .map(
                (topic) => InputChip(
                  label: Text(topic.name),
                  onPressed: () {},
                ),
              )
              .toList(),
          Visibility(
            visible: showShare,
            child: IconButton(
              icon: const Icon(Icons.share_outlined),
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
  final bool showBookmark;

  const FeedHeader({required this.index, this.showBookmark = true});

  @override
  Widget build(BuildContext context, BaseFeedModel viewModel) {
    final channelName = viewModel.videos[index].channelName ?? "";
    final title = viewModel.videos[index].title;
    final isBookmarked = viewModel.videos[index].bookmarked;
    return Container(
      padding: const EdgeInsets.all(10.0),
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
                  style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal),
                ),
                Text(
                  title,
                  maxLines: 3,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal),
                ),
              ],
            ),
          ),
          Visibility(
            visible: showBookmark,
            child: IconButton(
              onPressed: () => viewModel.addBookmarks(index),
              icon: isBookmarked
                  ? const Icon(Icons.bookmark)
                  : const Icon(Icons.bookmark_border),
            ),
          ),
        ],
      ),
    );
  }
}
