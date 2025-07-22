class BaseUrl {
  static const String baseUrl = 'https://backend.2025wisuda.me';
  static const String wsUrl = 'wss://backend.2025wisuda.me/ws';
  static const String api = '$baseUrl/api';
  static const String apiVersion = '$api/v1';

  static const String wsDuty = '$wsUrl/duty-attendance/';
  static const String wsCourse = '$wsUrl/course-session-attendance/';
  static const String wsGuestVisit = '$wsUrl/guest-visit/';
}
