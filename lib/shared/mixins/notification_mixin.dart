// import 'package:get/get.dart';
// import 'package:mobile/shared/services/notification_service.dart';
// import 'package:mobile/shared/utils/simple_logger.dart';

// /// Mixin for controllers that need notification functionality
// mixin NotificationMixin on GetxController {
//   NotificationService get _notificationService => NotificationService.instance;

//   /// Show lab schedule notification
//   Future<void> showLabScheduleNotification({
//     required String title,
//     required String body,
//     String? scheduleId,
//     DateTime? scheduledTime,
//   }) async {
//     try {
//       await _notificationService.showLabScheduleNotification(
//         title: title,
//         body: body,
//         scheduleId: scheduleId,
//         scheduledTime: scheduledTime,
//       );
//       SimpleLogger.info('📅 Lab schedule notification sent: $title');
//     } catch (e) {
//       SimpleLogger.error('❌ Failed to send lab schedule notification',
//           error: e);
//     }
//   }

//   /// Show room booking notification
//   Future<void> showRoomBookingNotification({
//     required String title,
//     required String body,
//     String? bookingId,
//     DateTime? scheduledTime,
//   }) async {
//     try {
//       await _notificationService.showRoomBookingNotification(
//         title: title,
//         body: body,
//         bookingId: bookingId,
//         scheduledTime: scheduledTime,
//       );
//       SimpleLogger.info('🏠 Room booking notification sent: $title');
//     } catch (e) {
//       SimpleLogger.error('❌ Failed to send room booking notification',
//           error: e);
//     }
//   }

//   /// Schedule lab reminder notification
//   Future<void> scheduleLabReminder({
//     required String labTitle,
//     required DateTime labDateTime,
//     required String scheduleId,
//     Duration reminderBefore = const Duration(minutes: 30),
//   }) async {
//     final reminderTime = labDateTime.subtract(reminderBefore);

//     // Only schedule if reminder time is in the future
//     if (reminderTime.isAfter(DateTime.now())) {
//       await showLabScheduleNotification(
//         title: 'Lab Reminder',
//         body: 'Lab "$labTitle" starts in ${_formatDuration(reminderBefore)}',
//         scheduleId: scheduleId,
//         scheduledTime: reminderTime,
//       );
//       SimpleLogger.info('⏰ Lab reminder scheduled for: $reminderTime');
//     }
//   }

//   /// Schedule multiple reminders for lab session
//   Future<void> scheduleLabReminders({
//     required String labTitle,
//     required DateTime labDateTime,
//     required String scheduleId,
//     List<Duration> reminderIntervals = const [
//       Duration(hours: 1),
//       Duration(minutes: 30),
//       Duration(minutes: 10),
//     ],
//   }) async {
//     for (final interval in reminderIntervals) {
//       await scheduleLabReminder(
//         labTitle: labTitle,
//         labDateTime: labDateTime,
//         scheduleId: scheduleId,
//         reminderBefore: interval,
//       );
//     }
//   }

//   /// Cancel lab reminders
//   Future<void> cancelLabReminders(String scheduleId) async {
//     try {
//       await _notificationService.cancelNotification(scheduleId.hashCode);
//       SimpleLogger.info('🚫 Cancelled lab reminders for: $scheduleId');
//     } catch (e) {
//       SimpleLogger.error('❌ Failed to cancel lab reminders', error: e);
//     }
//   }

//   /// Subscribe to lab schedule notifications
//   Future<void> subscribeToLabNotifications() async {
//     try {
//       await _notificationService.subscribeToTopic('lab_schedule');
//       SimpleLogger.info('📝 Subscribed to lab schedule notifications');
//     } catch (e) {
//       SimpleLogger.error('❌ Failed to subscribe to lab notifications',
//           error: e);
//     }
//   }

//   /// Unsubscribe from lab schedule notifications
//   Future<void> unsubscribeFromLabNotifications() async {
//     try {
//       await _notificationService.unsubscribeFromTopic('lab_schedule');
//       SimpleLogger.info('📝 Unsubscribed from lab schedule notifications');
//     } catch (e) {
//       SimpleLogger.error('❌ Failed to unsubscribe from lab notifications',
//           error: e);
//     }
//   }

//   /// Subscribe to room booking notifications
//   Future<void> subscribeToRoomBookingNotifications() async {
//     try {
//       await _notificationService.subscribeToTopic('room_booking');
//       SimpleLogger.info('📝 Subscribed to room booking notifications');
//     } catch (e) {
//       SimpleLogger.error('❌ Failed to subscribe to room booking notifications',
//           error: e);
//     }
//   }

//   /// Format duration for human readable text
//   String _formatDuration(Duration duration) {
//     if (duration.inHours > 0) {
//       return '${duration.inHours}h ${duration.inMinutes % 60}m';
//     } else {
//       return '${duration.inMinutes}m';
//     }
//   }

//   /// Send immediate notification for lab schedule updates
//   Future<void> notifyLabScheduleUpdate({
//     required String title,
//     required String message,
//     String? scheduleId,
//   }) async {
//     await showLabScheduleNotification(
//       title: title,
//       body: message,
//       scheduleId: scheduleId,
//     );
//   }

//   /// Send immediate notification for room booking updates
//   Future<void> notifyRoomBookingUpdate({
//     required String title,
//     required String message,
//     String? bookingId,
//   }) async {
//     await showRoomBookingNotification(
//       title: title,
//       body: message,
//       bookingId: bookingId,
//     );
//   }

//   /// Get FCM token for backend registration
//   String get fcmToken => _notificationService.fcmToken;

//   /// Check if notifications are initialized
//   bool get areNotificationsInitialized => _notificationService.isInitialized;
// }
