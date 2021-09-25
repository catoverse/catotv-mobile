import 'dart:async';

import 'dart:ui';

class LifeCycleService {
  static LifeCycleService? _instance;
  static StreamController<AppLifecycleState>? _controller;

  static Future<LifeCycleService?> getInstance() async {
    _instance ??= LifeCycleService();

    _controller ??= StreamController.broadcast();

    return _instance;
  }

  void addStream(AppLifecycleState state) {
    if (!_controller!.isClosed) {
      _controller!.add(state);
    }
  }

  Stream<AppLifecycleState> getStream() {
    return _controller!.stream;
  }

  Future<void> closeStream() {
    return _controller!.close();
  }
}
