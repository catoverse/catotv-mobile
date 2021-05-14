import 'package:feed/app/app.locator.dart';
import 'package:feed/core/services/profile_service/profile_service.dart';
import 'package:stacked/stacked.dart';

class ProfileViewModel extends ReactiveViewModel {
  final ProfileService _profileService = locator<ProfileService>();

  int length() => _profileService.totalWatchTime.value;

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_profileService];
}
