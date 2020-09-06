import 'package:cato_feed/infrastructure/core/db/moor/moor_database.dart';
import 'package:moor/moor.dart';

part 'moor_dao.g.dart';

@UseDao(tables: [Users])
class UsersDao extends DatabaseAccessor<MyDatabase> with _$UsersDaoMixin {
  UsersDao(MyDatabase db) : super(db);

  Future<MUser> getUserByGoogleId(String googleId) {
    return (select(users)
          ..where((t) => t.googleId.equals(googleId))
          ..limit(1))
        .getSingle();
  }

  Future<int> insertOrUpdate(MUser user) {
    return into(users).insertOnConflictUpdate(user);
  }

  Future<int> remove(MUser user) {
    return (delete(users)..where((t) => t.googleId.equals(user.googleId))).go();
  }

  Future<int> removeByGoogleId(String googleId) {
    return (delete(users)..where((t) => t.googleId.equals(googleId))).go();
  }
}

@UseDao(tables: [Topics])
class TopicsDao extends DatabaseAccessor<MyDatabase> with _$TopicsDaoMixin {
  TopicsDao(MyDatabase db) : super(db);

  Future<MTopic> getTopicById(String id) {
    return (select(topics)..where((t) => t.id.equals(id))).getSingle();
  }

  Future<List<MTopic>> getAllTopics() {
    return select(topics).get();
  }

  Future<int> remove(String id) {
    return (delete(topics)..where((t) => t.id.equals(id))).go();
  }

  Future<int> removeByIds(List<String> ids) {
    return (delete(topics)..where((t) => t.id.isIn(ids))).go();
  }

  Future<int> removeAll() {
    return delete(topics).go();
  }

  Future<int> insertOrUpdate(MTopic topic) {
    return into(topics).insertOnConflictUpdate(topic);
  }

  Future<int> insertOrUpdateMany(List<MTopic> topicList) async {
    await batch((batch) {
      batch.insertAllOnConflictUpdate(topics, topicList);
    });
    return topicList.length;
  }
}

@UseDao(tables: [Posts])
class PostsDao extends DatabaseAccessor<MyDatabase> with _$PostsDaoMixin {
  PostsDao(MyDatabase db) : super(db);

  Future<MPost> getPostById(String id) {
    return (select(posts)..where((t) => t.id.equals(id))).getSingle();
  }

  Future<List<MPost>> getAllPosts() {
    return select(posts).get();
  }

  Future<int> insertOrUpdate(MPost post) {
    return into(posts).insertOnConflictUpdate(post);
  }

  Future<int> insertOrUpdateMany(List<MPost> postList) async {
    await batch((batch) {
      batch.insertAllOnConflictUpdate(posts, postList);
    });
    return postList.length;
  }

  Future<int> remove(String id) {
    return (delete(posts)..where((t) => t.id.equals(id))).go();
  }

  Future<int> removeByIds(List<String> ids) {
    return (delete(posts)..where((t) => t.id.isIn(ids))).go();
  }

  Future<int> removeAll() {
    return delete(posts).go();
  }
}
