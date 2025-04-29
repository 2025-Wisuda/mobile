class BaseUrlUtil {
  static const String _baseUrl = 'https://192.168.100.7/api';
  static const String apiVersion = '$_baseUrl/v1';
  static const String _authUrl = '$apiVersion/auth';
  static const String loginUrl = '$_authUrl/login';
  static const String refreshTokenUrl = '$_authUrl/refresh-token';
}
