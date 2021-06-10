import 'package:flutter/foundation.dart';

import 'package:feed/core/services/youtube_service/youtube_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

void main() {
  late YoutubeExplode _youtubeExplode;

  setUpAll(() {
    _youtubeExplode = YoutubeExplode();
  });

  Future _getStream(String youtubeVideoUrl) async {
    String videoID = YoutubeService.convertUrlToId(youtubeVideoUrl)!;
    // var quality = VideoQuality.medium480;

    try {
      var manifest =
          await _youtubeExplode.videos.streamsClient.getManifest(videoID);

      late Uri videoUri = manifest.muxed.first.url;

      debugPrint(videoUri.toString());

      return videoUri.toString();
    } catch (e) {
      return e.toString();
    }
  }

  group("How long does it take to get stream url", () {
    test("few videos will take less tStringhan a second to fetch url",
        () async {
      final String youtubeUrl = "https://www.youtube.com/watch?v=5AxWC49ZMzs";
      await _getStream(youtubeUrl);
    });
  });
}
