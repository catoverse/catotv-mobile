import 'package:feed/core/models/video/video.dart';

abstract class VideoFeedService {
  List<Video> videos = [];
  Future<bool> fetchVideos(String userID);
}
