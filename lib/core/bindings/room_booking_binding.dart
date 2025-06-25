import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/features/room_booking/room_booking.dart';

enum RoomBookingControllerType {
  fetchListRoomBooking,
  fetchRoomBookingDetail,
  createRoomBooking,
  updateRoomBooking,
  deleteRoomBooking,
  approveRoomBooking,
  roomBookingForm,
}

class RoomBookingBinding extends Bindings {
  @override
  void dependencies() {
    _registerRoomBookingCore();
  }

  void _registerRoomBookingCore() {
    CoreBinding.ensureCoreRegistered();

    if (!Get.isRegistered<RoomBookingApiClient>()) {
      Get.lazyPut<RoomBookingApiClient>(() => RoomBookingApiClient(Get.find()));
    }

    if (!Get.isRegistered<RoomBookingRemoteDataSource>()) {
      Get.lazyPut<RoomBookingRemoteDataSource>(
        () => RoomBookingRemoteDataSourceImpl(
            Get.find<RoomBookingApiClient>(), Get.find(), Get.find()),
      );
    }

    if (!Get.isRegistered<RoomBookingRepository>()) {
      Get.lazyPut<RoomBookingRepository>(
        () =>
            RoomBookingRepositoryImpl(Get.find<RoomBookingRemoteDataSource>()),
      );
    }
  }

  void registerFetchListRoomBooking() {
    if (!Get.isRegistered<FetchListRoomBookingUsecase>()) {
      Get.lazyPut<FetchListRoomBookingUsecase>(
        () => FetchListRoomBookingUsecase(Get.find<RoomBookingRepository>()),
      );
    }
    if (!Get.isRegistered<ListRoomBookingController>()) {
      Get.lazyPut<ListRoomBookingController>(
        () =>
            ListRoomBookingController(Get.find<FetchListRoomBookingUsecase>()),
      );
    }
  }

  void registerFetchRoomBookingDetail() {
    if (!Get.isRegistered<FetchRoomBookingDetailUsecase>()) {
      Get.lazyPut<FetchRoomBookingDetailUsecase>(
        () => FetchRoomBookingDetailUsecase(Get.find<RoomBookingRepository>()),
      );
    }
    if (!Get.isRegistered<DetailRoomBookingController>()) {
      Get.lazyPut<DetailRoomBookingController>(
        () => DetailRoomBookingController(
            Get.find<FetchRoomBookingDetailUsecase>()),
      );
    }
  }

  void registerCreateRoomBooking() {
    if (!Get.isRegistered<CreateRoomBookingUsecase>()) {
      Get.lazyPut<CreateRoomBookingUsecase>(
        () => CreateRoomBookingUsecase(Get.find<RoomBookingRepository>()),
      );
    }
  }

  void registerUpdateRoomBooking() {
    if (!Get.isRegistered<UpdateRoomBookingUsecase>()) {
      Get.lazyPut<UpdateRoomBookingUsecase>(
        () => UpdateRoomBookingUsecase(Get.find<RoomBookingRepository>()),
      );
    }
  }

  void registerDeleteRoomBooking() {
    if (!Get.isRegistered<DeleteRoomBookingUsecase>()) {
      Get.lazyPut<DeleteRoomBookingUsecase>(
        () => DeleteRoomBookingUsecase(Get.find<RoomBookingRepository>()),
      );
    }
    if (!Get.isRegistered<DeleteRoomBookingController>()) {
      Get.lazyPut<DeleteRoomBookingController>(
        () => DeleteRoomBookingController(Get.find<DeleteRoomBookingUsecase>()),
      );
    }
  }

  void registerApproveRoomBooking() {
    if (!Get.isRegistered<ApproveRoomBookingUsecase>()) {
      Get.lazyPut<ApproveRoomBookingUsecase>(
        () => ApproveRoomBookingUsecase(Get.find<RoomBookingRepository>()),
      );
    }
    if (!Get.isRegistered<RejectRoomBookingUsecase>()) {
      Get.lazyPut<RejectRoomBookingUsecase>(
        () => RejectRoomBookingUsecase(Get.find<RoomBookingRepository>()),
      );
    }
    if (!Get.isRegistered<ApproveRoomBookingController>()) {
      Get.lazyPut<ApproveRoomBookingController>(
        () => ApproveRoomBookingController(
          Get.find<ApproveRoomBookingUsecase>(),
          Get.find<RejectRoomBookingUsecase>(),
        ),
      );
    }
  }

  void registerRoomBookingForm() {
    registerCreateRoomBooking();
    registerUpdateRoomBooking();
    if (!Get.isRegistered<RoomBookingFormController>()) {
      Get.lazyPut<RoomBookingFormController>(
        () => RoomBookingFormController(
          Get.find<CreateRoomBookingUsecase>(),
          Get.find<UpdateRoomBookingUsecase>(),
        ),
      );
    }
  }
}

class MultiRoomBookingBinding extends RoomBookingBinding {
  final List<RoomBookingControllerType> controllers;

  MultiRoomBookingBinding({
    required this.controllers,
  });

  @override
  void dependencies() {
    super.dependencies();

    for (final controller in controllers) {
      switch (controller) {
        case RoomBookingControllerType.fetchListRoomBooking:
          registerFetchListRoomBooking();
          break;
        case RoomBookingControllerType.fetchRoomBookingDetail:
          registerFetchRoomBookingDetail();
          break;
        case RoomBookingControllerType.createRoomBooking:
          registerCreateRoomBooking();
          break;
        case RoomBookingControllerType.updateRoomBooking:
          registerUpdateRoomBooking();
          break;
        case RoomBookingControllerType.deleteRoomBooking:
          registerDeleteRoomBooking();
          break;
        case RoomBookingControllerType.approveRoomBooking:
          registerApproveRoomBooking();
          break;
        case RoomBookingControllerType.roomBookingForm:
          registerRoomBookingForm();
          break;
      }
    }
  }
}
