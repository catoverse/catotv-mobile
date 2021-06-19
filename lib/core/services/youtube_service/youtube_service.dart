import 'dart:convert';

import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/core/constants/strings.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';

class YoutubeService {
  final _log = getLogger("Youtube Utils");
  final _client = locator<Client>();

  Future<String> getStream(String youtubeVideoUrl) async {
    try {
      String apiUrl = env[AppStrings.ytApi]!;

      var response = await _client.get(Uri.parse("$apiUrl$youtubeVideoUrl"));

      if (response.statusCode == 200)
        return _parseResponse(response.body);
      else
        _log.e("Error: ${response.body}");
      return "Error";
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
