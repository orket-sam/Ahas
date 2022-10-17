import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

enum NetworkStatus { online, offline }

class NetworkService {
  StreamController<NetworkStatus> networkStatusController = StreamController();
  NetworkService() {
    Connectivity().onConnectivityChanged.listen((status) {
      networkStatusController.add(_getNetworkStatus(status));
    });
  }

  NetworkStatus _getNetworkStatus(ConnectivityResult status) {
    return status == ConnectivityResult.mobile ||
            status == ConnectivityResult.wifi
        ? NetworkStatus.online
        : NetworkStatus.offline;
  }
}
