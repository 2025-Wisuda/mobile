import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/core/bindings/notification_binding.dart';
import 'package:mobile/core/constants/constant.dart';
import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/notification/presentation/controllers/fcm_controller.dart';
import 'package:mobile/features/splash/presentation/controllers/splash_controller.dart';
import 'package:mobile/shared/extensions/extension.dart';

class SplashWrapperWidget extends StatefulWidget {
  const SplashWrapperWidget({super.key});

  @override
  State<SplashWrapperWidget> createState() => _SplashWrapperWidgetState();
}

class _SplashWrapperWidgetState extends State<SplashWrapperWidget> {
  SplashController get splashController => Get.find<SplashController>();

  @override
  void initState() {
    super.initState();
    _initFcmRegisterDevice();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final isLoggedIn = await splashController.isLoggedIn();
      if (!mounted) return;

      if (isLoggedIn) {
        Get.offAllNamed(AppRoute.home);
      } else {
        Get.offAllNamed(AppRoute.login);
      }
    });
  }

  Future<void> _initFcmRegisterDevice() async {
    try {
      final notificationBinding = NotificationBinding();
      notificationBinding.dependencies();
      notificationBinding.registerNotificationListController();
      notificationBinding.registerFcmController();

      final fcmController = Get.find<FcmController>();
      final fcm = FirebaseMessaging.instance;
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
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(LogoConstant.logoLabkom, width: 250),
          const SizedBox(height: 8),
          Text('LABKOM', style: context.bodyMediumW(600)),
        ],
      ),
    );
  }
}
