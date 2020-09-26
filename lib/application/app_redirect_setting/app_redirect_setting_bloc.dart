import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cato_feed/application/app_redirect/plugin/AppRedirectHelper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'app_redirect_setting_event.dart';

part 'app_redirect_setting_state.dart';

part 'app_redirect_setting_bloc.freezed.dart';

@injectable
class AppRedirectSettingBloc
    extends Bloc<AppRedirectSettingEvent, AppRedirectSettingState> {
  final AppRedirectHelper _helper;

  AppRedirectSettingBloc(this._helper)
      : super(AppRedirectSettingState.initial());

  @override
  Stream<AppRedirectSettingState> mapEventToState(
    AppRedirectSettingEvent event,
  ) async* {
    yield* event.map(
      initialize: (e) async* {
        var isEnabled = await _helper.appBlocker.isEnabled();
        yield state.copyWith(isEnabled: isEnabled);
      },
      toggleAppRedirect: (e) async* {
        var isEnabled = state.isEnabled;
        yield state.copyWith(isEnabled: !isEnabled);
        if(isEnabled) {
          await _helper.appBlocker.disableAppBlocker();
        } else {
          await _helper.appBlocker.enableAppBlocker();
        }
      },
    );
  }
}
