import 'package:feed/app/app.locator.dart';
import 'package:feed/core/models/result/failure.dart';
import 'package:feed/core/models/userprofile/profilemodels.dart';
import 'package:feed/core/services/hive_service/hive_service.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

const String UserProfileBox = "USER_PROFILE";

class ProfileService with ReactiveServiceMixin {
  final HiveService _hiveService = locator<HiveService>();
  RxValue<int> totalWatchTime = RxValue<int>(0);

  ProfileService() {
    listenToReactiveValues([totalWatchTime]);
  }

  Future init() async {
    var res = await _hiveService.fetchItem(boxName: UserProfileBox);

    if (res is Failure) {
      var watchTime = WatchTime(
          dateTime: DateTime.now(), minutesWatched: totalWatchTime.value);

      await _hiveService.insertItem(item: watchTime, boxName: UserProfileBox);
    }

    print(res);

    totalWatchTime.value = res.success!.minutesWatched;
  }

  Future updateWatchTime(Duration duration) async {
    totalWatchTime.value += duration.inMinutes;

    var watchTime = WatchTime(
        dateTime: DateTime.now(), minutesWatched: totalWatchTime.value);

    await _hiveService.insertItem(item: watchTime, boxName: UserProfileBox);
  }

  Future updateUserProfile() async {
    /// 1. Update watchTime
    /// 2. Add the currentVideo to the history
    /// 3. Record the date
  }
}
