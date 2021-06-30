import 'package:flutter/material.dart';

mixin $FeedPlayerListView {
  Widget feedHeader(String title, String? channelName) {
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

  Widget feedFooter(String topicName) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InputChip(
            label: Text(topicName),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.share_outlined),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
