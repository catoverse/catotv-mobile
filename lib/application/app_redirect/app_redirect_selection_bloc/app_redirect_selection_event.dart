part of 'app_redirect_selection_bloc.dart';

@freezed
abstract class AppRedirectSelectionEvent with _$AppRedirectSelectionEvent {
  const factory AppRedirectSelectionEvent.updateSelectedPackages(List<String> packages) = _UpdateSelectedPackages;
  const factory AppRedirectSelectionEvent.selectOrRemovePackage(String package) = _SelectOrRemovePackage;
}
