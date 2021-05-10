import 'package:feed/app/app.logger.dart';
import 'package:feed/app/strings.dart';
import 'package:feed/core/models/result/result.dart';
import 'package:feed/core/models/user/user.dart';
import 'package:feed/core/services/hive_service/hive_service.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:feed/app/app.locator.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:feed/remote/client.dart';

class UserServiceImpl implements UserService {
  final _hiveService = locator<HiveService>();
  final _apiService = locator<APIService>();
  final _remoteClient = locator<RemoteClient>();
  final _log = getLogger("UserService");
  final String userAuthBox = AppStrings.userAuthBox;

  @override
  User? currentUser;

  @override
  Future hasLoggedInUser() async {
    var isLoggedIn = await _hiveService.isBoxExists(boxName: userAuthBox);

    if (isLoggedIn.isSuccess()) {
      _populateCurrentUser();
      return isLoggedIn.success;
    }

    return isLoggedIn.failure;
  }

  @override
  Future loginUser() async {
    _log.v("Performing User Login");

    String email = "themightyking117@gmail.com";

    var result = await _apiService.performLogin(
        name: "Mohan",
        email: email,
        googleId: _generateGoogleId(email),
        avatar:
            "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png",
        accessToken: _generateToken(email));

    if (result is User) {
      await _populateCurrentUser(user: result);
      await _hiveService.insertItem<User>(item: result, boxName: userAuthBox);
      _remoteClient.updateToken(newToken: currentUser!.token);
      return currentUser;
    }

    return result;
  }

  Future _populateCurrentUser({User? user}) async {
    if (user != null) {
      currentUser = user;
      _remoteClient.updateToken(newToken: user.token);
      return;
    }

    Result result = await _hiveService.fetchItem<User>(boxName: userAuthBox);

    if (result.isSuccess() && result.success is User) {
      currentUser = result.success;
      _remoteClient.updateToken(newToken: currentUser!.token);
    }
  }

  String _generateToken(String email) {
    return email + "token1212121";
  }

  String _generateGoogleId(String email) {
    return email.split("@")[0] + "google";
  }
}
