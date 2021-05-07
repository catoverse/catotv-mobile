import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:feed/app/app.logger.dart';

import 'connectivity_service.dart';
import 'connectivity_status.dart';

class ConnectivityServiceImpl implements ConnectivityService {
  final _log = getLogger('ConnectivityServiceImpl');
  final _connectivityResultController = StreamController<ConnectivityStatus>();
  final _connectivity = Connectivity();

  late StreamSubscription<ConnectivityResult> _subscription;
  late ConnectivityResult _lastResult = ConnectivityResult.none;

  @override
  Stream<ConnectivityStatus> get connectivity$ =>
      _connectivityResultController.stream;

  ConnectivityServiceImpl() {
    // Subscribe to the connectivity Chanaged Steam
    _subscription =
        _connectivity.onConnectivityChanged.listen(_emitConnectivity);
  }

  // Returns whether you have an active internet connection
  @override
  Future<bool> get isConnected async {
    final result = await _connectivity.checkConnectivity();

    switch (result) {
      case ConnectivityResult.mobile:
      case ConnectivityResult.wifi:
        return true;
      case ConnectivityResult.none:
      default:
        return false;
    }
  }

  // To watch connectivity changes
  void _emitConnectivity(ConnectivityResult event) {
    if (event == _lastResult) return;

    _log.v('Connectivity status changed to $event');
    _connectivityResultController.add(_convertResult(event));
    _lastResult = event;
  }

  // Convert from the third part enum to our own enum
  ConnectivityStatus _convertResult(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.mobile:
        return ConnectivityStatus.Cellular;
      case ConnectivityResult.wifi:
        return ConnectivityStatus.WiFi;
      case ConnectivityResult.none:
        return ConnectivityStatus.Offline;
      default:
        return ConnectivityStatus.Offline;
    }
  }
}
