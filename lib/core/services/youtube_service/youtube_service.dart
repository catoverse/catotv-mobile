import 'dart:convert';

import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/core/constants/keys.dart';
import 'package:feed/core/services/hive_service/hive_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';

class YoutubeService {
  final _log = getLogger("Youtube Utils");
  final _client = locator<Client>();
  final _hiveService = locator<HiveService>();

  Future<String> getStream(String youtubeVideoUrl) async {
    var videoId = convertUrlToId(youtubeVideoUrl)!;
    var isItemCached = await _hiveService.fetchItem<String>(boxName: videoId);

    if (isItemCached.isFailed) return _getUrlFromAPI(youtubeVideoUrl);

    var epoch = isItemCached.success!.split("expire=")[1].substring(0, 10);
    var currentEpoch = DateTime.now().microsecondsSinceEpoch / 1000000;

    if (currentEpoch > double.parse(epoch))
      return _getUrlFromAPI(youtubeVideoUrl);

    return isItemCached.success!;
  }

  Future<String> _getUrlFromAPI(String url) async {
    try {
      String apiUrl = env[VideoApiEnvKey]!;

      var response = await _client.get(Uri.parse("$apiUrl$url"));
      var videoId = convertUrlToId(url)!;

      if (response.statusCode == 200) {
        var res = _parseResponse(response.body);
        await _hiveService.insertItem<String>(item: res, boxName: videoId);
        return res;
      } else
        _log.e("Error: ${response.body}");

      return response.body;
    } catch (e) {
      _log.e(e);
      return e.toString();
    }
  }

  String _parseResponse(String body) {
    var res = json.decode(body);

    _log.i("Here's the response: $res");

    return res["links"][0] as String;
  }

  static String? convertUrlToId(String url, {bool trimWhitespaces = true}) {
    if (!url.contains("http") && (url.length == 11)) return url;
    if (trimWhitespaces) url = url.trim();

    for (var exp in [
      RegExp(
          r"^https:\/\/(?:www\.|m\.)?youtube\.com\/watch\?v=([_\-a-zA-Z0-9]{11}).*$"),
      RegExp(
          r"^https:\/\/(?:www\.|m\.)?youtube(?:-nocookie)?\.com\/embed\/([_\-a-zA-Z0-9]{11}).*$"),
      RegExp(r"^https:\/\/youtu\.be\/([_\-a-zA-Z0-9]{11}).*$")
    ]) {
      Match? match = exp.firstMatch(url);
      if (match != null && match.groupCount >= 1) return match.group(1);
    }

    return null;
  }

  static String getThumbnail(String youtubeUrl) {
    String videoId = convertUrlToId(youtubeUrl) ?? "";

    return "https://img.youtube.com/vi/$videoId/hqdefault.jpg";
  }
}
