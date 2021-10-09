import 'dart:async';

class VideoManagerService {
  static VideoManagerService? _instance;
  static StreamController<FeedRouteState>? _controller;

  static Future<VideoManagerService?> getInstance() async {
    _instance ??= VideoManagerService();

    _controller ??= StreamController.broadcast();

    return _instance;
  }

  void addStream(FeedRouteState state) {
    if (!_controller!.isClosed) {
      _controller!.add(state);
    }
  }

  Stream<FeedRouteState> getStream() {
    return _controller!.stream;
  }

  Future<void> closeStream() {
    return _controller!.close();
  }
}

enum FeedRouteState { onit, away }
