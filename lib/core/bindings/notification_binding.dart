// import 'package:get/get.dart';

// import 'package:mobile/shared/services/notification_service.dart';

// class NotificationBinding extends Bindings {
//   @override
//   void dependencies() {
//     _registerNotificationService();
//   }

//   void _registerNotificationService() {
//     if (!Get.isRegistered<NotificationService>()) {
//       Get.put<NotificationService>(
//         NotificationService(),
//         permanent: true,
//       );
//     }
//   }

//   /// Initialize notification service manually if needed
//   static Future<void> initializeNotificationService() async {
//     if (!Get.isRegistered<NotificationService>()) {
//       Get.put<NotificationService>(
//         NotificationService(),
//         permanent: true,
//       );
//     }

//     final service = Get.find<NotificationService>();
//     if (!service.isInitialized) {
//       await service.onInit();
//     }
//   }
// }
