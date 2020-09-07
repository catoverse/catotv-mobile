import 'package:cato_feed/domain/core/failure.dart';
import 'package:kt_dart/collection.dart';
import 'post.dart';
import 'package:cato_feed/domain/core/result.dart';


abstract class IPostRepository {
  Future<Result<Failure, KtList<Post>>> getPosts(int skip, int limit, String topicId);
  Future<bool> likePost(String postId);
  Future<bool> unlikePost(String postId);
  Future<bool> savePost(String postId, KtList<String> topicIds);
  Future<bool> removeSavePost(String postId);
  Future<List<String>> getSavedPostsId();
  Future<List<String>> getLikedPostsId();
  Future<List<Post>> getSavedPosts();
  Future<List<Post>> getLikedPosts();
}