import 'package:cato_feed/domain/auth/user.dart';
import 'package:cato_feed/domain/core/failure.dart';
import 'package:kt_dart/collection.dart';
import 'package:cato_feed/domain/core/result.dart';


abstract class IUserRepository {
  static const KEY_GOOGLE_ID = "google_id";
  static const KEY_EMAIL = "email";
  static const KEY_NAME = "name";
  static const KEY_PHOTO_URL = "avatar";
  static const KEY_ACCESS_TOKEN = "access_token";

  Future<Result<Failure, User>> getUser(KtMap<String, dynamic> details);
  Future<Result<Failure, User>> updateTopics(KtList<String> topicIds);
  Future<Result<Failure, bool>> signOut(String googleId);
}
