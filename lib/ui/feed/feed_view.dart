import 'package:feed/ui/global/screen.dart';
import 'package:flutter/material.dart';

import 'feed_viewmodel.dart';

class FeedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenBuilder<FeedViewModel>(
        viewModel: FeedViewModel(),
        builder: (context, uiHelpers, model) => Scaffold(
              body: ListView(
                children: model.videos
                    .map((e) => GestureDetector(
                          onTap: () => model.playVideo(e.video_url),
                          child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(vertical: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  model.getThumbnail(e.video_url),
                                  alignment: Alignment.centerLeft,
                                  height: uiHelpers.blockSizeVertical! * 34,
                                  width: double.infinity,
                                  fit: BoxFit.fitWidth,
                                  repeat: ImageRepeat.noRepeat,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 10.0),
                                            child: Text(
                                              e.title,
                                              style: TextStyle(fontSize: 14.0),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 5.0),
                                            padding: EdgeInsets.all(4.0),
                                            decoration: BoxDecoration(
                                                color: Colors.black12),
                                            child: Text(
                                              e.topic,
                                              style: TextStyle(fontSize: 12.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                      IconButton(
                                          icon: Icon(Icons.bookmark_outline),
                                          onPressed: () {})
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ));
  }
}
