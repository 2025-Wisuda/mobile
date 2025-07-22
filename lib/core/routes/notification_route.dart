import 'package:get/get.dart';

import 'package:mobile/core/bindings/notification_binding.dart';
import 'package:mobile/features/notification/presentation/screens/notification_list_screen.dart';

class NotificationRoute {
  static const String notificationList = '/notifications';
}

final notificationRoutes = [
  GetPage(
    name: NotificationRoute.notificationList,
    page: () => const NotificationListScreen(),
    binding: NotificationListBinding(),
  ),
];
