import 'package:feed/core/models/user/user.dart';

final User defaultUser = User(
    id: 'default_test_user',
    name: "Default User",
    avatar:
        "https://www.clipartkey.com/mpngs/m/152-1520367_user-profile-default-image-png-clipart-png-download.png",
    email: "default_user@cato.tv",
    invites: 0,
    token: "generatedToken");

const bottomSheetInput = <String, String>{
  "title": 'You need an account to continue',
  "description":
      'We’re currently in early access mode, you can’t enter unless you have an invite.',
  "mainButtonTitle": 'Continue with Google',
  "secondaryButtonTitle": 'Request Invite'
};
