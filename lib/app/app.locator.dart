// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../core/services/user_service/user_service.dart';
import '../core/services/user_service/user_service_impl.dart';
import 'injection.dart';

final locator = StackedLocator.instance;

Future setupLocator() async {
  final hiveInjection = await HiveInjection.getInstance();
  locator.registerSingleton(hiveInjection);

  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => SnackbarService());
  locator.registerLazySingleton<UserService>(() => UserServiceImpl());
}
