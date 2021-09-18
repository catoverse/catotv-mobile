import 'package:flick_video_player/flick_video_player.dart';

class FeedPlayerController {
  final List<FlickManager> _flickManagers = [];
  // FlickManager? _activeManager;
  final bool _isMute = false;

  init(FlickManager flickManager) {
    _flickManagers.add(flickManager);
    if (_isMute) {
      flickManager.flickControlManager?.mute();
    } else {
      flickManager.flickControlManager?.unmute();
    }
  }

  // remove(FlickManager flickManager) {
  //   if (_activeManager == flickManager) {
  //     _activeManager = null;
  //   }
  //   flickManager.dispose();
  //   _flickManagers.remove(flickManager);
  // }

  // pause() {
  //   _activeManager?.flickControlManager?.pause();
  // }

  // play([FlickManager? flickManager]) {
  //   if (flickManager != null) {
  //     _activeManager?.flickControlManager?.pause();
  //     _activeManager = flickManager;
  //   }

  //   if (_isMute) {
  //     _activeManager?.flickControlManager?.mute();
  //   } else {
  //     _activeManager?.flickControlManager?.unmute();
  //   }

  //   _activeManager?.flickControlManager?.play();
  // }

  // toggleMute() {
  //   _activeManager?.flickControlManager?.toggleMute();
  //   _isMute = _activeManager?.flickControlManager?.isMute ?? false;
  //   if (_isMute) {
  //     _flickManagers.forEach((manager) => manager.flickControlManager?.mute());
  //   } else {
  //     _flickManagers
  //         .forEach((manager) => manager.flickControlManager?.unmute());
  //   }
  // }

  dispose() {
    for (var flickManager in _flickManagers) {
      flickManager.dispose();
    }
    _flickManagers.clear();
  }
}
