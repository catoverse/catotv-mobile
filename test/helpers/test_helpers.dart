import 'package:feed/app/app.locator.dart';
import 'package:feed/core/enums/bottom_sheet.dart';
import 'package:feed/core/models/result/failure.dart';
import 'package:feed/core/models/result/result.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:feed/remote/connectivity/connectivity_service.dart';
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
  MockSpec<NavigationService>(returnNullOnMissingStub: true),
  MockSpec<BottomSheetService>(returnNullOnMissingStub: true),
  MockSpec<SnackbarService>(returnNullOnMissingStub: true),
  MockSpec<ConnectivityService>(returnNullOnMissingStub: true)
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
  when(service.hasLoggedInUser()).thenAnswer((_) => hasLoggedInUser);
  when(service.currentUser).thenReturn(currentUser ?? defaultUser);

  when(service.populateCurrentUser()).thenAnswer((realInvocation) {
    if (hasLoggedInUser) return Future.value(defaultUser);

    return Future.delayed(Duration(milliseconds: 100));
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

MockConnectivityService getAndRegisterConnectivityService() {
  _removeRegistrationIfExists<ConnectivityService>();
  final service = MockConnectivityService();
  locator.registerSingleton<ConnectivityService>(service);
  return service;
}

void registerServices() {
  getAndRegisterUserService();
  getAndRegisterAPIService();
  getAndRegisterNavigationService();
  getAndRegisterSnackbarService();
  getAndRegisterBottomSheetService();
  getAndRegisterConnectivityService();
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
