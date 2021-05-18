import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/user/user.dart';
import 'package:feed/core/services/profile_service/profile_service.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:stacked/stacked.dart';

class ProfileViewModel extends ReactiveViewModel {
  final UserService _userService = locator<UserService>();
  final ProfileService _profileService = locator<ProfileService>();

  int length() => _profileService.totalWatchTime.value;

  User get currentUser => _userService.currentUser;

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_profileService];
}
