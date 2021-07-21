import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/explode_service.dart';
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
  MockSpec<ExplodeService>(returnNullOnMissingStub: true),
  // Stacked Services
  MockSpec<NavigationService>(returnNullOnMissingStub: true),
  MockSpec<BottomSheetService>(returnNullOnMissingStub: true),
  MockSpec<SnackbarService>(returnNullOnMissingStub: true),
])
MockUserService getAndRegisterUserService(
    {bool hasLoggedInUser = true,
    bool hasProfile = true,
    bool syncUser = true,
    bool loginError = false}) {
  _removeRegistrationIfExists<UserService>();
  final service = MockUserService();

  when(service.hasLoggedInUser).thenReturn(hasLoggedInUser);
  when(service.currentUser).thenReturn(defaultUser);
  when(service.syncUser())
      .thenAnswer((realInvocation) => Future.value(syncUser));

  when(service.loginWithGoogle())
      .thenAnswer((realInvocation) => Future.value(!loginError));

  when(service.isUserProfileExists())
      .thenAnswer((realInvocation) => Future.value(hasProfile));

  locator.registerSingleton<UserService>(service);
  return service;
}

MockAPIService getAndRegisterAPIService(
    {bool isUpdateRequired = false, bool isVideoCached = true}) {
  _removeRegistrationIfExists<APIService>();
  final service = MockAPIService();

  when(service.isUpdateRequired())
      .thenAnswer((realInvocation) => Future.value(isUpdateRequired));

  when(service.getVideoStream(SampleWatchId)).thenAnswer((realInvocation) =>
      Future.value(
          isVideoCached ? SampleStreamUrl : Failure.message("Link Not Found")));

  when(service.postVideoStream(SampleWatchId, SampleStreamUrl)).thenAnswer(
      (realInvocation) => Future.delayed(Duration(milliseconds: 500)));

  locator.registerSingleton<APIService>(service);
  return service;
}

MockNavigationService getAndRegisterNavigationService() {
  _removeRegistrationIfExists<NavigationService>();
  final service = MockNavigationService();
  locator.registerSingleton<NavigationService>(service);
  return service;
}

MockSnackbarService getAndRegisterSnackbarService() {
  _removeRegistrationIfExists<SnackbarService>();
  final service = MockSnackbarService();
  locator.registerSingleton<SnackbarService>(service);
  return service;
}

MockBottomSheetService getAndRegisterBottomSheetService() {
  _removeRegistrationIfExists<BottomSheetService>();
  final service = MockBottomSheetService();
  locator.registerSingleton<BottomSheetService>(service);
  return service;
}

MockExplodeService getAndRegisterExplodeService({bool hasError = false}) {
  _removeRegistrationIfExists<ExplodeService>();
  final service = MockExplodeService();

  when(service.getStreamUrl(SampleVideoUrl)).thenAnswer(
      (realInvocation) => Future.value(hasError ? "" : SampleStreamUrl));

  locator.registerSingleton<ExplodeService>(service);
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
  getAndRegisterConnectivityService();
  getAndRegisterExplodeService();
  getAndRegisterNavigationService();
  getAndRegisterBottomSheetService();
  getAndRegisterSnackbarService();
}

void unregisterServices() {
  locator.unregister<UserService>();
  locator.unregister<APIService>();
  locator.unregister<ConnectivityService>();
  locator.unregister<ExplodeService>();
  locator.unregister<NavigationService>();
  locator.unregister<BottomSheetService>();
  locator.unregister<SnackbarService>();
}

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
