part of 'app_redirect_selection_bloc.dart';

@freezed
abstract class AppRedirectSelectionState with _$AppRedirectSelectionState {
  const factory AppRedirectSelectionState({KtList<String> selectedPackages}) =
      _AppRedirectSelectionState;
  factory AppRedirectSelectionState.initial() => AppRedirectSelectionState(selectedPackages: null);
}

extension AppRedirectSelectionStateX on AppRedirectSelectionState {
  bool isAppSelected(String packageName) {
    return selectedPackages?.contains(packageName) ?? false;
  }
}