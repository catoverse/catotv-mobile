import 'package:cato_feed/domain/core/failure.dart';
import 'user.dart';
import 'auth_failure.dart';
import 'package:cato_feed/domain/core/result.dart';

abstract class IAuthFacade {
  Future<bool> isSignedIn();
  Future<Result<Failure, User>> getSignedInUser();
  Future<Result<AuthFailure, bool>> signInWithGoogle();
  Future<Result<Failure, bool>> signOut();
}
