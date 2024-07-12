import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
  void connectionListener(Function(bool) isConnected);
  void connectionTimeoutListener({
    required Function onTimeout,
    required Function onConnect,
  });
}

@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  NetworkInfoImpl({required this.connectionChecker});

  final InternetConnectionChecker connectionChecker;

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;

  @override
  void connectionListener(Function(bool) isConnected) {
    connectionChecker.onStatusChange.listen((InternetConnectionStatus status) {
      switch (status) {
        case InternetConnectionStatus.connected:
          isConnected(true);
          break;
        case InternetConnectionStatus.disconnected:
          isConnected(false);
          break;
      }
    });
  }

  @override
  Future<void> connectionTimeoutListener(
      {required Function onTimeout, required Function onConnect}) async {
    const int maxRetry = 11;
    int retryCount = 0;

    while (retryCount < maxRetry) {
      if (retryCount >= maxRetry - 1) {
        onTimeout();
        break;
      }

      if (await connectionChecker.hasConnection) {
        onConnect();
        break;
      }
      retryCount++;
      // ignore: always_specify_types
      await Future.delayed(const Duration(seconds: 1));
    }
  }
}
