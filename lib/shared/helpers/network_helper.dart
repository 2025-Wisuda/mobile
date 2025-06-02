import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkHelper {
  static final Connectivity _connectivity = Connectivity();

  /// Check if device has internet connection
  static Future<bool> hasInternetConnection() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    return connectivityResult.isNotEmpty &&
        !connectivityResult.contains(ConnectivityResult.none);
  }

  /// Stream to listen to connectivity changes
  static Stream<List<ConnectivityResult>> get connectivityStream =>
      _connectivity.onConnectivityChanged;

  /// Check if device is connected to WiFi or mobile data
  static Future<bool> isConnectedToWifiOrMobile() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    return connectivityResult.contains(ConnectivityResult.wifi) ||
        connectivityResult.contains(ConnectivityResult.mobile);
  }

  /// Check if device is connected to WiFi only
  static Future<bool> isConnectedToWifi() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    return connectivityResult.contains(ConnectivityResult.wifi);
  }

  /// Check if device is connected to mobile data only
  static Future<bool> isConnectedToMobile() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    return connectivityResult.contains(ConnectivityResult.mobile);
  }
}
