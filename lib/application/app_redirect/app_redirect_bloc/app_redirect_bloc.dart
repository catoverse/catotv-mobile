import 'dart:async';
import 'package:cato_feed/application/app_redirect/plugin/AppRedirectHelper.dart';
import 'package:cato_feed/domain/core/failure.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'app_redirect_bloc.freezed.dart';

part 'app_redirect_event.dart';

part 'app_redirect_state.dart';

@injectable
class AppRedirectBloc extends Bloc<AppRedirectEvent, AppRedirectState> {
  final AppRedirectHelper _appRedirectHelper;

  AppRedirectBloc(this._appRedirectHelper) : super(AppRedirectState.initial());

  @override
  Stream<AppRedirectState> mapEventToState(
    AppRedirectEvent event,
  ) async* {
    yield* event.map(initialize: (e) async* {
      if (e.startStep != state.currentStep) {
        yield state.copyWith(currentStep: e.startStep);
      }
      // Calculate Steps
      var totalSteps = 3; // Start with 2 steps app select and timing

      var isBatteryPermissionGranted =
          await _appRedirectHelper.appBlocker.isBatteryOptimizationIgnored();

      var isAppUsagePermissionGranted =
          await _appRedirectHelper.appBlocker.isAppUsagePermissionGranted();

      var blockedPackages =
          await _appRedirectHelper.getBlockedPackages() ?? List();
      var selectedWeekDays =
          await _appRedirectHelper.appBlocker.getRestrictedWeekDays() ?? List();

      var time = await _appRedirectHelper.appBlocker.getRestrictionTime();
      var startTime = time['startTime'];
      var endTime = time['endTime'];

      if (startTime == "-1") startTime = null;
      if (endTime == "-1") endTime = null;

      yield state.copyWith(
        totalSteps: totalSteps,
        blockedPackages: blockedPackages,
        // already selected packages must be same
        startTime: startTime,
        endTime: endTime,
        selectedWeekDays: KtList.from(selectedWeekDays),
        failure: null,
        appUsagePermission: (isAppUsagePermissionGranted)
            ? PermissionState.GRANTED
            : PermissionState.NOT_ALLOWED,
        batteryPermission: (isBatteryPermissionGranted)
            ? PermissionState.GRANTED
            : PermissionState.NOT_ALLOWED,
      );

      // Populate data
    }, changeStep: (e) async* {
      yield state.copyWith(currentStep: e.currentStep);
    }, addOrRemoveWeekDay: (e) async* {
      var isSelected = state.isWeekDaySelected(e.weekDay);
      var weekDays = state.selectedWeekDays?.toMutableList() ?? mutableListOf();
      if (isSelected) {
        weekDays.remove(e.weekDay);
      } else {
        weekDays.add(e.weekDay);
      }
      yield state.copyWith(selectedWeekDays: weekDays);
      await _appRedirectHelper.appBlocker
          .setRestrictionWeekDays(weekDays.asList());
    }, updateTime: (e) async* {
      yield state.copyWith(startTime: e.startTime, endTime: e.endTime);
      await _appRedirectHelper.appBlocker
          .setRestrictionTime(e.startTime, e.endTime);
    }, checkPermissions: (e) async* {
      print("checkPermission");
      var isBatteryPermissionGranted =
          await _appRedirectHelper.appBlocker.isBatteryOptimizationIgnored();

      var isAppUsagePermissionGranted =
          await _appRedirectHelper.appBlocker.isAppUsagePermissionGranted();

      yield state.copyWith(
        appUsagePermission: (isAppUsagePermissionGranted)
            ? PermissionState.GRANTED
            : PermissionState.NOT_ALLOWED,
        batteryPermission: (isBatteryPermissionGranted)
            ? PermissionState.GRANTED
            : PermissionState.NOT_ALLOWED,
      );
    }, requestAppUsagePermission: (e) async* {
      _appRedirectHelper.appBlocker.openAppUsageSettings();
      yield state;
    }, requestBatteryPermission: (e) async* {
      _appRedirectHelper.appBlocker.openBatteryOptimizationSettings();
      yield state;
    }, startAppRedirect: (e) async* {
      await _appRedirectHelper.appBlocker.enableAppBlocker();
      yield state;
    });
  }
}
