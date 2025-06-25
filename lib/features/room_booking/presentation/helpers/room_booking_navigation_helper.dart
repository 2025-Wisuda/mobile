import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/user/presentation/controllers/user_profile_controller.dart';
import 'package:mobile/shared/enums/enum.dart';

class RoomBookingNavigationHelper {
  static void handleTimeSlotNavigation(
    BuildContext context, {
    required String selectedDate,
    required String startTime,
    required String endTime,
  }) {
    final userProfileController = Get.find<UserProfileController>();
    final userGroup = userProfileController.userGroup.toLowerCase();

    final isStudent = userGroup == GroupEnum.student.displayName.toLowerCase();
    final isLabAssistant =
        userGroup == GroupEnum.laboratoryAssistant.displayName.toLowerCase();

    final arguments = {
      'selectedDate': selectedDate,
      'startTime': startTime,
      'endTime': endTime,
    };

    if (isStudent || isLabAssistant) {
      Get.toNamed(
        AppRoute.createRoomBooking,
        arguments: {
          ...arguments,
          'bookingType': RoomBookingTypeEnum.seminar.value,
          'userType': 'student_assistant',
        },
      );
    } else {
      Get.toNamed(
        AppRoute.createRoomBooking,
        arguments: {
          ...arguments,
          'bookingType': RoomBookingTypeEnum.course.value,
          'userType': 'staff',
        },
      );
    }
  }

  static void handleSuccessNavigation() {
    // Navigate back to room booking selection screen
    if (Navigator.canPop(Get.context!)) {
      Get.back();
    } else {
      // Fallback to home if can't pop
      Get.offAllNamed(AppRoute.home);
    }
  }
}
