import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/presentation/_helpers/_internal_approval_room_booking_helper.dart';
import 'package:mobile/features/room_booking/presentation/_helpers/_internal_approval_validation_helper.dart';
import 'package:mobile/features/room_booking/presentation/_helpers/_internal_room_booking_navigation_helper.dart';
import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/features/room_booking/presentation/widgets/room_booking_form_widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/button/custom_submit_button_widget.dart';
import 'package:mobile/shared/widgets/card/card.dart';

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
    if (!InternalApprovalValidationHelper.canApprove(widget.booking)) {
      return const SizedBox.shrink();
    }

    return SingleChildScrollView(
      padding: EdgeInsets.only(
        left: 8,
        right: 8,
        top: 8,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      child: CustomCardItemWidget(
        backgroundColor: context.surface,
        padding: EdgeInsets.zero,
        mainContent: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            _buildSectionHeader(context),
            _buildNotesInput(context),
            _buildActionButtons(context),
          ],
        ),
      ),
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

      return Row(
        children: [
          Expanded(
            child: CustomSubmitButtonWidget(
              buttonType: CustomButtonType.elevated,
              onPressed: isSubmitting
                  ? null
                  : () => ApprovalRoomBookingHelper.handleRejection(
                        context,
                        widget.booking.id!,
                        onSuccess: () {
                          RoomBookingNavigationHelper.handleSuccessNavigation();
                        },
                      ),
              textButton: 'roomBooking'.message('reject'),
              isFormValid: true,
              state: isSubmitting && submittingAction == 'reject'
                  ? SubmitStateEnum.loading
                  : SubmitStateEnum.initial,
              backgroundColor: context.errorContainer,
              textColor: context.onErrorContainer,
              height: 48,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: CustomSubmitButtonWidget(
              buttonType: CustomButtonType.elevated,
              onPressed: isSubmitting
                  ? null
                  : () => ApprovalRoomBookingHelper.handleApproval(
                        context,
                        widget.booking.id!,
                        onSuccess: () {
                          RoomBookingNavigationHelper.handleSuccessNavigation();
                        },
                      ),
              textButton: 'roomBooking'.message('approve'),
              isFormValid: true,
              state: isSubmitting && submittingAction == 'approve'
                  ? SubmitStateEnum.loading
                  : SubmitStateEnum.initial,
              backgroundColor: context.tertiaryContainer,
              textColor: context.onTertiaryContainer,
              height: 48,
            ),
          ),
        ],
      );
    });
  }
}
