import 'package:feed/core/models/video/video.dart';

abstract class FeedService {
  List<Video> videos = [];
  Future<bool> fetchVideos(String userID);
}
