import 'package:feed/core/models/user/user.dart';

/// Interface to manage all things related to [User]
abstract class UserService {
  /// Returns the loggedin user
  ///
  /// If the user is not logged in, the currentUser is set to null
  User get currentUser;

  /// Checks if the user is logged in
  ///
  /// Returns [true] if the user is signed on the device
  bool hasLoggedInUser();

  /// Fires GoogleLogin
  Future loginWithGoogle();

  /// Stores the loggedin user to [currentUser]
  ///
  /// Also updates the [authToken] for [RemoteClient]
  Future populateCurrentUser({User? user});

  /// Returns [true] if there's existing profile available
  Future isUserProfileExists();

  /// Creates Profile for user
  Future createProfile({required List<String> topicIds});
}
