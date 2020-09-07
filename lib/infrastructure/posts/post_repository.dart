
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

@LazySingleton(as: IPostRepository)
class PostRepository implements IPostRepository {

  final Network _network;
  final ILogger _logger;
  final MyDatabase db;
  final SharedPreferences pref;

  static const _USER_LIKED_POSTS_KEY = "user_liked_posts";
  static const _USER_SAVED_POSTS_KEY = "user_saved_posts";

  PostRepository(this._network, this._logger, this.db, this.pref);

  @override
  Future<Result<Failure, KtList<Post>>> getPosts(int skip, int limit, String topicId) async {
    var result = await _network.getPosts(skip, limit, topicIds: (topicId == null) ? null : [topicId]);

    if(result.isSuccess()) {
      db.postsDao.insertOrUpdateMany(result.data.map((p) => p.toMPost()).asList());
    }

    return result;
  }

  @override
  Future<List<String>> getLikedPostsId() async {
    return pref.getStringList(_USER_LIKED_POSTS_KEY) ?? List();
  }

  Future<bool> _savePosts(List<String> ids, String key) async {
    return await pref.setStringList(key, ids);
  }

  @override
  Future<List<String>> getSavedPostsId() async {
    return pref.getStringList(_USER_SAVED_POSTS_KEY) ?? List();
  }

  @override
  Future<bool> likePost(String postId) async {
    _logger.logEvent(LogEvents.POST_LIKED, params: LogEvents.getPostVariables(postId));
    var likedPosts = await getLikedPostsId();
    likedPosts.add(postId);
    return await _savePosts(likedPosts, _USER_LIKED_POSTS_KEY);
  }

  @override
  Future<bool> removeSavePost(String postId) async{
    _logger.logEvent(LogEvents.POST_UNSAVED, params: LogEvents.getPostVariables(postId));
    var savedPosts = await getSavedPostsId();
    savedPosts.remove(postId);
    return await _savePosts(savedPosts, _USER_SAVED_POSTS_KEY);
  }

  @override
  Future<bool> savePost(String postId, KtList<String> topicIds) async{
    _logger.logEvent(LogEvents.POST_SAVED, params: LogEvents.getPostVariables(postId));
    var savedPosts = await getSavedPostsId();
    savedPosts.add(postId);
    return await _savePosts(savedPosts, _USER_SAVED_POSTS_KEY);
  }

  @override
  Future<bool> unlikePost(String postId) async {
    _logger.logEvent(LogEvents.POST_UNLIKED, params: LogEvents.getPostVariables(postId));
    var likedPosts = await getLikedPostsId();
    likedPosts.remove(postId);
    return await _savePosts(likedPosts, _USER_LIKED_POSTS_KEY);
  }

}