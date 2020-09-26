part of 'installed_apps_bloc.dart';

@freezed
abstract class InstalledAppsState with _$InstalledAppsState {
  const factory InstalledAppsState({KtList<Application> installedApps}) = _InstalledAppsState;
  factory InstalledAppsState.initial() => InstalledAppsState(installedApps: null);
}
