import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/result/failure.dart';
import 'package:feed/core/models/result/result.dart';
import 'package:feed/core/models/user/user.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:mockito/annotations.dart';
import 'package:feed/core/exceptions/api_exception.dart';
import 'package:feed/core/services/user_service/user_service.dart';
import 'package:mockito/mockito.dart';
import 'package:stacked_services/stacked_services.dart';
import 'mock_data.dart';
import 'test_helpers.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<UserService>(returnNullOnMissingStub: true),
  MockSpec<APIService>(returnNullOnMissingStub: true),
  MockSpec<NavigationService>(returnNullOnMissingStub: true)
])

/// For testing UserService
MockUserService getAndRegisterUserService({
  bool hasLoggedInUser = false,
  User? currentUser,
}) {
  _removeRegistrationIfExists<UserService>();
  final service = MockUserService();
  when(service.hasLoggedInUser()).thenAnswer((_) => hasLoggedInUser);
  when(service.currentUser).thenReturn(currentUser ?? defaultUser);

  when(service.populateCurrentUser()).thenAnswer((realInvocation) {
    if (hasLoggedInUser) return Future.value(defaultUser);

    return Future.delayed(Duration(milliseconds: 100));
  });

  locator.registerSingleton<UserService>(service);
  return service;
}

MockNavigationService getAndRegisterNavigationService() {
  _removeRegistrationIfExists<NavigationService>();
  final service = MockNavigationService();
  locator.registerSingleton<NavigationService>(service);
  return service;
}

MockAPIService getAndRegisterAPIService(
    {bool hasInternet = true, bool isUpdateRequired = false}) {
  _removeRegistrationIfExists<APIService>();
  final service = MockAPIService();

  when(service.checkUpdateRequired()).thenAnswer((realInvocation) {
    if (!hasInternet)
      return Future.value(Result.failed(Failure.error(NoConnectivityError())));

    return Future.value(isUpdateRequired);
  });

  locator.registerSingleton<APIService>(service);

  return service;
}

void registerServices() {
  getAndRegisterUserService();
  getAndRegisterAPIService();
  getAndRegisterNavigationService();
}

void unregisterServices() {
  locator.unregister<UserService>();
  locator.unregister<NavigationService>();
  locator.unregister<APIService>();
}

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
