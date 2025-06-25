import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/room_booking/domain/entities/room_booking_entity.dart';
import 'package:mobile/features/room_booking/presentation/widgets/room_booking_item_booker_section.dart';
import 'package:mobile/features/room_booking/presentation/widgets/room_booking_item_content_section.dart';
import 'package:mobile/features/room_booking/presentation/widgets/room_booking_item_header_section.dart';
import 'package:mobile/features/user/presentation/controllers/user_profile_controller.dart';
import 'package:mobile/shared/enums/approval_status_enum.dart';
import 'package:mobile/shared/enums/group_enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class RoomBookingItemWidget extends StatelessWidget {
  final RoomBookingEntity booking;
  final VoidCallback? onTap;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;
  final VoidCallback? onApprove;
  final VoidCallback? onReject;

  const RoomBookingItemWidget({
    super.key,
    required this.booking,
    this.onTap,
    this.onEdit,
    this.onDelete,
    this.onApprove,
    this.onReject,
  });

  @override
  Widget build(BuildContext context) {
    final isPastBooking = _isPastBooking();

    return CustomCardItemWidget(
      onTap: onTap,
      backgroundColor: isPastBooking
          ? context.surfaceContainerHigh.withValues(alpha: 0.6)
          : context.surfaceContainerLow,
      showBorder: isPastBooking,
      borderColor:
          isPastBooking ? context.outline.withValues(alpha: 0.3) : null,
      spacing: 8,
      padding: const EdgeInsets.all(8),
      mainContent: Opacity(
        opacity: isPastBooking ? 0.7 : 1.0,
        child: _buildMainContent(context),
      ),
      trailingSection: _buildTrailingActions(context),
    );
  }

  Widget _buildMainContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        RoomBookingItemHeaderSection(
          booking: booking,
        ),
        RoomBookingItemContentSection(booking: booking),
        _buildBottomSection(context),
      ],
    );
  }

  Widget _buildBottomSection(BuildContext context) {
    return RoomBookingItemBookerSection(booking: booking);
  }

  Widget _buildTrailingActions(BuildContext context) {
    final userController = Get.find<UserProfileController>();
    final currentUser = userController.userProfile;
    final userGroup = userController.userGroupEnum;

    final isOwner = booking.bookerIdentifier == currentUser?.studentNumber ||
        booking.bookerIdentifier == currentUser?.employeeNumber;

    final canApproveByGroup = userGroup == GroupEnum.laboratoryHead ||
        userGroup == GroupEnum.laboratoryTechnician;
    final canApproveBooking = _canApproveBooking();
    final canApprove = canApproveByGroup && canApproveBooking;

    final canEdit = isOwner && _canEditOrDelete();

    if (canApprove) {
      return _buildApprovalIconButtons(context);
    } else if (canEdit) {
      return _buildEditDeleteIconButtons(context);
    }

    return const SizedBox.shrink();
  }

  Widget _buildApprovalIconButtons(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: onReject,
          style: IconButton.styleFrom(
            backgroundColor: context.errorContainer,
            foregroundColor: context.error,
            padding: const EdgeInsets.all(8),
            minimumSize: const Size(32, 32),
          ),
          icon: const Icon(Icons.close, size: 16),
          tooltip: 'roomBooking'.message('reject'),
        ),
        const SizedBox(height: 4),
        IconButton(
          onPressed: onApprove,
          style: IconButton.styleFrom(
            backgroundColor: context.primaryContainer,
            foregroundColor: context.primary,
            padding: const EdgeInsets.all(8),
            minimumSize: const Size(32, 32),
          ),
          icon: const Icon(Icons.check, size: 16),
          tooltip: 'roomBooking'.message('approve'),
        ),
      ],
    );
  }

  Widget _buildEditDeleteIconButtons(BuildContext context) {
    final canEdit = _canEditOrDelete();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: canEdit ? onEdit : null,
          style: IconButton.styleFrom(
            backgroundColor: canEdit
                ? context.primaryContainer
                : context.surfaceContainerHigh,
            foregroundColor: canEdit
                ? context.primary
                : context.onSurface.withValues(alpha: 0.4),
            padding: const EdgeInsets.all(8),
            minimumSize: const Size(32, 32),
          ),
          icon: const Icon(Icons.edit, size: 16),
          tooltip: 'common'.message('edit'),
        ),
        const SizedBox(height: 4),
        IconButton(
          onPressed: canEdit ? onDelete : null,
          style: IconButton.styleFrom(
            backgroundColor:
                canEdit ? context.errorContainer : context.surfaceContainerHigh,
            foregroundColor: canEdit
                ? context.error
                : context.onSurface.withValues(alpha: 0.4),
            padding: const EdgeInsets.all(8),
            minimumSize: const Size(32, 32),
          ),
          icon: const Icon(Icons.delete, size: 16),
          tooltip: 'common'.message('delete'),
        ),
      ],
    );
  }

  bool _canApproveBooking() {
    final status = ApprovalStatusEnum.fromString(booking.approvalStatus);

    if (status != ApprovalStatusEnum.pending) {
      return false;
    }

    final bookingDate = booking.date;
    if (bookingDate == null) {
      return false;
    }

    final today = DateTime.now();
    final todayDate = DateTime(today.year, today.month, today.day);
    final bookingDateOnly =
        DateTime(bookingDate.year, bookingDate.month, bookingDate.day);

    final result = !bookingDateOnly.isBefore(todayDate);

    return result;
  }

  bool _canEditOrDelete() {
    if (booking.createdAt == null) return false;

    final now = DateTime.now();
    final createdAt = booking.createdAt!;
    final difference = now.difference(createdAt);

    return difference.inMinutes <= 5;
  }

  bool _isPastBooking() {
    final bookingDate = booking.date;
    final endTime = booking.endTime;

    if (bookingDate == null) return false;

    final now = DateTime.now();

    if (endTime != null && endTime.isNotEmpty) {
      try {
        final endTimeParts = endTime.split(':');
        final endHour = int.parse(endTimeParts[0]);
        final endMinute = int.parse(endTimeParts[1]);

        final bookingEndDateTime = DateTime(
          bookingDate.year,
          bookingDate.month,
          bookingDate.day,
          endHour,
          endMinute,
        );

        return now.isAfter(bookingEndDateTime);
      } catch (e) {
        final bookingDateOnly =
            DateTime(bookingDate.year, bookingDate.month, bookingDate.day);
        final todayDate = DateTime(now.year, now.month, now.day);
        return bookingDateOnly.isBefore(todayDate);
      }
    }

    final bookingDateOnly =
        DateTime(bookingDate.year, bookingDate.month, bookingDate.day);
    final todayDate = DateTime(now.year, now.month, now.day);
    return bookingDateOnly.isBefore(todayDate);
  }
}
