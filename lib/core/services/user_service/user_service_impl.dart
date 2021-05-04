import 'package:feed/app/app.logger.dart';
import 'package:feed/app/strings.dart';
import 'package:feed/core/models/user/user.dart';
import 'package:feed/core/services/user_service/user_service.dart';

class UserServiceImpl with AppStrings implements UserService {
  final _log = getLogger("UserService");

  @override
  User? currentUser;

  @override
  Future hasLoggedInUser() async {
    _log.v("Checking whether user logged in");
  }

  @override
  Future loginUser() async {
    _log.v("Performing User Login");
  }
}
