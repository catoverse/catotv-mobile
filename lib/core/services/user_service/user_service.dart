import 'package:feed/core/models/user/user.dart';

abstract class UserService {
  User get currentUser;
  bool hasLoggedInUser();
  Future loginWithGoogle();
  Future populateCurrentUser({User? user});
}
