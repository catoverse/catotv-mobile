import 'package:feed/core/models/app_models.dart';

/// Interface to manage all things related to [Video]
abstract class FeedService {
  /// Stores the feed fetched from API
  List<Video> videos = [];

  /// Fetches videos from API
  ///
  /// If data returned from [GraphQL], stores it in [videos]
  Future<List<Video>> fetchVideos({int skip = 0, int limit = 10});

  /// Fetches video with given [id]
  Future<Video> fetchVideoById(String id);
}
