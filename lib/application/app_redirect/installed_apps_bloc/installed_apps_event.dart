part of 'installed_apps_bloc.dart';

@freezed
abstract class InstalledAppsEvent with _$InstalledAppsEvent {
  const factory InstalledAppsEvent.initialize() = _Initialize;
}
