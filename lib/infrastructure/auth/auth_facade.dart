import 'package:cato_feed/domain/auth/auth_failure.dart';
import 'package:cato_feed/domain/auth/i_auth_facade.dart';
import 'package:cato_feed/domain/auth/i_user_repository.dart';
import 'package:cato_feed/domain/auth/user.dart';
import 'package:cato_feed/domain/core/errors.dart';
import 'package:cato_feed/domain/core/failure.dart';
import 'package:cato_feed/domain/core/i_logger.dart';
import 'package:cato_feed/domain/core/result.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final GoogleSignIn _googleSignIn;
  final IUserRepository _userRepository;
  final ILogger logger;

  AuthFacade(this._googleSignIn, this._userRepository, this.logger);

  /// Returns whether or not user is signed-in
  @override
  Future<bool> isSignedIn() async {
    // First signInSilently if signedIn from previous session.
    await _googleSignIn.signInSilently(suppressErrors: true);
    return _googleSignIn.isSignedIn();
  }

  @override
  Future<Result<Failure, User>> getSignedInUser() async {
    try {
      var googleUser = _googleSignIn.currentUser;

      if (googleUser == null) {
        return Result.fail(Failure.error(NotAuthenticatedError()));
      }

      final googleAuthentication = await googleUser.authentication;
      KtMap<String, dynamic> details = KtMap.from({
        IUserRepository.KEY_GOOGLE_ID: googleUser.id,
        IUserRepository.KEY_EMAIL: googleUser.email,
        IUserRepository.KEY_PHOTO_URL: googleUser.photoUrl,
        IUserRepository.KEY_NAME: googleUser.displayName,
        IUserRepository.KEY_ACCESS_TOKEN: googleAuthentication.accessToken
      });

      return await _userRepository.getUser(details);
    } on Exception catch (error) {
      logger.logException(error);
      return Result.fail(Failure.error(ServerError()));
    }
  }

  @override
  Future<Result<AuthFailure, bool>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return Result.fail(AuthFailure.cancelledByUser());
      }

      return Result.data(true);

    } on Exception catch (error) {
      logger.logException(error);
      return Result.fail(AuthFailure.serverError());
    }
  }

  @override
  Future<Result<Failure, bool>> signOut() async {
    try {
      var googleId = _googleSignIn.currentUser.id;
      await _googleSignIn.signOut();
      return await _userRepository.signOut(googleId);
    } on Exception catch (error) {
      logger.logException(error);
      return Result.fail(Failure.message('Error while signing out.'));
    }
  }
}
