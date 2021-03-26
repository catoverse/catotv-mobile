import 'package:auto_size_text/auto_size_text.dart';
import 'package:cato_feed/presentation/utils/assets/font_assets.dart';
import 'package:cato_feed/presentation/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class HomeFeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeFeedPage();
  }
}

class HomeFeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    makeStatusBarWhite();
    return PlatformScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(color: Color(0xFFC4C4C4),);
            },
            itemBuilder: (context, index) {
              return FeedPost();
            },
            itemCount: 5,
          ),
        ),
      ),
    );
  }
}

class FeedPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 16.0 / 9.0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8.0)
            ),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          height: 4,
          width: 50,
          decoration: BoxDecoration(
              color: Color(0xFFF05773),
              borderRadius: BorderRadius.all(Radius.circular(2.0))),
        ),
        SizedBox(
          height: 8,
        ),
        AutoSizeText(
          'DEEP WORK: Success in a distracted world',
          maxFontSize: 16.0,
          minFontSize: 12.0,
          maxLines: 1,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: FontAssets.Poppins,
            fontSize: 16,
            color: Color(0xFF082D42),
          ),
        ),
        AutoSizeText(
          'Create new values & improve skills',
          maxFontSize: 12.0,
          minFontSize: 10.0,
          maxLines: 2,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: FontAssets.Poppins,
            fontSize: 16,
            color: Color(0x80082D42),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0x47C4C4C4),
                  borderRadius: BorderRadius.circular(4.0)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                child: Text(
                  'Cal Newport',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: FontAssets.Poppins,
                    fontSize: 12,
                    color: Color(0xFF8F8F8F),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0x47C4C4C4),
                  borderRadius: BorderRadius.circular(4.0)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                child: Text(
                  'Productivity',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: FontAssets.Poppins,
                    fontSize: 12,
                    color: Color(0xFF8F8F8F),
                  ),
                ),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.share_outlined,
                  size: 24.0,
                  color: Color(0xFFC4C4C4),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
