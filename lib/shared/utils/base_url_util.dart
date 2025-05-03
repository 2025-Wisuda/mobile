class BaseUrlUtil {
  static const String _baseUrl = 'http://192.168.38.127:8000/api';
  static const String apiVersion = '$_baseUrl/v1';
  static const String _authUrl = '$apiVersion/auth';
  static const String loginUrl = '$_authUrl/login';
  static const String refreshTokenUrl = '$_authUrl/refresh-token';
  static const String userUrl = '$apiVersion/users';
  static const String changePasswordUrl = '$apiVersion/change-password';
}
