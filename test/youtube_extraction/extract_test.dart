import 'dart:convert';
import 'package:flutter/foundation.dart';

import 'package:feed/core/services/video_service.dart';
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
    String videoID = VideoService.convertUrlToId(youtubeVideoUrl)!;

    try {
      var start = DateTime.now();

      var manifest =
          await _youtubeExplode.videos.streamsClient.getManifest(videoID);

      debugPrint(
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

      debugPrint(
          "It took API ${DateTime.now().difference(start).inSeconds} seconds to get the video");

      if (response.statusCode == 200) {
        var res = json.decode(response.body);
        debugPrint(res["links"][0]);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  group("Explode vs API comparison", () {
    test("API fetches faster than ", () async {
      const String youtubeUrl = "https://www.youtube.com/watch?v=5AxWC49ZMzs";

      await getExplodeStream(youtubeUrl);
      await getApiStream(youtubeUrl);
    });

    group("They both fail to fetch the video if the requests are more than 10",
        () {
      test("API Service fails to get all the videos in the list", () async {
        bool total = true;
        for (var item in fakeFeedData) {
          bool res = await getApiStream(item["video_url"]);
          total = total & res;
        }

        expect(total, isTrue);
      });

      test("Explode Service fails to get all the videos in the list", () async {
        bool total = true;
        for (var item in fakeFeedData) {
          bool res = await getExplodeStream(item["video_url"]);
          total = total & res;
        }

        expect(total, isTrue);
      });
    });

    group("loading time test", () {
      test("only first request is takes more time to fetch", () async {
        String firstUrl = "https://youtu.be/Fpoa8siZYk0";
        // String secondUrl = "https://youtu.be/Fpoa8siZYk0";
        await getExplodeStream(firstUrl);
        await getExplodeStream(firstUrl);
        await getExplodeStream(firstUrl);
        await getExplodeStream(firstUrl);
      });

      test("First video takes more time to fetch", () async {
        String firstUrl = "https://youtu.be/Fpoa8siZYk0";
        // String secondUrl = "https://youtu.be/Fpoa8siZYk0";
        await getExplodeStream(firstUrl);
        await getExplodeStream(firstUrl);
        await getExplodeStream(firstUrl);
        await getExplodeStream(firstUrl);
      });
    });
  });
}
