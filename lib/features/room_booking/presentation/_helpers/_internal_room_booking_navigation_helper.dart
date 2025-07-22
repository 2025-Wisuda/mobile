import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/room_booking/domain/entities/room_booking_entity.dart';
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

  static void handleBookingCreationSuccess(RoomBookingEntity newBooking) {
    Get.offNamed(
      AppRoute.bookingConfirmationCountdown,
      arguments: newBooking,
    );
  }

  static void handleSuccessNavigation() {
    final statusTabs = ApprovalStatusEnum.values;
    final pendingTabIndex = statusTabs.indexWhere(
      (status) => status == ApprovalStatusEnum.pending,
    );

    Get.offNamed(
      AppRoute.historyRoomBooking,
      arguments: {
        'initialTabIndex': pendingTabIndex >= 0 ? pendingTabIndex : 0,
        'shouldRefresh': true,
      },
    );
  }

  static void handleUpdateSuccessNavigation(String? approvalStatus) {
    final statusTabs = ApprovalStatusEnum.values;
    final statusValue = approvalStatus ?? 'Menunggu';

    int tabIndex = statusTabs.indexWhere(
      (status) => status.value.toLowerCase() == statusValue.toLowerCase(),
    );

    if (tabIndex == -1) tabIndex = 0;

    Get.offNamed(
      AppRoute.historyRoomBooking,
      arguments: {
        'initialTabIndex': tabIndex,
        'shouldRefresh': true,
      },
    );
  }
}
