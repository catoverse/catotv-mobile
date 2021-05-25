import 'package:feed/core/models/video/video.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DynamicService {
  Future<String> shareVideo(Video video) async {
    String videoID = YoutubePlayer.convertUrlToId(video.video_url)!;

    Uri fallbackURL = Uri.parse("https://www.cato.tv/video?id=$videoID");

    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: 'https://catoverse.page.link',
      link: Uri.parse('https://app.cato.tv/video?id=$videoID'),
      androidParameters: AndroidParameters(
          packageName: 'cato.tv.feed', fallbackUrl: fallbackURL),
      iosParameters: IosParameters(
          bundleId: 'cato.tv.feed',
          minimumVersion: '1.0.1',
          appStoreId: '123456789',
          fallbackUrl: fallbackURL),
    );

    final Uri dynamicUrl = await parameters.buildUrl();

    return dynamicUrl.toString();
  }
}
