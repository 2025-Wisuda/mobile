import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/features/room_booking/presentation/widgets/room_booking_form_widget.dart';
import 'package:mobile/features/user/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';

class DetailRoomBookingApprovalSection extends StatefulWidget {
  final RoomBookingEntity booking;

  const DetailRoomBookingApprovalSection({
    super.key,
    required this.booking,
  });

  @override
  State<DetailRoomBookingApprovalSection> createState() =>
      _DetailRoomBookingApprovalSectionState();
}

class _DetailRoomBookingApprovalSectionState
    extends State<DetailRoomBookingApprovalSection> {
  final approveRoomBookingController = Get.find<ApproveRoomBookingController>();

  @override
  Widget build(BuildContext context) {
    if (!_canApprove()) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        const Divider(),
        _buildSectionHeader(context),
        _buildNotesInput(context),
        _buildActionButtons(context),
      ],
    );
  }

  Widget _buildSectionHeader(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.approval, size: 20, color: context.primary),
        const SizedBox(width: 8),
        Text(
          'roomBooking'.message('approvalActions'),
          style: context.bodyLargeW(600).copyWith(color: context.primary),
        ),
      ],
    );
  }

  Widget _buildNotesInput(BuildContext context) {
    return roomBookingApprovalNotesFieldWidget(approveRoomBookingController);
  }

  Widget _buildActionButtons(BuildContext context) {
    final controller = Get.find<ApproveRoomBookingController>();

    return Obx(() {
      final isSubmitting = controller.isSubmitting;
      final submittingAction = controller.currentAction;

      Widget buildButton({
        required String action,
        required VoidCallback onPressed,
        required Color bgColor,
        required Color fgColor,
        required IconData icon,
        required String label,
      }) {
        final bool isThisActionSubmitting =
            isSubmitting && submittingAction == action;

        return ElevatedButton.icon(
          onPressed: isSubmitting ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            foregroundColor: fgColor,
          ),
          icon: isThisActionSubmitting
              ? SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: fgColor,
                  ),
                )
              : Icon(icon, size: 18),
          label: Text(label),
        );
      }

      return Row(
        children: [
          Expanded(
            child: buildButton(
              action: 'reject',
              onPressed: () => _rejectBooking(),
              bgColor: context.error,
              fgColor: context.onError,
              icon: Icons.close,
              label: 'roomBooking'.message('reject'),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: buildButton(
              action: 'approve',
              onPressed: () => _approveBooking(),
              bgColor: context.primary,
              fgColor: context.onPrimary,
              icon: Icons.check,
              label: 'roomBooking'.message('approve'),
            ),
          ),
        ],
      );
    });
  }

  bool _canApprove() {
    final userController = Get.find<UserProfileController>();
    final userGroup = userController.userGroupEnum;

    final canApproveByGroup = userGroup == GroupEnum.laboratoryHead ||
        userGroup == GroupEnum.laboratoryTechnician;

    if (!canApproveByGroup) return false;

    final status = ApprovalStatusEnum.fromString(widget.booking.approvalStatus);
    if (status != ApprovalStatusEnum.pending) return false;

    final bookingDate = widget.booking.date;
    if (bookingDate == null) return false;

    final today = DateTime.now();
    final todayDate = DateTime(today.year, today.month, today.day);
    final bookingDateOnly =
        DateTime(bookingDate.year, bookingDate.month, bookingDate.day);

    return bookingDateOnly.isAfter(todayDate);
  }

  void _approveBooking() async {
    approveRoomBookingController.setRoomBookingId(widget.booking.id!);
    approveRoomBookingController.validateAllFields();
    await approveRoomBookingController.approveBooking();
  }

  void _rejectBooking() async {
    approveRoomBookingController.setRoomBookingId(widget.booking.id!);
    await approveRoomBookingController.rejectBooking();
  }
}
