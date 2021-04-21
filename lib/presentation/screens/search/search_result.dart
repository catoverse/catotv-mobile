import 'package:cato_feed/domain/posts/post.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:flutter/material.dart';

import 'horizontal_video_tile.dart';

class SearchResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: _buildEmptySearchResult());
  }

  Widget _buildSearchResult(List<Post> posts) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${posts.length} Results found',
          maxLines: 2,
          softWrap: true,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: FontAssets.Poppins,
            fontSize: 12,
            color: Color(0xFF0C3C57),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return HorizontalVideoTile(index: index, post: posts[index],);
            },
            itemCount: posts.length,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 16,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildEmptySearchResult() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.search_rounded,
            color: Color(0xFFC4C4C4),
            size: 160,
          ),
          Text(
            'No Search Found',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: FontAssets.Poppins,
              fontSize: 12,
              color: Color(0xFF8F8F8F),
            ),
          ),
          SizedBox(height: 96,)
        ],
      ),
    );
  }
}