import 'package:get/get.dart';

// import 'package:mobile/shared/services/notification_service.dart';
// import 'package:mobile/shared/utils/simple_logger.dart';

/// GetX-only Notification Mixin: clean, easy to use, and ready for GetxController.
///
/// Use this mixin in your GetxController for notification-related actions.
/// All methods are ready for GetX lifecycle and can be extended for your service.
///
/// Example usage:
/// ```dart
/// class LabController extends GetxController with GetNotificationMixin {
///   Future<void> notifyLab() async {
///     await showLabScheduleNotification(title: 'Lab', body: 'Lab starts soon!');
///   }
/// }
/// ```
mixin GetNotificationMixin on GetxController {
  // Uncomment and implement your notification service
  // NotificationService get _notificationService => NotificationService.instance;

  /// Show lab schedule notification (implement your logic)
  Future<void> showLabScheduleNotification({
    required String title,
    required String body,
    String? scheduleId,
    DateTime? scheduledTime,
  }) async {
    // await _notificationService.showLabScheduleNotification(...);
    // SimpleLogger.info('📅 Lab schedule notification sent: $title');
  }

  /// Show room booking notification (implement your logic)
  Future<void> showRoomBookingNotification({
    required String title,
    required String body,
    String? bookingId,
    DateTime? scheduledTime,
  }) async {
    // await _notificationService.showRoomBookingNotification(...);
    // SimpleLogger.info('🏠 Room booking notification sent: $title');
  }

  /// Schedule lab reminder notification (implement your logic)
  Future<void> scheduleLabReminder({
    required String labTitle,
    required DateTime labDateTime,
    required String scheduleId,
    Duration reminderBefore = const Duration(minutes: 30),
  }) async {
    final reminderTime = labDateTime.subtract(reminderBefore);
    if (reminderTime.isAfter(DateTime.now())) {
      await showLabScheduleNotification(
        title: 'Lab Reminder',
        body: 'Lab "$labTitle" starts in ${_formatDuration(reminderBefore)}',
        scheduleId: scheduleId,
        scheduledTime: reminderTime,
      );
      // SimpleLogger.info('⏰ Lab reminder scheduled for: $reminderTime');
    }
  }

  /// Schedule multiple reminders for lab session
  Future<void> scheduleLabReminders({
    required String labTitle,
    required DateTime labDateTime,
    required String scheduleId,
    List<Duration> reminderIntervals = const [
      Duration(hours: 1),
      Duration(minutes: 30),
      Duration(minutes: 10),
    ],
  }) async {
    for (final interval in reminderIntervals) {
      await scheduleLabReminder(
        labTitle: labTitle,
        labDateTime: labDateTime,
        scheduleId: scheduleId,
        reminderBefore: interval,
      );
    }
  }

  /// Cancel lab reminders (implement your logic)
  Future<void> cancelLabReminders(String scheduleId) async {
    // await _notificationService.cancelNotification(scheduleId.hashCode);
    // SimpleLogger.info('🚫 Cancelled lab reminders for: $scheduleId');
  }

  /// Subscribe to lab schedule notifications (implement your logic)
  Future<void> subscribeToLabNotifications() async {
    // await _notificationService.subscribeToTopic('lab_schedule');
    // SimpleLogger.info('📝 Subscribed to lab schedule notifications');
  }

  /// Unsubscribe from lab schedule notifications (implement your logic)
  Future<void> unsubscribeFromLabNotifications() async {
    // await _notificationService.unsubscribeFromTopic('lab_schedule');
    // SimpleLogger.info('📝 Unsubscribed from lab schedule notifications');
  }

  /// Subscribe to room booking notifications (implement your logic)
  Future<void> subscribeToRoomBookingNotifications() async {
    // await _notificationService.subscribeToTopic('room_booking');
    // SimpleLogger.info('📝 Subscribed to room booking notifications');
  }

  /// Format duration for human readable text
  String _formatDuration(Duration duration) {
    if (duration.inHours > 0) {
      return '${duration.inHours}h ${duration.inMinutes % 60}m';
    } else {
      return '${duration.inMinutes}m';
    }
  }

  /// Send immediate notification for lab schedule updates
  Future<void> notifyLabScheduleUpdate({
    required String title,
    required String message,
    String? scheduleId,
  }) async {
    await showLabScheduleNotification(
      title: title,
      body: message,
      scheduleId: scheduleId,
    );
  }

  /// Send immediate notification for room booking updates
  Future<void> notifyRoomBookingUpdate({
    required String title,
    required String message,
    String? bookingId,
  }) async {
    await showRoomBookingNotification(
      title: title,
      body: message,
      bookingId: bookingId,
    );
  }

  // /// Get FCM token for backend registration (implement your logic)
  // String get fcmToken => _notificationService.fcmToken;

  // /// Check if notifications are initialized (implement your logic)
  // bool get areNotificationsInitialized => _notificationService.isInitialized;
}
