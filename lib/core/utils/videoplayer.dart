import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

class VideoPlayerUtils with ReactiveServiceMixin {
  RxValue<bool> _fullScreen = RxValue<bool>(false);
  RxValue<bool> _play = RxValue<bool>(true);

  bool get isFullScreen => _fullScreen.value;
  bool get isPlaying => _play.value;
  RxValue<bool> get showScreenStatus => _play;

  setFullScreen({required bool status}) {
    print("value changed from " +
        _fullScreen.value.toString() +
        " to " +
        status.toString());
    _fullScreen.value = status;
  }

  playPauseVideo() {
    _play.value = !_play.value;
  }

  setPlayValue({required bool status}) {
    _play.value = status;
  }

  VideoPlayerUtils() {
    listenToReactiveValues([_fullScreen, _play]);
  }
}
