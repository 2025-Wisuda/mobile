import 'package:get/get.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';

class InternalApprovalValidationHelper {
  static bool _canApproveByGroup(GroupEnum userGroup) {
    return userGroup == GroupEnum.laboratoryHead ||
        userGroup == GroupEnum.laboratoryTechnician;
  }

  static bool _canApproveByStatus(String approvalStatus) {
    final status = ApprovalStatusEnum.fromString(approvalStatus);
    return status == ApprovalStatusEnum.pending;
  }

  static bool _canApproveByDate(DateTime? bookingDate) {
    if (bookingDate == null) return false;

    final today = DateTime.now();
    final todayDate = DateTime(today.year, today.month, today.day);
    final bookingDateOnly =
        DateTime(bookingDate.year, bookingDate.month, bookingDate.day);

    return bookingDateOnly.isAfter(todayDate);
  }

  static bool canApprove(RoomBookingEntity booking) {
    final userController = Get.find<UserProfileController>();
    final userGroup = userController.userGroupEnum;

    if (userGroup == null) return false;

    return _canApproveByGroup(userGroup) &&
        _canApproveByStatus(booking.approvalStatus ?? '') &&
        _canApproveByDate(booking.date);
  }
}
