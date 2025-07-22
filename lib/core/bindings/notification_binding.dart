import 'package:get/get.dart';
import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/features/notification/data/data.dart';
import 'package:mobile/features/notification/domain/domain.dart';
import 'package:mobile/features/notification/presentation/controllers/controller.dart';

enum NotificationControllerType {
  notificationList,
  fcm,
}

class NotificationBinding extends Bindings {
  @override
  void dependencies() {
    _registerNotificationCore();
  }

  void _registerNotificationCore() {
    CoreBinding.ensureCoreRegistered();

    // Register API Clients
    if (!Get.isRegistered<NotificationApiClient>()) {
      Get.put<NotificationApiClient>(
        NotificationApiClient(Get.find()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<FcmApiClient>()) {
      Get.put<FcmApiClient>(
        FcmApiClient(Get.find()),
        permanent: true,
      );
    }

    // Register Data Sources
    if (!Get.isRegistered<NotificationRemoteDataSource>()) {
      Get.put<NotificationRemoteDataSource>(
        NotificationRemoteDataSourceImpl(
          Get.find<NotificationApiClient>(),
          Get.find(),
          Get.find(),
        ),
        permanent: true,
      );
    }

    if (!Get.isRegistered<FcmRemoteDataSource>()) {
      Get.put<FcmRemoteDataSource>(
        FcmRemoteDataSourceImpl(
          Get.find<FcmApiClient>(),
          Get.find(),
          Get.find(),
        ),
        permanent: true,
      );
    }

    // Register Repositories
    if (!Get.isRegistered<NotificationRepository>()) {
      Get.put<NotificationRepository>(
        NotificationRepositoryImpl(
          Get.find<NotificationRemoteDataSource>(),
        ),
        permanent: true,
      );
    }

    if (!Get.isRegistered<FcmRepository>()) {
      Get.put<FcmRepository>(
        FcmRepositoryImpl(
          Get.find<FcmRemoteDataSource>(),
        ),
        permanent: true,
      );
    }

    // Register Use Cases
    if (!Get.isRegistered<FetchNotificationsUsecase>()) {
      Get.put<FetchNotificationsUsecase>(
        FetchNotificationsUsecase(Get.find<NotificationRepository>()),
        permanent: true,
      );
    }
    if (!Get.isRegistered<FetchUnreadCountNotificationUsecase>()) {
      Get.put<FetchUnreadCountNotificationUsecase>(
        FetchUnreadCountNotificationUsecase(Get.find<NotificationRepository>()),
        permanent: true,
      );
    }
    if (!Get.isRegistered<MarkAsReadNotificationUsecase>()) {
      Get.put<MarkAsReadNotificationUsecase>(
        MarkAsReadNotificationUsecase(Get.find<NotificationRepository>()),
        permanent: true,
      );
    }
    if (!Get.isRegistered<MarkAllAsReadNotificationUsecase>()) {
      Get.put<MarkAllAsReadNotificationUsecase>(
        MarkAllAsReadNotificationUsecase(Get.find<NotificationRepository>()),
        permanent: true,
      );
    }
    if (!Get.isRegistered<FetchMyDevicesUsecase>()) {
      Get.put<FetchMyDevicesUsecase>(
        FetchMyDevicesUsecase(Get.find<FcmRepository>()),
        permanent: true,
      );
    }
    if (!Get.isRegistered<RegisterDeviceUsecase>()) {
      Get.put<RegisterDeviceUsecase>(
        RegisterDeviceUsecase(Get.find<FcmRepository>()),
        permanent: true,
      );
    }
    if (!Get.isRegistered<UnregisterDeviceUsecase>()) {
      Get.put<UnregisterDeviceUsecase>(
        UnregisterDeviceUsecase(Get.find<FcmRepository>()),
        permanent: true,
      );
    }

    // Auto-register FCM controller untuk otomatis handle notifikasi
    registerFcmController();
  }

  void registerNotificationListController() {
    if (!Get.isRegistered<NotificationListController>()) {
      Get.put<NotificationListController>(
        NotificationListController(
          Get.find<FetchNotificationsUsecase>(),
          Get.find<FetchUnreadCountNotificationUsecase>(),
          Get.find<MarkAsReadNotificationUsecase>(),
          Get.find<MarkAllAsReadNotificationUsecase>(),
        ),
        permanent: true,
      );
    }

    if (!Get.isRegistered<NotificationDetailController>()) {
      Get.put<NotificationDetailController>(
        NotificationDetailController(
          Get.find<MarkAsReadNotificationUsecase>(),
        ),
        permanent: true,
      );
    }
  }

  void registerFcmController() {
    if (!Get.isRegistered<FcmController>()) {
      Get.put<FcmController>(
        FcmController(
          Get.find<FetchMyDevicesUsecase>(),
          Get.find<RegisterDeviceUsecase>(),
          Get.find<UnregisterDeviceUsecase>(),
        ),
        permanent: true,
      );
    }
  }

  void registerAllNotificationControllers() {
    registerNotificationListController();
    registerFcmController();
  }
}

class NotificationListBinding extends NotificationBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerNotificationListController();
  }
}

class FcmBinding extends NotificationBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerFcmController();
  }
}

class MultiNotificationBinding extends NotificationBinding {
  final List<NotificationControllerType> controllers;

  MultiNotificationBinding({required this.controllers});

  @override
  void dependencies() {
    super.dependencies();

    for (final controller in controllers) {
      switch (controller) {
        case NotificationControllerType.notificationList:
          registerNotificationListController();
          break;
        case NotificationControllerType.fcm:
          registerFcmController();
          break;
      }
    }
  }
}
