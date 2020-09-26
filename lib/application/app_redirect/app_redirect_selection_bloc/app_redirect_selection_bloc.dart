import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cato_feed/application/app_redirect/plugin/AppRedirectHelper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'app_redirect_selection_event.dart';

part 'app_redirect_selection_state.dart';

part 'app_redirect_selection_bloc.freezed.dart';

@injectable
class AppRedirectSelectionBloc
    extends Bloc<AppRedirectSelectionEvent, AppRedirectSelectionState> {

  final AppRedirectHelper _helper;
  AppRedirectSelectionBloc(this._helper) : super(AppRedirectSelectionState.initial());

  @override
  Stream<AppRedirectSelectionState> mapEventToState(
    AppRedirectSelectionEvent event,
  ) async* {
    yield* event.map(
      updateSelectedPackages: (e) async* {
        yield state.copyWith(selectedPackages: KtList.from(e.packages));
      },
      selectOrRemovePackage: (e) async* {
        var isSelected = state.isAppSelected(e.package);
        var packages = state.selectedPackages?.toMutableList();
        if (isSelected) {
          packages?.remove(e.package);
        } else {
          packages?.add(e.package);
        }
        yield state.copyWith(selectedPackages: packages);
        await _helper.appBlocker.updateBlockedPackages(packages.asList());
      },
    );
  }
}
