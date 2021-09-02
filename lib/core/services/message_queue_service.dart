import 'package:feed/app/app.locator.dart';
import 'package:feed/app/app.logger.dart';
import 'package:feed/core/constants/keys.dart';
import 'package:feed/core/enums/user_events.dart';
import 'package:feed/core/models/app_models.dart';
import 'package:feed/core/services/hive_service/hive_service.dart';
import 'package:feed/core/services/user_service.dart';
import 'package:feed/remote/api/api_service.dart';
import 'package:intl/intl.dart';

class MessageQueueService {
  final _apiService = locator<APIService>();
  final _userService = locator<UserService>();
  final _hiveService = locator<HiveService>();
  final _log = getLogger("MessageQueueService");

  static const int kBufferThreshold = 10;

  logUserEvent(
    UserEvent event, {
    String videoId = "",
    String description = "",
    int videoDuration = 0,
    int sessionDuration = 0,
    int durationWatched = 0,
  }) async {
    /// Working
    /// 1. Add event to the local database
    /// 2. Once they reach a current threshold
    ///    a. remove them from Hive
    ///    b. dump all the logs to MessageQueue

    var eventLog = MqEventLog(
        userId: _userService.currentUser.id,
        videoId: videoId,
        timestamp: DateFormat("y-MM-d h:m:s").format(DateTime.now()).toString(),
        description: description,
        videoDuration: videoDuration,
        sessionDuration: sessionDuration,
        durationWatched: durationWatched,
        event: event.toString().split('.').last);

    var logs = await _hiveService.fetchList<MqEventLog>(boxName: kMqEventBox);

    if (logs.isFailed || logs.success!.length < kBufferThreshold) {
      _log.i("Logging ${eventLog.event} to buffer");
      return await _hiveService.insertItem<MqEventLog>(
          item: eventLog, boxName: kMqEventBox);
    }

    if (logs.success!.length >= kBufferThreshold) {
      _log.i("Sending logs ${logs.success?.length} to MessageQueue");

      await Future.wait([
        _apiService.logUserEventToMessageQueue(logs.success!),
        _hiveService.removeBox(boxName: kMqEventBox),
        _hiveService.insertItem<MqEventLog>(
            item: eventLog, boxName: kMqEventBox)
      ]);
    }
  }
}
