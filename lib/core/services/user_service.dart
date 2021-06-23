import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/core/constants/keys.dart';
import 'package:feed/core/models/app_models.dart';

import 'package:feed/core/services/hive_service/hive_service.dart';
import 'package:feed/core/services/key_storage_service.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:feed/remote/client.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';

class UserService {
  final _log = getLogger("User Service");
  final _keyStorageService = locator<KeyStorageService>();
  final _apiService = locator<APIService>();
  final _remoteClient = locator<RemoteClient>();
  final _hiveService = locator<HiveService>();
  final _authService = locator<FirebaseAuthenticationService>();

  User? _loggedInUser;

  /// Returns currently signed in [User]
  ///
  /// If there is no signed in user, return null
  User get currentUser => _loggedInUser!;

  /// Checks if there's user signed in
  ///
  /// Returns [true] if the user is signed on the device
  bool get hasLoggedInUser => _keyStorageService.get(LoginStatusKey) ?? false;

  Future<bool> loginWithGoogle() async {
    final authResult = await _authService.signInWithGoogle();

    if (authResult.hasError) {
      _log.e('Local google signin error: ${authResult.errorMessage}');
      return false;
    }

    var googleUser = authResult.user;
    var authToken = await googleUser!.getIdToken();

    var result = await _apiService.signIn(
        name: googleUser.displayName!,
        email: googleUser.email!,
        googleId: googleUser.uid,
        avatar: googleUser.photoURL!,
        accessToken: authToken);

    if (result is Failure) {
      _log.e('Gql Google signin error: $result');
      return false;
    }

    _log.i("User signed in successful");

    //TODO: Log custom event - user login

    await Future.wait([
      _hiveService.insertItem<User>(item: result, boxName: AuthUserBox),
      _keyStorageService.save<bool>(LoginStatusKey, true),
      syncUser(user: result),
    ]);

    return true;
  }

  /// Stores the loggedin user and updates
  /// the [authToken] for [RemoteClient]
  Future<bool> syncUser({User? user}) async {
    // if there's an user passed in
    if (user != null) {
      _log.i("syncing user: $user");
      _loggedInUser = user;
      _remoteClient.updateToken(newToken: user.token);
      return true;
    }

    //TODO: Log custom event - user login

    var hiveUser = await _hiveService.fetchItem<User>(boxName: AuthUserBox);

    if (hiveUser.isFailed) {
      _log.e("Failed to sync user: ${hiveUser.failure}");
      return false;
    }

    var authUser = hiveUser.success!;

    _loggedInUser = authUser;
    _remoteClient.updateToken(newToken: authUser.token);

    return true;
  }

  /// Checks if there's profile available for user
  ///
  /// Returns [true] if there's existing profile available
  Future<bool> isUserProfileExists() async {
    var result = await _apiService.getUserProfile(userId: currentUser.id);
    return !(result is Failure);
  }

  /// Creates profile for user with [selectedTopics]
  Future<bool> createProfile({required List<String> topicIds}) async {
    _log.i("creating profile for user with $topicIds");

    // If there's no login user, we can't create profile for him
    if (_loggedInUser == null) return false;

    var result = await _apiService.createUserProfile(
        userId: currentUser.id, name: currentUser.name, topicIds: topicIds);

    if (result is Failure) {
      _log.e("Failed to create profile: $result");
      return false;
    }

    await _hiveService.insertList<String>(
        items: topicIds, boxName: UserSelectedTopicsBox);

    return true;
  }
}
