import 'dart:convert';
import 'package:flutter/foundation.dart';

import 'package:feed/core/services/youtube_service/youtube_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import 'data.dart';

void main() {
  late YoutubeExplode _youtubeExplode;
  late Client _client;

  setUpAll(() {
    _youtubeExplode = YoutubeExplode();
    _client = Client();
  });

  Future getExplodeStream(String youtubeVideoUrl) async {
    String videoID = YoutubeService.convertUrlToId(youtubeVideoUrl)!;

    try {
      var start = DateTime.now();

      var manifest =
          await _youtubeExplode.videos.streamsClient.getManifest(videoID);

      print(
          "It took Explode ${DateTime.now().difference(start).inSeconds} seconds to get the video");

      late Uri videoUri = manifest.muxed.first.url;

      debugPrint(videoUri.toString());

      return true;
    } catch (e) {
      return false;
    }
  }

  Future getApiStream(String youtubeVideoUrl) async {
    try {
      var start = DateTime.now();

      String apiUrl = "https://maadhav-ytdl.herokuapp.com/video_info.php?url=";

      var response = await _client.get(Uri.parse("$apiUrl$youtubeVideoUrl"));

      print(
          "It took API ${DateTime.now().difference(start).inSeconds} seconds to get the video");

      if (response.statusCode == 200) {
        var res = json.decode(response.body);
        print(res["links"][0]);
        return true;
      } else
        return false;
    } catch (e) {
      return false;
    }
  }

  group("Explode vs API comparison", () {
    test("API fetches faster than ", () async {
      final String youtubeUrl = "https://www.youtube.com/watch?v=5AxWC49ZMzs";

      await getExplodeStream(youtubeUrl);
      await getApiStream(youtubeUrl);
    });

    group("They both fail to fetch the video if the requests are more than 10",
        () {
      test("API Service fails to get all the videos in the list", () async {
        bool total = true;
        for (var item in FakeFeedData) {
          bool res = await getApiStream(item["video_url"]);
          total = total & res;
        }

        expect(total, isTrue);
      });

      test("Explode Service fails to get all the videos in the list", () async {
        bool total = true;
        for (var item in FakeFeedData) {
          bool res = await getExplodeStream(item["video_url"]);
          total = total & res;
        }

        expect(total, isTrue);
      });
    });
  });
}
