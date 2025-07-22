import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import 'core/bindings/notification_binding.dart';
import 'core/config/language.dart';
import 'core/routes/route.dart';
import 'core/themes/theme.dart';
import 'features/notification/notification.dart';
import 'firebase_options.dart';
import 'shared/utils/notification_utils.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await NotificationUtils.showLocalNotification(message);

}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  // Initialize Firebase with error handling
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    // Initialize Firebase Analytics
    await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);

    // Initialize local notifications only if Firebase succeeds
    await NotificationUtils.initialize();

    // Set iOS foreground presentation options for banner display
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // Show banner
      badge: true, // Show badge
      sound: true, // Play sound
    );

    // Request notification permissions
    await NotificationUtils.requestPermissions();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      NotificationUtils.showLocalNotification(message);

      // Auto refresh notification list and badge count when new notification arrives
      if (Get.isRegistered<NotificationListController>()) {
        final notificationController = Get.find<NotificationListController>();
        notificationController.refresh();
        notificationController.fetchUnreadCount();
      }
    });
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // Ensure NotificationBinding is initialized so FcmController is available
    // (If not already registered globally, do it here)
    final notificationBinding = NotificationBinding();
    notificationBinding.dependencies();
    notificationBinding.registerNotificationListController();

    final fcmController = Get.find<FcmController>();
    final fcm = FirebaseMessaging.instance;
    // Register token at startup
    final token = await fcm.getToken();
    if (token != null) {
      await fcmController.registerDevice(registrationToken: token);
    }
    fcm.onTokenRefresh.listen((newToken) async {
      await fcmController.registerDevice(registrationToken: newToken);
    });
  } catch (e) {
    // Should not happen
  }

  tz.initializeTimeZones();
  final jakarta = tz.getLocation('Asia/Jakarta');
  tz.setLocalLocation(jakarta);

  final savedLocale = await LanguageConfig.loadLanguage();

  runApp(
    EasyLocalization(
      supportedLocales: LanguageConfig.supportedLocales,
      path: 'assets/translations',
      fallbackLocale: LanguageConfig.defaultLocale,
      startLocale: savedLocale,
      child: Builder(
        builder: (context) {
          return GetMaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            theme: AppTheme.kLightTheme,
            darkTheme: AppTheme.kDarkTheme,
            themeMode: ThemeMode.light,
            initialRoute: AppRoute.splash,
            getPages: AppScreen.routes,
          );
        },
      ),
    ),
  );
}
