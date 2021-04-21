import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cato_feed/application/app_redirect/plugin/AppRedirectHelper.dart';
import 'package:device_apps/device_apps.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';

part 'installed_apps_bloc.freezed.dart';

part 'installed_apps_event.dart';

part 'installed_apps_state.dart';

@injectable
class InstalledAppsBloc extends Bloc<InstalledAppsEvent, InstalledAppsState> {
  AppRedirectHelper _helper;

  InstalledAppsBloc(this._helper) : super(InstalledAppsState.initial());

  @override
  Stream<InstalledAppsState> mapEventToState(
    InstalledAppsEvent event,
  ) async* {
    yield* event.map(
      initialize: (e) async* {
        var installedApps = await _helper.getAppListByOrder(null);
        yield state.copyWith(installedApps: KtList.from(installedApps));
      },
    );
  }
}
