// import 'package:feed/core/models/result/failure.dart';
// import 'package:feed/core/models/result/result.dart';
import 'package:feed/core/models/user/user.dart';

abstract class UserService {
  User get currentUser;
  bool hasLoggedInUser();
  // Future loginWithEmailPassword(
  //     {required String name, required String email, required String password});
  Future loginWithGoogle();
  Future populateCurrentUser({User? user});
}
