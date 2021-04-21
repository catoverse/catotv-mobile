import 'package:cato_feed/domain/core/failure.dart';
import 'package:cato_feed/domain/core/i_logger.dart';
import 'package:cato_feed/domain/posts/i_post_repository.dart';
import 'package:cato_feed/domain/posts/post.dart';
import 'package:cato_feed/infrastructure/core/db/moor/moor_database.dart';
import 'package:cato_feed/infrastructure/core/db/moor/extensions.dart';
import 'package:cato_feed/infrastructure/core/logger/log_events.dart';
import 'package:cato_feed/infrastructure/core/remote/network.dart';
import 'package:cato_feed/domain/core/result.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cato_feed/infrastructure/core/db/moor/extensions.dart';
import 'package:flutter/foundation.dart';

@LazySingleton(as: IPostRepository)
class PostRepository implements IPostRepository {
  final Network _network;
  final ILogger _logger;
  final MyDatabase db;
  final SharedPreferences pref;

  static const _USER_LIKED_POSTS_KEY = "user_liked_posts";
  static const _USER_SAVED_POSTS_KEY = "user_saved_posts";

  PostRepository(this._network, this._logger, this.db, this.pref);

  // @override
  // Future<Result<Failure, KtList<Post>>> getPosts(int skip, int limit, String topicId) async {
  //   var result; //= await _network.getPosts(skip, limit, topicIds: (topicId == null) ? null : [topicId]);
  //
  //   if(result.isSuccess()) {
  //     db.postsDao.insertOrUpdateMany(result.data.map((p) => p.toMPost()).asList());
  //   }
  //
  //   return result;
  // }

  @override
  Future<Result<Failure, Post>> getPostById(String postId) async {
    var post = await db.postsDao.getPostById(postId);
    if (post != null) {
      return Result.data(post.toPost());
    }

    var result = await _network.getVideoById(postId);
    if (result.hasFailed()) return Result.fail(result.failure);

    await db.postsDao.insertOrUpdate(result.data.toMPost());

    return Result.data(result.data);
  }

  @override
  Future<List<String>> getLikedPostsId() async {
    return pref.getStringList(_USER_LIKED_POSTS_KEY) ?? [];
  }

  Future<bool> _savePosts(List<String> ids, String key) async {
    return await pref.setStringList(key, ids);
  }

  @override
  Future<bool> likePost(String postId) async {
    _logger.logEvent(LogEvents.EVENT_POST_LIKED,
        params: LogEvents.getPostVariables(postId));
    var likedPosts = await getLikedPostsId();
    likedPosts.add(postId);
    return await _savePosts(likedPosts, _USER_LIKED_POSTS_KEY);
  }

  @override
  Future<bool> unlikePost(String postId) async {
    _logger.logEvent(LogEvents.EVENT_POST_UNLIKED,
        params: LogEvents.getPostVariables(postId));
    var likedPosts = await getLikedPostsId();
    likedPosts.remove(postId);
    return await _savePosts(likedPosts, _USER_LIKED_POSTS_KEY);
  }

  @override
  Future<List<Post>> getLikedPosts() async {
    var likedPosts = await getLikedPostsId();
    var posts = await db.postsDao.getPostsById(likedPosts);
    return posts.map((e) => e.toPost()).toList();
  }

  @override
  Future<bool> bookmarkPost(String postId) async {
    _logger.logEvent(LogEvents.EVENT_POST_SAVED,
        params: LogEvents.getPostVariables(postId));
    var savedPosts = await getBookmarkedPostsId();
    savedPosts.add(postId);
    return await _savePosts(savedPosts, _USER_SAVED_POSTS_KEY);
  }

  @override
  Future<bool> eventPostShared({
    @required String userId,
    @required int duration,
    @required String timestamp,
    @required String postId,
  }) {
    // TODO: implement eventPostShared
    throw UnimplementedError();
  }

  @override
  Future<bool> eventVideoCompleted({
    @required String userId,
    @required int duration,
    @required String timestamp,
    @required String postId,
  }) {
    // TODO: implement eventVideoCompleted
    throw UnimplementedError();
  }

  @override
  Future<bool> eventVideoPaused({
    @required String userId,
    @required int duration,
    @required String timestamp,
    @required String postId,
  }) {
    // TODO: implement eventVideoPaused
    throw UnimplementedError();
  }

  @override
  Future<bool> eventVideoPlayed({
    @required String userId,
    @required int duration,
    @required String timestamp,
    @required String postId,
  }) {
    // TODO: implement eventVideoPlayed
    throw UnimplementedError();
  }

  @override
  Future<bool> eventVideoSkipped({
    @required String userId,
    @required int duration,
    @required String timestamp,
    @required String postId,
  }) {
    // TODO: implement eventVideoSkipped
    throw UnimplementedError();
  }

  @override
  Future<List<Post>> getBookmarkedPosts() async {
    var savedPosts = await getBookmarkedPostsId();
    var posts = await db.postsDao.getPostsById(savedPosts);
    return posts.map((e) => e.toPost()).toList();
  }

  @override
  Future<List<String>> getBookmarkedPostsId() async {
    return pref.getStringList(_USER_SAVED_POSTS_KEY) ?? [];
  }

  @override
  Future<Result<Failure, KtList<Post>>> getRecommendedPosts(
      {@required String userId}) async {
    var result = await _network.getUserRecommendationVideos(userId);
    if (result.isSuccess()) {
      await db.postsDao
          .insertOrUpdateMany(result.data.map((e) => e.toMPost()).asList());
    }
    return result;
  }

  @override
  Future<Result<Failure, KtList<Post>>> getRecommendedPostsByTopic(
      {@required String userId, @required String topicId, @required int limit}) async {
    var result =
        await _network.getUserRecommendationVideosByTopic(userId, topicId, limit);
    if (result.isSuccess()) {
      await db.postsDao
          .insertOrUpdateMany(result.data.map((e) => e.toMPost()).asList());
    }
    return result;
  }


  @override
  Future<Result<Failure, KtList<Post>>> getPostsByTopic(
      {@required String topicId, @required int skip, @required int limit}) async {
    var result = await _network.getVideosByTopics([topicId], skip: skip, limit: limit);
    if (result.isSuccess()) {
      await db.postsDao
          .insertOrUpdateMany(result.data.map((e) => e.toMPost()).asList());
    }
    return result;
  }

  @override
  Future<bool> removePostBookmark(String postId) async {
    _logger.logEvent(LogEvents.EVENT_POST_UNSAVED,
        params: LogEvents.getPostVariables(postId));
    var savedPosts = await getBookmarkedPostsId();
    savedPosts.remove(postId);
    return await _savePosts(savedPosts, _USER_SAVED_POSTS_KEY);
  }
}
