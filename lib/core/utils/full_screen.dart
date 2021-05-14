import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

class FullScreenHelper with ReactiveServiceMixin {
  RxValue<bool> _fullScreen = RxValue<bool>(false);

  bool get isFullScreen => _fullScreen.value;

  setFullScreen({required bool status}) {
    print("value changed from " +
        _fullScreen.value.toString() +
        " to " +
        status.toString());
    _fullScreen.value = status;
  }

  FullScreenHelper() {
    listenToReactiveValues([_fullScreen]);
  }
}
