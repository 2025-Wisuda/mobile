// import 'dart:convert';
// import 'dart:io';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:get/get.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:timezone/timezone.dart' as tz;
// import 'package:timezone/data/latest.dart' as tz;

// import 'package:mobile/core/routes/route.dart';
// import 'package:mobile/shared/utils/simple_logger.dart';

// /// Comprehensive notification service handling both Firebase push notifications
// /// and local notifications for lab schedule management
// class NotificationService extends GetxService {
//   static NotificationService get instance => Get.find<NotificationService>();

//   late FlutterLocalNotificationsPlugin _localNotifications;
//   late FirebaseMessaging _firebaseMessaging;

//   // Notification channels
//   static const String _labScheduleChannelId = 'lab_schedule_notifications';
//   static const String _roomBookingChannelId = 'room_booking_notifications';
//   static const String _generalChannelId = 'general_notifications';

//   // Observables for notification state
//   final RxBool _isInitialized = false.obs;
//   final RxString _fcmToken = ''.obs;
//   final RxList<NotificationModel> _notifications = <NotificationModel>[].obs;

//   // Getters
//   bool get isInitialized => _isInitialized.value;
//   String get fcmToken => _fcmToken.value;
//   List<NotificationModel> get notifications => _notifications;

//   @override
//   Future<void> onInit() async {
//     await _initialize();
//     super.onInit();
//   }

//   /// Initialize notification service
//   Future<void> _initialize() async {
//     try {
//       SimpleLogger.info('🔔 Initializing NotificationService');

//       // Initialize timezone data
//       tz.initializeTimeZones();

//       // Initialize Firebase
//       await _initializeFirebase();

//       // Initialize local notifications
//       await _initializeLocalNotifications();

//       // Request permissions
//       await _requestPermissions();

//       // Setup Firebase messaging handlers
//       await _setupFirebaseHandlers();

//       // Get FCM token
//       await _getFCMToken();

//       _isInitialized.value = true;
//       SimpleLogger.success('✅ NotificationService initialized successfully');

//     } catch (e, stackTrace) {
//       SimpleLogger.error('❌ Failed to initialize NotificationService', error: e);
//       SimpleLogger.error('Stack trace: $stackTrace');
//     }
//   }

//   /// Initialize Firebase
//   Future<void> _initializeFirebase() async {
//     if (Firebase.apps.isEmpty) {
//       await Firebase.initializeApp();
//     }
//     _firebaseMessaging = FirebaseMessaging.instance;
//   }

//   /// Initialize local notifications
//   Future<void> _initializeLocalNotifications() async {
//     _localNotifications = FlutterLocalNotificationsPlugin();

//     // Android initialization
//     const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');

//     // iOS initialization
//     const iosSettings = DarwinInitializationSettings(
//       requestSoundPermission: true,
//       requestBadgePermission: true,
//       requestAlertPermission: true,
//     );

//     const initSettings = InitializationSettings(
//       android: androidSettings,
//       iOS: iosSettings,
//     );

//     await _localNotifications.initialize(
//       initSettings,
//       onDidReceiveNotificationResponse: _onLocalNotificationTapped,
//     );

//     // Create notification channels for Android
//     if (Platform.isAndroid) {
//       await _createNotificationChannels();
//     }
//   }

//   /// Create notification channels for Android
//   Future<void> _createNotificationChannels() async {
//     final androidPlugin = _localNotifications.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();

//     if (androidPlugin != null) {
//       // Lab Schedule Channel
//       await androidPlugin.createNotificationChannel(
//         const AndroidNotificationChannel(
//           _labScheduleChannelId,
//           'Lab Schedule Notifications',
//           description: 'Notifications for lab schedule updates and reminders',
//           importance: Importance.high,
//           playSound: true,
//           sound: RawResourceAndroidNotificationSound('notification'),
//         ),
//       );

//       // Room Booking Channel
//       await androidPlugin.createNotificationChannel(
//         const AndroidNotificationChannel(
//           _roomBookingChannelId,
//           'Room Booking Notifications',
//           description: 'Notifications for room booking updates and approvals',
//           importance: Importance.high,
//           playSound: true,
//         ),
//       );

//       // General Channel
//       await androidPlugin.createNotificationChannel(
//         const AndroidNotificationChannel(
//           _generalChannelId,
//           'General Notifications',
//           description: 'General app notifications',
//           importance: Importance.default,
//         ),
//       );
//     }
//   }

//   /// Request necessary permissions
//   Future<void> _requestPermissions() async {
//     // Request notification permission
//     final notificationStatus = await Permission.notification.request();
//     SimpleLogger.info('📱 Notification permission: $notificationStatus');

//     // Request Firebase messaging permission
//     final messagingSettings = await _firebaseMessaging.requestPermission(
//       alert: true,
//       badge: true,
//       sound: true,
//       provisional: false,
//     );

//     SimpleLogger.info('�� Firebase messaging permission: ${messagingSettings.authorizationStatus}');
//   }

//   /// Setup Firebase messaging handlers
//   Future<void> _setupFirebaseHandlers() async {
//     // Handle foreground messages
//     FirebaseMessaging.onMessage.listen(_onForegroundMessage);

//     // Handle background messages
//     FirebaseMessaging.onBackgroundMessage(_onBackgroundMessage);

//     // Handle notification taps when app is terminated/background
//     FirebaseMessaging.onMessageOpenedApp.listen(_onNotificationTapped);

//     // Check if app was opened from terminated state
//     final initialMessage = await _firebaseMessaging.getInitialMessage();
//     if (initialMessage != null) {
//       _onNotificationTapped(initialMessage);
//     }
//   }

//   /// Get FCM token for backend registration
//   Future<void> _getFCMToken() async {
//     try {
//       final token = await _firebaseMessaging.getToken();
//       if (token != null) {
//         _fcmToken.value = token;
//         SimpleLogger.info('🎯 FCM Token: ${token.substring(0, 20)}...');
//         // TODO: Send token to backend for user registration
//         await _registerTokenWithBackend(token);
//       }
//     } catch (e) {
//       SimpleLogger.error('❌ Failed to get FCM token', error: e);
//     }
//   }

//   /// Register FCM token with backend
//   Future<void> _registerTokenWithBackend(String token) async {
//     try {
//       // TODO: Implement API call to register token with user
//       SimpleLogger.info('📤 Registering FCM token with backend...');
//       // await userRepository.updateFCMToken(token);
//     } catch (e) {
//       SimpleLogger.error('❌ Failed to register FCM token with backend', error: e);
//     }
//   }

//   /// Handle foreground Firebase messages
//   void _onForegroundMessage(RemoteMessage message) {
//     SimpleLogger.info('📨 Foreground message: ${message.messageId}');

//     final notification = NotificationModel.fromFirebaseMessage(message);
//     _notifications.add(notification);

//     // Show local notification for foreground messages
//     _showLocalNotificationFromFirebase(message);
//   }

//   /// Handle notification taps from Firebase
//   void _onNotificationTapped(RemoteMessage message) {
//     SimpleLogger.info('👆 Notification tapped: ${message.messageId}');
//     _handleNotificationNavigation(message.data);
//   }

//   /// Handle local notification taps
//   void _onLocalNotificationTapped(NotificationResponse response) {
//     SimpleLogger.info('👆 Local notification tapped: ${response.id}');

//     if (response.payload != null) {
//       final data = jsonDecode(response.payload!);
//       _handleNotificationNavigation(data);
//     }
//   }

//   /// Handle navigation based on notification data
//   void _handleNotificationNavigation(Map<String, dynamic> data) {
//     final type = data['type'];
//     final route = data['route'];
//     final params = data['params'] as Map<String, String>?;

//     switch (type) {
//       case 'lab_schedule':
//         Get.toNamed(AppRoute.labSchedule, parameters: params ?? {});
//         break;
//       case 'room_booking':
//         Get.toNamed(AppRoute.roomBooking, parameters: params ?? {});
//         break;
//       case 'course':
//         Get.toNamed(AppRoute.course, parameters: params ?? {});
//         break;
//       default:
//         if (route != null) {
//           Get.toNamed(route, parameters: params ?? {});
//         }
//     }
//   }

//   /// Show local notification from Firebase message
//   Future<void> _showLocalNotificationFromFirebase(RemoteMessage message) async {
//     final notification = message.notification;
//     if (notification == null) return;

//     final channelId = _getChannelIdFromType(message.data['type']);

//     await _localNotifications.show(
//       message.hashCode,
//       notification.title,
//       notification.body,
//       NotificationDetails(
//         android: AndroidNotificationDetails(
//           channelId,
//           _getChannelName(channelId),
//           importance: Importance.high,
//           priority: Priority.high,
//           icon: '@mipmap/ic_launcher',
//         ),
//         iOS: const DarwinNotificationDetails(
//           presentAlert: true,
//           presentBadge: true,
//           presentSound: true,
//         ),
//       ),
//       payload: jsonEncode(message.data),
//     );
//   }

//   /// Get notification channel ID based on type
//   String _getChannelIdFromType(String? type) {
//     switch (type) {
//       case 'lab_schedule':
//         return _labScheduleChannelId;
//       case 'room_booking':
//         return _roomBookingChannelId;
//       default:
//         return _generalChannelId;
//     }
//   }

//   /// Get channel name from ID
//   String _getChannelName(String channelId) {
//     switch (channelId) {
//       case _labScheduleChannelId:
//         return 'Lab Schedule Notifications';
//       case _roomBookingChannelId:
//         return 'Room Booking Notifications';
//       default:
//         return 'General Notifications';
//     }
//   }

//   /// Show local notification for lab schedule
//   Future<void> showLabScheduleNotification({
//     required String title,
//     required String body,
//     String? scheduleId,
//     DateTime? scheduledTime,
//   }) async {
//     final data = {
//       'type': 'lab_schedule',
//       'route': AppRoute.labSchedule,
//       'params': {'scheduleId': scheduleId ?? ''},
//     };

//     if (scheduledTime != null) {
//       await _scheduleNotification(
//         id: scheduleId.hashCode,
//         title: title,
//         body: body,
//         scheduledTime: scheduledTime,
//         channelId: _labScheduleChannelId,
//         payload: data,
//       );
//     } else {
//       await _showImmediateNotification(
//         id: scheduleId.hashCode,
//         title: title,
//         body: body,
//         channelId: _labScheduleChannelId,
//         payload: data,
//       );
//     }
//   }

//   /// Show local notification for room booking
//   Future<void> showRoomBookingNotification({
//     required String title,
//     required String body,
//     String? bookingId,
//     DateTime? scheduledTime,
//   }) async {
//     final data = {
//       'type': 'room_booking',
//       'route': AppRoute.roomBooking,
//       'params': {'bookingId': bookingId ?? ''},
//     };

//     if (scheduledTime != null) {
//       await _scheduleNotification(
//         id: bookingId.hashCode,
//         title: title,
//         body: body,
//         scheduledTime: scheduledTime,
//         channelId: _roomBookingChannelId,
//         payload: data,
//       );
//     } else {
//       await _showImmediateNotification(
//         id: bookingId.hashCode,
//         title: title,
//         body: body,
//         channelId: _roomBookingChannelId,
//         payload: data,
//       );
//     }
//   }

//   /// Schedule a notification for future delivery
//   Future<void> _scheduleNotification({
//     required int id,
//     required String title,
//     required String body,
//     required DateTime scheduledTime,
//     required String channelId,
//     required Map<String, dynamic> payload,
//   }) async {
//     await _localNotifications.zonedSchedule(
//       id,
//       title,
//       body,
//       tz.TZDateTime.from(scheduledTime, tz.local),
//       NotificationDetails(
//         android: AndroidNotificationDetails(
//           channelId,
//           _getChannelName(channelId),
//           importance: Importance.high,
//           priority: Priority.high,
//           icon: '@mipmap/ic_launcher',
//         ),
//         iOS: const DarwinNotificationDetails(
//           presentAlert: true,
//           presentBadge: true,
//           presentSound: true,
//         ),
//       ),
//       payload: jsonEncode(payload),
//       androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
//       uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
//     );
//   }

//   /// Show immediate notification
//   Future<void> _showImmediateNotification({
//     required int id,
//     required String title,
//     required String body,
//     required String channelId,
//     required Map<String, dynamic> payload,
//   }) async {
//     await _localNotifications.show(
//       id,
//       title,
//       body,
//       NotificationDetails(
//         android: AndroidNotificationDetails(
//           channelId,
//           _getChannelName(channelId),
//           importance: Importance.high,
//           priority: Priority.high,
//           icon: '@mipmap/ic_launcher',
//         ),
//         iOS: const DarwinNotificationDetails(
//           presentAlert: true,
//           presentBadge: true,
//           presentSound: true,
//         ),
//       ),
//       payload: jsonEncode(payload),
//     );
//   }

//   /// Cancel a scheduled notification
//   Future<void> cancelNotification(int id) async {
//     await _localNotifications.cancel(id);
//   }

//   /// Cancel all notifications
//   Future<void> cancelAllNotifications() async {
//     await _localNotifications.cancelAll();
//   }

//   /// Get pending notifications
//   Future<List<PendingNotificationRequest>> getPendingNotifications() async {
//     return await _localNotifications.pendingNotificationRequests();
//   }

//   /// Clear notification history
//   void clearNotificationHistory() {
//     _notifications.clear();
//   }

//   /// Subscribe to notification topic
//   Future<void> subscribeToTopic(String topic) async {
//     await _firebaseMessaging.subscribeToTopic(topic);
//     SimpleLogger.info('📝 Subscribed to topic: $topic');
//   }

//   /// Unsubscribe from notification topic
//   Future<void> unsubscribeFromTopic(String topic) async {
//     await _firebaseMessaging.unsubscribeFromTopic(topic);
//     SimpleLogger.info('📝 Unsubscribed from topic: $topic');
//   }
// }

// /// Background message handler (must be top-level function)
// @pragma('vm:entry-point')
// Future<void> _onBackgroundMessage(RemoteMessage message) async {
//   await Firebase.initializeApp();
//   SimpleLogger.info('📨 Background message: ${message.messageId}');
// }

// /// Notification model for managing notification data
// class NotificationModel {
//   final String id;
//   final String title;
//   final String body;
//   final String type;
//   final Map<String, dynamic> data;
//   final DateTime timestamp;
//   final bool isRead;

//   NotificationModel({
//     required this.id,
//     required this.title,
//     required this.body,
//     required this.type,
//     required this.data,
//     required this.timestamp,
//     this.isRead = false,
//   });

//   factory NotificationModel.fromFirebaseMessage(RemoteMessage message) {
//     return NotificationModel(
//       id: message.messageId ?? DateTime.now().millisecondsSinceEpoch.toString(),
//       title: message.notification?.title ?? '',
//       body: message.notification?.body ?? '',
//       type: message.data['type'] ?? 'general',
//       data: message.data,
//       timestamp: DateTime.now(),
//     );
//   }

//   NotificationModel copyWith({
//     String? id,
//     String? title,
//     String? body,
//     String? type,
//     Map<String, dynamic>? data,
//     DateTime? timestamp,
//     bool? isRead,
//   }) {
//     return NotificationModel(
//       id: id ?? this.id,
//       title: title ?? this.title,
//       body: body ?? this.body,
//       type: type ?? this.type,
//       data: data ?? this.data,
//       timestamp: timestamp ?? this.timestamp,
//       isRead: isRead ?? this.isRead,
//     );
//   }
// }
