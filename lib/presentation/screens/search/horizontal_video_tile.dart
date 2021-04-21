import 'package:auto_size_text/auto_size_text.dart';
import 'package:cato_feed/domain/posts/post.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:cato_feed/presentation/utils/assets/image_assets.dart';
import 'package:cato_feed/presentation/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_webview/core/youtube_player.dart';

class HorizontalVideoTile extends StatelessWidget {
  final Post post;
  final int index;

  const HorizontalVideoTile({@required this.post, @required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Container(
                  height: 96,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(getYoutubeThumbnail(
                          YoutubePlayer.convertUrlToId(post.videoUrl) ?? '')),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              // Divider(
              //   height: 8,
              //   color: Color(0xFFF05773),
              //   thickness: 2,
              // ),
            ],
          ),
          flex: 1,
        ),
        Flexible(
          child: Container(
            height: 96,
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  post.title,
                  maxLines: 2,
                  maxFontSize: 16,
                  minFontSize: 10,
                  softWrap: true,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: FontAssets.Poppins,
                    fontSize: 14,
                    color: Color(0xFF082D42),
                  ),
                ),
                if (post.description != null && post.description.isNotEmpty)
                  AutoSizeText(
                    post.description,
                    maxLines: 3,
                    maxFontSize: 12,
                    minFontSize: 10,
                    softWrap: true,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: FontAssets.Poppins,
                      fontSize: 14,
                      color: Color(0x80000000),
                    ),
                  ),
                Expanded(child: Container()),
                if (false)
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.favorite,
                                size: 16,
                              ),
                            ),
                            TextSpan(text: ' '),
                            TextSpan(
                              text: '123',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: FontAssets.Poppins,
                                fontSize: 12,
                                color: Color(0xFF000000),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.chat_rounded,
                                size: 16,
                              ),
                            ),
                            TextSpan(text: ' '),
                            TextSpan(
                              text: '123',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: FontAssets.Poppins,
                                fontSize: 12,
                                color: Color(0xFF000000),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
              ],
            ),
          ),
          flex: 2,
        ),
      ],
    );
  }
}
