import 'package:cato_feed/domain/auth/user.dart';
import 'package:cato_feed/domain/auth/user_profile.dart';
import 'package:cato_feed/domain/core/failure.dart';
import 'package:cato_feed/domain/core/result.dart';
import 'package:flutter/foundation.dart';


abstract class IUserRepository {
  static const KEY_GOOGLE_ID = "google_id";
  static const KEY_EMAIL = "email";
  static const KEY_NAME = "name";
  static const KEY_PHOTO_URL = "avatar";
  static const KEY_ACCESS_TOKEN = "access_token";

  Future<Result<Failure, User>> googleLogin(Map<String, dynamic> data);
  Future<Result<Failure, User>> appleLogin();
  Future<Result<Failure, User>> sessionLogin({@required String name, @required String inviteCode});
  Future<Result<Failure, String>> refreshAuthToken();
  Future<Result<Failure, String>> generateInvite({@required String email});
  //Future<Result<Failure, User>> getUser(KtMap<String, dynamic> details);
  //Future<Result<Failure, User>> updateTopics(User user, KtList<String> topicIds);
  Future<Result<Failure, bool>> signOut();
  //Future<List<String>> getSelectedTopics(User user);

  Future<Result<Failure, UserProfile>> getUserProfile({@required String userId});
  Future<Result<Failure, UserProfile>> createUserProfile({@required String name,
    @required String userId,
    @required List<String> selectedTopics});
  Future<Result<Failure, UserProfile>> updateUserProfile({@required String name,
    @required String userId,
    @required List<String> selectedTopics});

  Future<bool> eventUserLoggedIn();
  Future<bool> eventUserLoggedOut();
  Future<bool> eventSession();
  Future<bool> eventTimeSpentPerDay();
}
