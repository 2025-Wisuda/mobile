import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/room_booking/presentation/screens/screen.dart';

final roomBookingRoutes = [
  GetPage(
    name: AppRoute.createRoomBooking,
    page: () => const CreateRoomBookingScreen(),
    binding: MultiRoomBookingBinding(
      controllers: [RoomBookingControllerType.roomBookingForm],
    ),
  ),
  GetPage(
    name: AppRoute.updateRoomBooking,
    page: () => const UpdateRoomBookingScreen(),
    binding: MultiRoomBookingBinding(
      controllers: [RoomBookingControllerType.roomBookingForm],
    ),
  ),
  GetPage(
    name: AppRoute.roomBooking,
    page: () => const RoomBookingScreen(),
    binding: MultiRoomBookingBinding(
      controllers: [
        RoomBookingControllerType.fetchListRoomBooking,
        RoomBookingControllerType.fetchRoomBookingDetail,
        RoomBookingControllerType.deleteRoomBooking,
        RoomBookingControllerType.approveRoomBooking,
      ],
    ),
  ),
  GetPage(
    name: AppRoute.historyRoomBooking,
    page: () => const HistoryRoomBookingScreen(),
    binding: MultiRoomBookingBinding(
      controllers: [
        RoomBookingControllerType.fetchListRoomBooking,
        RoomBookingControllerType.fetchRoomBookingDetail,
        RoomBookingControllerType.deleteRoomBooking,
        RoomBookingControllerType.approveRoomBooking,
      ],
    ),
  ),
  GetPage(
    name: AppRoute.detailRoomBooking,
    page: () {
      final bookingId = Get.parameters['bookingId'] ?? '';
      return DetailRoomBookingScreen(bookingId: bookingId);
    },
    binding: MultiRoomBookingBinding(
      controllers: [
        RoomBookingControllerType.fetchRoomBookingDetail,
        RoomBookingControllerType.deleteRoomBooking,
        RoomBookingControllerType.approveRoomBooking,
      ],
    ),
  ),
];
