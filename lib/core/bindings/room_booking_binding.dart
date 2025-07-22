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
      Get.put<RoomBookingApiClient>(RoomBookingApiClient(Get.find()),
          permanent: true);
    }

    if (!Get.isRegistered<RoomBookingRemoteDataSource>()) {
      Get.put<RoomBookingRemoteDataSource>(
        RoomBookingRemoteDataSourceImpl(
            Get.find<RoomBookingApiClient>(), Get.find(), Get.find()),
        permanent: true,
      );
    }

    if (!Get.isRegistered<RoomBookingRepository>()) {
      Get.put<RoomBookingRepository>(
        RoomBookingRepositoryImpl(Get.find<RoomBookingRemoteDataSource>()),
        permanent: true,
      );
    }
  }

  void registerFetchListRoomBooking() {
    if (!Get.isRegistered<FetchListRoomBookingUsecase>()) {
      Get.put<FetchListRoomBookingUsecase>(
        FetchListRoomBookingUsecase(Get.find<RoomBookingRepository>()),
        permanent: true,
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
      Get.put<FetchRoomBookingDetailUsecase>(
        FetchRoomBookingDetailUsecase(Get.find<RoomBookingRepository>()),
        permanent: true,
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
      Get.put<CreateRoomBookingUsecase>(
        CreateRoomBookingUsecase(Get.find<RoomBookingRepository>()),
        permanent: true,
      );
    }
  }

  void registerUpdateRoomBooking() {
    if (!Get.isRegistered<UpdateRoomBookingUsecase>()) {
      Get.put<UpdateRoomBookingUsecase>(
        UpdateRoomBookingUsecase(Get.find<RoomBookingRepository>()),
        permanent: true,
      );
    }
  }

  void registerDeleteRoomBooking() {
    if (!Get.isRegistered<DeleteRoomBookingUsecase>()) {
      Get.put<DeleteRoomBookingUsecase>(
        DeleteRoomBookingUsecase(Get.find<RoomBookingRepository>()),
        permanent: true,
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
      Get.put<ApproveRoomBookingUsecase>(
        ApproveRoomBookingUsecase(Get.find<RoomBookingRepository>()),
        permanent: true,
      );
    }
    if (!Get.isRegistered<RejectRoomBookingUsecase>()) {
      Get.put<RejectRoomBookingUsecase>(
        RejectRoomBookingUsecase(Get.find<RoomBookingRepository>()),
        permanent: true,
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

class RoomBookingDetailBinding extends RoomBookingBinding {
  @override
  void dependencies() {
    super.dependencies();
    registerFetchRoomBookingDetail();
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
