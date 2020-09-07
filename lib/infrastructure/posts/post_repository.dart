
import 'package:cato_feed/domain/core/failure.dart';
import 'package:cato_feed/domain/core/i_logger.dart';
import 'package:cato_feed/domain/posts/i_post_repository.dart';
import 'package:cato_feed/domain/posts/post.dart';
import 'package:cato_feed/infrastructure/core/db/moor/moor_database.dart';
import 'package:cato_feed/infrastructure/core/db/moor/extensions.dart';
import 'package:cato_feed/infrastructure/core/remote/network.dart';
import 'package:cato_feed/domain/core/result.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IPostRepository)
class PostRepository implements IPostRepository {

  final Network _network;
  final ILogger _logger;
  final MyDatabase db;

  PostRepository(this._network, this._logger, this.db);

  @override
  Future<Result<Failure, KtList<Post>>> getPosts(int skip, int limit, String topicId) async {
    var result = await _network.getPosts(skip, limit, topicIds: (topicId == null) ? null : [topicId]);

    if(result.isSuccess()) {
      db.postsDao.insertOrUpdateMany(result.data.map((p) => p.toMPost()).asList());
    }

    return result;
  }

  @override
  Future<bool> likePost(String postId) {
    // TODO: implement likePost
    throw UnimplementedError();
  }

  @override
  Future<bool> removeSavePost(String postId) {
    // TODO: implement removeSavePost
    throw UnimplementedError();
  }

  @override
  Future<bool> savePost(String postId, KtList<String> topicIds) {
    // TODO: implement savePost
    throw UnimplementedError();
  }

  @override
  Future<bool> unlikePost(String postId) {
    // TODO: implement unlikePost
    throw UnimplementedError();
  }

}