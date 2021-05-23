import 'package:feed/core/enums/connectivity_status.dart';

abstract class ConnectivityService {
  Stream<ConnectivityStatus> get connectivity$;

  Future<bool> get isConnected;
}
