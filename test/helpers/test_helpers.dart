import 'package:feed/app/app.locator.dart';
import 'package:feed/core/enums/bottom_sheet.dart';
import 'package:feed/core/models/result/failure.dart';
import 'package:feed/core/models/result/result.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/hive_service/hive_service.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:feed/remote/client.dart';
import 'package:feed/remote/connectivity/connectivity_service.dart';
import 'package:mockito/annotations.dart';
import 'package:feed/core/exceptions/api_exception.dart';
import 'package:feed/core/services/user_service.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';
import 'mock_data.dart';
import 'test_helpers.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<UserService>(returnNullOnMissingStub: true),
  MockSpec<APIService>(returnNullOnMissingStub: true),
  MockSpec<NavigationService>(returnNullOnMissingStub: true),
  MockSpec<BottomSheetService>(returnNullOnMissingStub: true),
  MockSpec<SnackbarService>(returnNullOnMissingStub: true),
  MockSpec<ConnectivityService>(returnNullOnMissingStub: true),
  MockSpec<SharedPreferences>(returnNullOnMissingStub: true),
  MockSpec<RemoteClient>(returnNullOnMissingStub: true),
  MockSpec<HiveService>(returnNullOnMissingStub: true),
  MockSpec<FirebaseAuthenticationService>(returnNullOnMissingStub: true),
])

/// For testing UserService
MockUserService getAndRegisterUserService({
  bool hasLoggedInUser = false,
  bool profileExists = true,
  bool failLogin = false,
  User? currentUser,
}) {
  _removeRegistrationIfExists<UserService>();
  final service = MockUserService();
  when(service.hasLoggedInUser).thenAnswer((_) => hasLoggedInUser);
  when(service.currentUser).thenReturn(currentUser ?? defaultUser);

  when(service.syncUser()).thenAnswer((realInvocation) {
    return Future.value(hasLoggedInUser);
  });

  when(service.loginWithGoogle()).thenAnswer((realInvocation) => failLogin
      ? Future.value(Failure.message("Server error"))
      : Future.value(defaultUser));

  when(service.isUserProfileExists())
      .thenAnswer((realInvocation) => Future.value(profileExists));

  locator.registerSingleton<UserService>(service);
  return service;
}

MockNavigationService getAndRegisterNavigationService() {
  _removeRegistrationIfExists<NavigationService>();
  final service = MockNavigationService();
  locator.registerSingleton<NavigationService>(service);
  return service;
}

MockSharedPreferences getAndRegisterSharedPrefsService() {
  _removeRegistrationIfExists<SharedPreferences>();
  final service = MockSharedPreferences();
  locator.registerSingleton<SharedPreferences>(service);
  return service;
}

MockSnackbarService getAndRegisterSnackbarService() {
  _removeRegistrationIfExists<SnackbarService>();
  final service = MockSnackbarService();
  locator.registerSingleton<SnackbarService>(service);
  return service;
}

MockBottomSheetService getAndRegisterBottomSheetService(
    {bool confirmed = true,
    ThreeButtonResponseData? responseData = ThreeButtonResponseData.Primary}) {
  _removeRegistrationIfExists<BottomSheetService>();
  final service = MockBottomSheetService();

  when(service.showCustomSheet(
    variant: anyNamed("variant"),
    title: anyNamed("title"),
    description: anyNamed("description"),
    mainButtonTitle: anyNamed("mainButtonTitle"),
    secondaryButtonTitle: anyNamed("secondaryButtonTitle"),
  )).thenAnswer((realInvocation) => Future.value(
      SheetResponse(confirmed: confirmed, responseData: responseData)));

  locator.registerSingleton<BottomSheetService>(service);
  return service;
}

MockAPIService getAndRegisterAPIService(
    {bool hasInternet = true,
    bool isUpdateRequired = false,
    bool createProfileError = false}) {
  _removeRegistrationIfExists<APIService>();
  final service = MockAPIService();

  when(service.checkUpdateRequired()).thenAnswer((realInvocation) {
    if (!hasInternet)
      return Future.value(Result.failed(Failure.error(NoConnectivityError())));

    return Future.value(isUpdateRequired);
  });

  when(service.createUserProfile(
      name: defaultUser.name,
      userId: defaultUser.id,
      topicIds: [
        "topic1",
        "topic2"
      ])).thenAnswer((realInvocation) => Future.value(
      createProfileError ? Failure.message("failed to create profile") : true));

  when(service.createUserProfile(
          name: defaultUser.name, userId: defaultUser.id, topicIds: []))
      .thenAnswer((realInvocation) =>
          Future.value(Failure.message("Topic IDs should not be empty")));

  when(service.createUserProfile(name: null, userId: null, topicIds: []))
      .thenAnswer((realInvocation) => Future.value(Failure.message(
          "You must pass name and userId. Topic IDs should not be null")));

  locator.registerSingleton<APIService>(service);

  return service;
}

MockConnectivityService getAndRegisterConnectivityService() {
  _removeRegistrationIfExists<ConnectivityService>();
  final service = MockConnectivityService();
  locator.registerSingleton<ConnectivityService>(service);
  return service;
}

MockHiveService getAndRegisterHiveService() {
  _removeRegistrationIfExists<HiveService>();
  final service = MockHiveService();
  locator.registerSingleton<HiveService>(service);
  return service;
}

MockRemoteClient getAndRegisterRemoteClient() {
  _removeRegistrationIfExists<RemoteClient>();
  final service = MockRemoteClient();
  locator.registerSingleton<RemoteClient>(service);
  return service;
}

MockFirebaseAuthenticationService getAndRegisterFirebaseAuthService() {
  _removeRegistrationIfExists<FirebaseAuthenticationService>();
  final service = MockFirebaseAuthenticationService();
  locator.registerSingleton<FirebaseAuthenticationService>(service);
  return service;
}

void registerServices() {
  getAndRegisterUserService();
  getAndRegisterAPIService();
  getAndRegisterNavigationService();
  getAndRegisterSnackbarService();
  getAndRegisterBottomSheetService();
  getAndRegisterConnectivityService();
  getAndRegisterSharedPrefsService();
  getAndRegisterHiveService();
  getAndRegisterRemoteClient();
  getAndRegisterFirebaseAuthService();
}

void unregisterServices() {
  locator.unregister<UserService>();
  locator.unregister<APIService>();
  locator.unregister<NavigationService>();
  locator.unregister<BottomSheetService>();
  locator.unregister<SnackbarService>();
  locator.unregister<ConnectivityService>();
  locator.unregister<SharedPreferences>();
  locator.unregister<RemoteClient>();
  locator.unregister<HiveService>();
  locator.unregister<FirebaseAuthenticationService>();
}

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
