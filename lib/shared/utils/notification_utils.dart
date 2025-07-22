import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:mobile/core/routes/route.dart';
import 'package:mobile/shared/utils/simple_logger.dart';

class NotificationUtils {
  static final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();

  static Future<void> initialize() async {
    try {
      const androidSettings =
          AndroidInitializationSettings('@mipmap/ic_launcher');
      const iosSettings = DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
      );

      const initSettings = InitializationSettings(
        android: androidSettings,
        iOS: iosSettings,
      );

      await _localNotifications.initialize(
        initSettings,
        onDidReceiveNotificationResponse: (details) {
          handleNotificationTap(null, payload: details.payload);
        },
      );
    } catch (e) {
      SimpleLogger.error('Failed to initialize local notifications: $e');
    }
  }

  static Future<void> showLocalNotification(RemoteMessage message) async {
    try {
      final androidDetails = AndroidNotificationDetails(
        'lab_system_channel',
        'Lab System Notifications',
        channelDescription: 'Notifications from Lab System',
        importance: Importance.max,
        priority: Priority.max,
        showWhen: true,
        enableVibration: true,
        playSound: true,
        enableLights: true,
        color: Colors.blue,
        category: AndroidNotificationCategory.message,
        fullScreenIntent: true,
        icon: 'ic_notification',
      );

      const iosDetails = DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
        presentBanner: true,
        presentList: true,
        sound: 'default',
      );

      final details = NotificationDetails(
        android: androidDetails,
        iOS: iosDetails,
      );

      await _localNotifications.show(
        message.hashCode,
        message.notification?.title ?? 'Lab System',
        message.notification?.body ?? 'You have a new notification',
        details,
        payload: message.data.toString(),
      );
    } catch (e) {
      SimpleLogger.error('Failed to show local notification: $e');
    }
  }

  static void handleNotificationTap(RemoteMessage? message, {String? payload}) {
    if (message?.data['type'] == 'lab_schedule') {
      Get.toNamed(AppRoute.labSchedule);
    } else if (message?.data['type'] == 'room_booking') {
      Get.toNamed(AppRoute.roomBooking);
    } else {
      Get.toNamed(AppRoute.notificationList);
    }
  }

  static Future<void> requestPermissions() async {
    final messaging = FirebaseMessaging.instance;

    await messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
    );
  }
}
