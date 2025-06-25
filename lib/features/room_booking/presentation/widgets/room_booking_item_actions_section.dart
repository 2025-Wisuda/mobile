import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/user/presentation/controllers/user_profile_controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';

class RoomBookingItemActionsSection extends StatelessWidget {
  final RoomBookingEntity booking;
  final VoidCallback? onApprove;
  final VoidCallback? onReject;

  const RoomBookingItemActionsSection({
    super.key,
    required this.booking,
    this.onApprove,
    this.onReject,
  });

  @override
  Widget build(BuildContext context) {
    if (!_canApprove()) {
      return const SizedBox.shrink();
    }

    return _buildApprovalActions(context);
  }

  bool _canApprove() {
    final userController = Get.find<UserProfileController>();
    final userGroup = userController.userGroupEnum;

    final canApproveByGroup = userGroup == GroupEnum.laboratoryHead ||
        userGroup == GroupEnum.laboratoryTechnician;

    if (!canApproveByGroup) return false;

    final status = ApprovalStatusEnum.fromString(booking.approvalStatus);
    if (status != ApprovalStatusEnum.pending) return false;

    final bookingDate = booking.date;
    if (bookingDate == null) return false;

    final today = DateTime.now();
    final todayDate = DateTime(today.year, today.month, today.day);
    final bookingDateOnly =
        DateTime(bookingDate.year, bookingDate.month, bookingDate.day);

    return bookingDateOnly.isAfter(todayDate);
  }

  Widget _buildApprovalActions(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: context.tertiaryContainer,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: context.tertiary,
          width: 0.5,
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.admin_panel_settings_outlined,
            size: 16,
            color: context.onTertiaryContainer,
          ),
          const SizedBox(width: 8),
          Text(
            'roomBooking'.message('approvalActions'),
            style: context.labelMediumW(500).copyWith(
                  color: context.onTertiaryContainer,
                ),
          ),
          const Spacer(),
          _buildActionButtons(context),
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildRejectButton(context),
        const SizedBox(width: 8),
        _buildApproveButton(context),
      ],
    );
  }

  Widget _buildRejectButton(BuildContext context) {
    return SizedBox(
      height: 32,
      child: ElevatedButton.icon(
        onPressed: onReject,
        style: ElevatedButton.styleFrom(
          backgroundColor: context.error,
          foregroundColor: context.onError,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          minimumSize: Size.zero,
          visualDensity: VisualDensity.compact,
        ),
        icon: const Icon(Icons.close, size: 14),
        label: Text(
          'roomBooking'.message('reject'),
          style: context.labelSmallW(500),
        ),
      ),
    );
  }

  Widget _buildApproveButton(BuildContext context) {
    return SizedBox(
      height: 32,
      child: ElevatedButton.icon(
        onPressed: onApprove,
        style: ElevatedButton.styleFrom(
          backgroundColor: context.tertiary,
          foregroundColor: context.onTertiary,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          minimumSize: Size.zero,
          visualDensity: VisualDensity.compact,
        ),
        icon: const Icon(Icons.check, size: 14),
        label: Text(
          'roomBooking'.message('approve'),
          style: context.labelSmallW(500),
        ),
      ),
    );
  }
}
