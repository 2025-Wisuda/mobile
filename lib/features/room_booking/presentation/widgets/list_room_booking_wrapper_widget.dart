import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/features/room_booking/room_booking.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ListRoomBookingWrapperWidget extends StatelessWidget {
  final RoomBookingWrapperController c;
  const ListRoomBookingWrapperWidget({super.key, required this.c});

  @override
  Widget build(BuildContext context) {
    return _buildBookingList(context);
  }

  Widget _buildBookingList(BuildContext context) {
    final listController = Get.find<ListRoomBookingController>();

    return Obx(() {
      final state = listController.reactiveState.value;
      final bookings = listController.items;

      switch (state) {
        case FetchStateEnum.loading:
          return _buildLoadingWidget(context);
        case FetchStateEnum.failure:
          return _buildErrorWidget(context, listController.errorMessage);
        case FetchStateEnum.empty:
          return _buildEmptyWidget(context);
        case FetchStateEnum.success:
          return _buildSuccessWidget(context, bookings);
        default:
          return const SizedBox.shrink();
      }
    });
  }

  Widget _buildLoadingWidget(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildErrorWidget(BuildContext context, String message) {
    return customHandlingStateWidget(
      context,
      item: Icon(Icons.error_outline, size: 48, color: context.error),
      title: 'roomBooking'.message('errorTitle'),
      subtitle: message,
    );
  }

  Widget _buildEmptyWidget(BuildContext context) {
    final currentStatus = c.selectedApprovalStatus.value;
    String title;
    String subtitle;

    if (currentStatus != null) {
      switch (currentStatus.toLowerCase()) {
        case 'menunggu':
          title = 'roomBooking'.message('noPendingBookingsTitle');
          subtitle = 'roomBooking'.message('noPendingBookingsSubtitle');
          break;
        case 'disetujui':
          title = 'roomBooking'.message('noApprovedBookingsTitle');
          subtitle = 'roomBooking'.message('noApprovedBookingsSubtitle');
          break;
        case 'ditolak':
          title = 'roomBooking'.message('noRejectedBookingsTitle');
          subtitle = 'roomBooking'.message('noRejectedBookingsSubtitle');
          break;
        default:
          title = 'roomBooking'.message('noBookingsTitle');
          subtitle = 'roomBooking'.message('noBookingsSubtitle');
      }
    } else {
      title = 'roomBooking'.message('noBookingsTitle');
      subtitle = 'roomBooking'.message('noBookingsSubtitle');
    }

    return customHandlingStateWidget(
      context,
      item: Icon(Icons.event_busy_outlined,
          size: 48, color: context.onSurface.withValues(alpha: 0.6)),
      title: title,
      subtitle: subtitle,
    );
  }

  Widget _buildSuccessWidget(BuildContext context, List bookings) {
    return RefreshIndicator(
      onRefresh: () async {
        await c.handleRefresh();
      },
      child: RoomBookingListItemWidget(
        bookings: bookings.cast<RoomBookingEntity>(),
        onTap: (booking) => _showDetailBottomSheet(context, booking),
        onEdit: (booking) => _navigateToUpdate(context, booking),
        onDelete: (booking) => _showDeleteConfirmation(context, booking),
        onApprove: (booking) => _approveBooking(context, booking),
        onReject: (booking) => _rejectBooking(context, booking),
      ),
    );
  }

  void _showDetailBottomSheet(BuildContext context, RoomBookingEntity booking) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: true,
      isDismissible: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        width: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 48),
              child: SingleChildScrollView(
                child: DetailRoomBookingWrapperWidget(
                  roomBookingId: booking.id ?? '',
                ),
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close),
                style: IconButton.styleFrom(
                  backgroundColor: context.surface.withValues(alpha: 0.9),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToUpdate(BuildContext context, RoomBookingEntity booking) {
    Get.toNamed('/room-booking/update', arguments: {'booking': booking});
  }

  void _showDeleteConfirmation(
      BuildContext context, RoomBookingEntity booking) {
    showCustomConfirmDialog(
      context: context,
      title: 'roomBooking'.message('deleteTitle'),
      message: 'roomBooking'.message('deleteMessage'),
      confirmText: 'roomBooking'.message('deleteBooking'),
      cancelText: 'roomBooking'.message('cancel'),
      type: DialogType.destructive,
      icon: Icons.delete_outline,
      onConfirm: () async {
        _deleteBooking(context, booking);
      },
    );
  }

  void _deleteBooking(BuildContext context, RoomBookingEntity booking) async {
    final deleteController = Get.find<DeleteRoomBookingController>();

    try {
      await deleteController.deleteRoomBooking(booking.id!);

      // Refresh data after successful delete
      await c.handleRefresh();

      if (context.mounted) {
        context.showCustomSnackbar(
          message: 'Peminjaman berhasil dihapus',
          type: SnackbarType.success,
        );
      }
    } catch (e) {
      if (context.mounted) {
        context.showCustomSnackbar(
          message: 'Gagal menghapus peminjaman: ${e.toString()}',
          type: SnackbarType.error,
        );
      }
    }
  }

  void _approveBooking(BuildContext context, RoomBookingEntity booking) {
    showCustomConfirmDialog(
      context: context,
      title: 'roomBooking'.message('approveTitle'),
      message: 'roomBooking'.message('approveMessage'),
      confirmText: 'roomBooking'.message('approve'),
      cancelText: 'roomBooking'.message('cancel'),
      type: DialogType.success,
      icon: Icons.check_circle_outline,
      onConfirm: () async {
        await ApprovalRoomBookingHelper.handleApproval(
          context,
          booking.id!,
          onSuccess: () => c.fetchWithFilters(),
        );
      },
    );
  }

  void _rejectBooking(BuildContext context, RoomBookingEntity booking) {
    showCustomConfirmDialog(
      context: context,
      title: 'roomBooking'.message('rejectTitle'),
      message: 'roomBooking'.message('rejectMessage'),
      confirmText: 'roomBooking'.message('reject'),
      cancelText: 'roomBooking'.message('cancel'),
      type: DialogType.destructive,
      icon: Icons.cancel_outlined,
      onConfirm: () async {
        await ApprovalRoomBookingHelper.handleRejection(
          context,
          booking.id!,
          onSuccess: () => c.fetchWithFilters(),
        );
      },
    );
  }
}
