import 'package:get/get.dart';

import 'package:mobile/features/room_booking/presentation/controllers/room_booking_form_controller.dart';

class InternalFormPrefillHelper {
  static void prefillRoomBookingForm(RoomBookingFormController controller) {
    final arguments = Get.arguments as Map<String, dynamic>?;
    if (arguments == null) return;

    _prefillDate(controller, arguments);
    _prefillTimes(controller, arguments);
    _prefillBookingType(controller, arguments);
  }

  static void _prefillDate(
      RoomBookingFormController controller, Map<String, dynamic> arguments) {
    final selectedDate = arguments['selectedDate'];
    if (selectedDate != null) {
      try {
        controller.selectedDate.value = DateTime.parse(selectedDate);
      } catch (e) {
        // should never reach here
      }
    }
  }

  static void _prefillTimes(
      RoomBookingFormController controller, Map<String, dynamic> arguments) {
    final startTime = arguments['startTime'];
    if (startTime != null) {
      controller.selectedStartTime.value = startTime;
    }

    final endTime = arguments['endTime'];
    if (endTime != null) {
      controller.selectedEndTime.value = endTime;
    }
  }

  static void _prefillBookingType(
      RoomBookingFormController controller, Map<String, dynamic> arguments) {
    final bookingType = arguments['bookingType'];
    if (bookingType != null) {
      controller.selectBookingType(bookingType);
    }
  }
}
