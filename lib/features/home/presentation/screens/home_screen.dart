import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/core/bindings/notification_binding.dart';
import 'package:mobile/features/home/presentation/widgets/widget.dart';
import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/notification/presentation/controllers/controller.dart';
import 'package:mobile/shared/shared.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _hasRequestedPermission = false;

  @override
  void initState() {
    super.initState();
    // Auto refresh notification badge when home screen opens
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (Get.isRegistered<NotificationListController>()) {
        Get.find<NotificationListController>().fetchUnreadCount();
      }
    });
    // FCM registerDevice
    _initFcmRegisterDevice();
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

  Future<void> _requestNotificationPermission() async {
    try {
      final status = await Permission.notification.status;
      if (!status.isGranted) {
        final result = await Permission.notification.request();
        if (!result.isGranted) {
          _showSettingsDialog();
        }
      }
    } catch (e) {
      // Handle error silently
    }
  }

  void _showSettingsDialog() {
    Get.dialog(
      AlertDialog(
        title: Text(
          'notification'.message('permissionTitle'),
          style: context.textTheme.titleLarge,
        ),
        content: Text(
          'notification'.message('settingsManualMessage'),
          style: context.textTheme.bodyMedium,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
              Future.delayed(const Duration(seconds: 1), () {
                _checkPermissionAndShowDialog();
              });
            },
            child: Text(
              'cancel'.note(),
              style: context.textTheme.bodyMedium,
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              Get.back();
              await openAppSettings();
              Future.delayed(const Duration(seconds: 2), () {
                _checkPermissionAndShowDialog();
              });
            },
            child: Text(
              'notification'.message('permissionAllow'),
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.surface,
              ),
            ),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }

  void _checkPermissionAndShowDialog() async {
    final status = await Permission.notification.status;
    if (!status.isGranted) {
      _showSettingsDialog();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_hasRequestedPermission) {
      _hasRequestedPermission = true;
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        await _requestNotificationPermission();
      });
    }
    return Scaffold(
      body: CustomRefreshWrapperWidget(
        onRefresh: () async {
          final controller = Get.find<MyLabScheduleController>(tag: 'home');
          await controller.fetchList();
          Get.find<NotificationListController>().fetchUnreadCount();
        },
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          slivers: [
            HomeAppBarWidget(),
            HomeWrapperWidget(),
          ],
        ),
      ),
    );
  }
}
