import 'package:feed/core/services/user_service.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/mock_data.dart';
import '../helpers/test_helpers.dart';

UserService _getService() => UserService();

void main() {
  group('UserService Test-', () {
    setUp(() => registerServices());
    tearDown(() => unregisterServices());

    group("createProfile Test", () {
      test("when there's no user logged in, the profile should not be created",
          () async {
        getAndRegisterAPIService();
        final service = _getService();
        var res = await service.createProfile(topicIds: []);
        expect(res, false);
      });

      test("when there's no topic ids, the profile should not be created",
          () async {
        final service = _getService();
        service.syncUser(user: defaultUser);
        var res = await service.createProfile(topicIds: []);
        expect(res, false);
      });

      test("when there's any server error, the profile should not be created",
          () async {
        getAndRegisterAPIService(createProfileError: true);
        final service = _getService();
        service.syncUser(user: defaultUser);
        var res = await service.createProfile(topicIds: ["topic1", "topic2"]);
        expect(res, false);
      });
    });
  });
}
