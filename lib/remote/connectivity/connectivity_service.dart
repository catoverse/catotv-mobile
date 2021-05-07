import 'connectivity_status.dart';

abstract class ConnectivityService {
  Stream<ConnectivityStatus> get connectivity$;

  Future<bool> get isConnected;
}
