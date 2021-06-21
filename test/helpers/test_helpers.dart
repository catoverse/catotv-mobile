import 'package:feed/app/app.locator.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:feed/remote/connectivity/connectivity_service.dart';
import 'package:mockito/annotations.dart';
import 'package:feed/core/services/user_service.dart';
import 'package:mockito/mockito.dart';
import 'package:stacked_services/stacked_services.dart';
import 'mock_data.dart';
import 'test_helpers.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<UserService>(returnNullOnMissingStub: true),
  MockSpec<APIService>(returnNullOnMissingStub: true),
  MockSpec<ConnectivityService>(returnNullOnMissingStub: true),
  MockSpec<NavigationService>(returnNullOnMissingStub: true),
])
MockUserService getAndRegisterUserService(
    {bool hasLoggedInUser = true, bool hasProfile = true}) {
  _removeRegistrationIfExists<UserService>();
  final service = MockUserService();

  when(service.hasLoggedInUser).thenReturn(hasLoggedInUser);
  when(service.currentUser).thenReturn(defaultUser);
  when(service.syncUser())
      .thenAnswer((realInvocation) => Future.value(hasProfile));

  locator.registerSingleton<UserService>(service);
  return service;
}

MockAPIService getAndRegisterAPIService({bool isUpdateRequired = false}) {
  _removeRegistrationIfExists<APIService>();
  final service = MockAPIService();

  when(service.checkUpdateRequired())
      .thenAnswer((realInvocation) => Future.value(isUpdateRequired));

  locator.registerSingleton<APIService>(service);
  return service;
}

MockNavigationService getAndRegisterNavigationService() {
  _removeRegistrationIfExists<NavigationService>();
  final service = MockNavigationService();
  locator.registerSingleton<NavigationService>(service);
  return service;
}

MockConnectivityService getAndRegisterConnectivityService(
    {bool isConnected = true}) {
  _removeRegistrationIfExists<ConnectivityService>();
  final service = MockConnectivityService();

  when(service.isConnected)
      .thenAnswer((realInvocation) => (Future.value(isConnected)));

  locator.registerSingleton<ConnectivityService>(service);
  return service;
}

void registerServices() {
  getAndRegisterUserService();
  getAndRegisterAPIService();
  getAndRegisterNavigationService();
  getAndRegisterConnectivityService();
}

void unregisterServices() {
  locator.unregister<UserService>();
  locator.unregister<APIService>();
  locator.unregister<ConnectivityService>();
  locator.unregister<NavigationService>();
}

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
