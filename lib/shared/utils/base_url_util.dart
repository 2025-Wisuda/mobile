class BaseUrlUtil {
  static const String _baseUrl = 'https://0c27-2404-c0-1870-00-286-4dfa.ngrok-free.app/api';
  static const String apiVersion = '$_baseUrl/v1';
  static const String _authUrl = '$apiVersion/auth';
  static const String loginUrl = '$_authUrl/login';
  static const String refreshTokenUrl = '$_authUrl/refresh-token';
  static const String userUrl = '$apiVersion/users';
  static const String changePasswordUrl = '$apiVersion/change-password';
  static const String _scheduleUrl = '$apiVersion/schedules';
  static const String labScheduleUrl = '$_scheduleUrl/lab';
}
