import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:feed/app/app.locator.dart';
import 'package:feed/core/enums/connectivity_status.dart';

import 'connectivity_service.dart';

class ConnectivityServiceImpl implements ConnectivityService {
  StreamController<ConnectivityStatus> connectionStatusController =
      StreamController<ConnectivityStatus>();
  final _connectivity = locator<Connectivity>();

  @override
  Stream<ConnectivityStatus> get connectivity =>
      connectionStatusController.stream;

  ConnectivityServiceImpl() {
    connectionStatusController.add(ConnectivityStatus.init);
    _connectivity.onConnectivityChanged.listen((ConnectivityResult result) =>
        connectionStatusController.add(_getStatusFromResult(result)));
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

  // Convert from the third part enum to our own enum
  ConnectivityStatus _getStatusFromResult(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.mobile:
        return ConnectivityStatus.cellular;
      case ConnectivityResult.wifi:
        return ConnectivityStatus.wifi;
      case ConnectivityResult.none:
        return ConnectivityStatus.offline;
      default:
        return ConnectivityStatus.offline;
    }
  }
}
