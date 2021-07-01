import 'package:feed/app/app.router.dart';
import 'package:feed/ui/startup/startup_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../helpers/test_helpers.dart';

StartUpViewModel _getModel() => StartUpViewModel();
void main() {
  group('StartupViewmodel Test -', () {
    setUp(() => registerServices());
    tearDown(() => unregisterServices());

    group('onModelReady -', () {
      test('when model is ready, it should check for connection status',
          () async {
        final service = getAndRegisterConnectivityService();
        var model = _getModel();
        model.onModelReady();
        verify(service.isConnected);
      });

      test('when model is ready and if no connection it should return',
          () async {
        getAndRegisterConnectivityService(isConnected: false);
        final service = getAndRegisterUserService();
        var model = _getModel();
        await model.onModelReady();
        verifyNever(service.hasLoggedInUser);
      });

      test(
          'when model is ready with active connection it should runStartupLogic',
          () async {
        final service = getAndRegisterUserService();
        var model = _getModel();
        await model.onModelReady();
        verify(service.hasLoggedInUser);
      });
    });

    group("runStartupLogic - ", () {
      test('when there is an update, it should redirect to update view',
          () async {
        getAndRegisterAPIService(isUpdateRequired: true);
        final service = getAndRegisterNavigationService();
        var model = _getModel();
        await model.runStartupLogic();
        verify(service.replaceWith(Routes.updateView));
      });

      test(
          'when user logged in and profile available in hive, it should redirect to home',
          () async {
        final service = getAndRegisterNavigationService();
        var model = _getModel();
        await model.runStartupLogic();
        verify(service.replaceWith(Routes.feedView));
      });

      test(
          'when user logged in and profile is not available in hive, it should redirect to onboarding',
          () async {
        getAndRegisterUserService(syncUser: false);
        final service = getAndRegisterNavigationService();
        var model = _getModel();
        await model.runStartupLogic();
        verify(service.replaceWith(Routes.onboardingView));
      });

      test('when there is no user logged in, it should redirect to onboarding',
          () async {
        getAndRegisterUserService(hasLoggedInUser: false);
        final service = getAndRegisterNavigationService();
        var model = _getModel();
        await model.runStartupLogic();
        verify(service.replaceWith(Routes.onboardingView));
      });
    });
  });
}
