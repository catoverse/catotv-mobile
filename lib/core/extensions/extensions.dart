import 'package:feed/core/enums/user_events.dart';

extension UserEve on UserEvent {
  String get label {
    switch (this) {
      case UserEvent.login:
        return 'login';
      case UserEvent.logout:
        return 'logout';

      case UserEvent.skipped:
        return 'skipped';

      case UserEvent.completed:
        return 'completed';

      case UserEvent.like:
        return 'like';

      case UserEvent.share:
        return 'share';

      case UserEvent.bookmark:
        return 'bookmark';

      case UserEvent.sesssionStart:
        return 'session_start';

      case UserEvent.sessionEnd:
        return 'session_end';

      case UserEvent.view:
        return 'view';

      case UserEvent.interruption:
        return 'interruption';
    }
  }
}
