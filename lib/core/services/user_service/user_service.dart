// import 'package:feed/core/models/result/failure.dart';
// import 'package:feed/core/models/result/result.dart';
import 'package:feed/core/models/user/user.dart';

abstract class UserService {
  User? currentUser;
  Future hasLoggedInUser();
  Future loginUser();
}
