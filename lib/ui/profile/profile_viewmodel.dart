import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:stacked/stacked.dart';

class ProfileViewModel extends BaseViewModel {
  final UserService _userService = locator<UserService>();

  User get currentUser => _userService.currentUser;
}
