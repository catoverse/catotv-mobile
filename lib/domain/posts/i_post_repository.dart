import 'package:cato_feed/domain/core/failure.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'post.dart';
import 'package:cato_feed/domain/core/result.dart';

abstract class IPostRepository {
  Future<Result<Failure, KtList<Post>>> getRecommendedPosts(
      {@required String userId});

  Future<Result<Failure, KtList<Post>>> getRecommendedPostsByTopic(
      {@required String userId, @required String topicId, @required int limit});

  Future<Result<Failure, KtList<Post>>> getPostsByTopic(
      {@required String topicId, @required int skip, @required int limit});

  Future<Result<Failure, Post>> getPostById(String postId);

  // Future<Result<Failure, KtList<Post>>> getPosts(
  //     int skip, int limit, String topicId);

  Future<bool> likePost(String postId);

  Future<bool> unlikePost(String postId);

  Future<bool> bookmarkPost(String postId);

  Future<bool> removePostBookmark(String postId);

  Future<List<String>> getBookmarkedPostsId();

  Future<List<String>> getLikedPostsId();

  Future<List<Post>> getBookmarkedPosts();

  Future<List<Post>> getLikedPosts();

  Future<bool> eventVideoPlayed({
    @required String userId,
    @required int duration,
    @required String timestamp,
    @required String postId,
  });

  Future<bool> eventVideoPaused({
    @required String userId,
    @required int duration,
    @required String timestamp,
    @required String postId,
  });

  Future<bool> eventVideoSkipped({
    @required String userId,
    @required int duration,
    @required String timestamp,
    @required String postId,
  });

  Future<bool> eventVideoCompleted({
    @required String userId,
    @required int duration,
    @required String timestamp,
    @required String postId,
  });

  Future<bool> eventPostShared({
    @required String userId,
    @required int duration,
    @required String timestamp,
    @required String postId,
  });
}
