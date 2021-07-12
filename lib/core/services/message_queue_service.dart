import 'package:feed/app/app.locator.dart';
import 'package:feed/core/enums/user_events.dart';
import 'package:feed/core/services/user_service.dart';
import 'package:feed/remote/api/api_service.dart';

class MessageQueueService {
  final _apiService = locator<APIService>();
  final _userService = locator<UserService>();

  logUserEvent(
    UserEvent event, {
    String videoId = "",
    String timestamp = '',
    String description = '',
    int videoDuration = 0,
    int sessionDuration = 0,
    int durationWatched = 0,
  }) async {
    await _apiService.logUserEventToMessageQueue(
        _userService.currentUser.id,
        videoId,
        timestamp,
        description,
        videoDuration,
        sessionDuration,
        durationWatched,
        event);
  }
}
