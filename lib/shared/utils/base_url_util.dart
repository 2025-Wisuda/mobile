class BaseUrlUtil {
  static const String _baseUrl = 'http://192.168.209.127:8002/api';
  // static const String _baseUrl = 'http://10.4.4.172:8001/api';
  static const String apiVersion = '$_baseUrl/v1';
  static const String _authUrl = '$apiVersion/auth';
  static const String loginUrl = '$_authUrl/login';
  static const String refreshTokenUrl = '$_authUrl/refresh-token';
  static const String userUrl = '$apiVersion/users';
  static const String changePasswordUrl = '$apiVersion/change-password';
  static const String _scheduleUrl = '$apiVersion/schedules';
  static const String labScheduleUrl = '$_scheduleUrl/lab';
  static const String dutyScheduleUrl = '$_scheduleUrl/duty';
  static const String courseUrl = '$apiVersion/courses';
  static const String courseSessionUrl = '$apiVersion/courses/sessions';
}
