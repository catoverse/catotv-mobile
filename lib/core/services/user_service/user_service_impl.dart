import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/core/models/result/failure.dart';
import 'package:feed/core/models/user/user.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:feed/remote/client.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';

class UserServiceImpl implements UserService {
  final log = getLogger('UserService');

  final _apiService = locator<APIService>();
  final _remoteClient = locator<RemoteClient>();

  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  User? _currentUser;

  @override
  User get currentUser => _currentUser!;

  @override
  Future loginWithGoogle() async {
    final authResult = await _firebaseAuthenticationService.signInWithGoogle();

    if (authResult.hasError && authResult.user == null) {
      return Failure.message("Google Signin failed");
    }

    var googleUser = authResult.user;
    var authToken = await googleUser!.getIdToken();

    var result = await _apiService.performLogin(
        name: googleUser.displayName!,
        email: googleUser.email!,
        googleId: googleUser.uid,
        avatar: googleUser.photoURL!,
        accessToken: authToken);

    if (result is User) {
      await populateCurrentUser(user: result);
      _remoteClient.updateToken(newToken: currentUser.token);
      return currentUser;
    }

    return result;
  }

  @override
  Future populateCurrentUser({User? user}) async {
    if (user != null) {
      _currentUser = user;
      _remoteClient.updateToken(newToken: user.token);
      return;
    }

    var authUser = _firebaseAuthenticationService.currentUser;

    var authToken = await authUser!.getIdToken();

    _currentUser = User(
        avatar: authUser.photoURL!,
        email: authUser.email!,
        id: authUser.uid,
        name: authUser.displayName!,
        token: authToken);

    _remoteClient.updateToken(newToken: authToken);
  }

  @override
  bool hasLoggedInUser() => _firebaseAuthenticationService.hasUser;

  @override
  Future isUserProfileExists() async {
    var result = await _apiService.checkProfileExists(userID: currentUser.id);

    return result as bool;
  }

  Future createProfile({required List<String> topicIds}) async {
    var result = await _apiService.createUserProfile(
        userId: currentUser.id, name: currentUser.name, topicIds: topicIds);
    return result as bool;
  }
}
