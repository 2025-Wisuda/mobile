class AppRoute {
  static const String root = '/';
  static const String splash = '/splash';
  static const String login = '/auth/login';
  static const String changePassword = '/auth/change-password';
  static const String home = '/home';
  static const String profile = '/users/me';
  static const String updateProfile = '/users/me/update';
  static const String aboutUs = '/about-us';
  static const String labSchedule = '/lab-schedule';
  static const String searchLabSchedule = '/lab-schedule/search';
  static const String dutySchedule = '/duty-schedule';
  static const String myAttendanceRecords =
      '/duty-schedule/my-attendance-records';
  static const String listAttendanceRecords =
      '/duty-schedule/list-attendance-records';
  static const String dutyAttendanceStatistics =
      '/duty-schedule/duty-attendance-statistics';
  static const String manualOverrideAttendance =
      '/duty-schedule/manual-override-attendance';
  static const String validateOtp = '/duty-schedule/validate-otp';
  static const String faceRecognition = '/duty-schedule/face-recognition';
  static const String realTimeFaceRecognition = '/face-recognition/real-time';
  static const String course = '/course/search';
  static const String createCourse = '/course/create';
  static const String updateCourse = '/course/update';
  static const String detailCourse = '/course/detail';
  static const String enrollCourse = '/course/enroll';
  static const String myCourses = '/course/me';
  static const String detailCourseSession = '/course/session/detail';
  static const String createCourseSession = '/course/session/create';
  static const String updateCourseSession = '/course/session/update';
  static const String courseSessionAttendanceList =
      '/course/session/attendance/list';
  static const String detailCourseSessionAttendance =
      '/course/session/attendance/detail';
  static const String manualOverrideCourseSessionAttendance =
      '/course/session/attendance/manual-override';
  static const String myCourseSessionAttendance =
      '/course/session/attendance/me';
  static const String roomBooking = '/room-booking';
  static const String createRoomBooking = '/room-booking/create';
  static const String updateRoomBooking = '/update-room-booking';
  static const String bookingConfirmationCountdown =
      '/booking-confirmation-countdown';
  static const String historyRoomBooking = '/room-booking/history';
  static const String detailRoomBooking = '/room-booking/detail';
  static const String guestVisit = '/guest-visit';
  static const String createGuestVisit = '/guest-visit/create';
  static const String detailGuestVisit = '/guest-visit/detail';
  static const String updateGuestVisit = '/guest-visit/update';
  static const String notificationList = '/notifications';
}
