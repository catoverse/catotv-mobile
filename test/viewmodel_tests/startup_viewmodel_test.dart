import 'package:feed/app/app.router.dart';
import 'package:feed/ui/startup/startup_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../helpers/test_helpers.dart';

StartUpViewModel _getModel() => StartUpViewModel();

void main() {
  group('StartupViewmodelTest -', () {
    setUp(() => registerServices());
    tearDown(() => unregisterServices());

    group('runStartupLogic -', () {
      test('When there is an update required, should navigate to update view',
          () async {
        getAndRegisterAPIService(isUpdateRequired: true);
        final navigationService = getAndRegisterNavigationService();
        final model = _getModel();
        await model.runStartupLogic();
        verify(navigationService.replaceWith(Routes.updateView));
      });

      test('When we have no logged in user, should navigate to onboarding view',
          () async {
        final navigationService = getAndRegisterNavigationService();
        final model = _getModel();
        await model.runStartupLogic();

        verify(navigationService.replaceWith(Routes.onboardingView));
      });

      test('When we have a logged in user, should navigate to home view',
          () async {
        getAndRegisterUserService(hasLoggedInUser: true);
        final navigationService = getAndRegisterNavigationService();
        final model = _getModel();
        await model.runStartupLogic();

        verify(navigationService.replaceWith(Routes.homeView));
      });

      test(
          'When hasLoggedInUser is true, should get currentUser from userService',
          () async {
        final userService = getAndRegisterUserService(hasLoggedInUser: true);
        final model = _getModel();
        await model.runStartupLogic();

        verify(userService.currentUser);
      });
    });
  });
}
