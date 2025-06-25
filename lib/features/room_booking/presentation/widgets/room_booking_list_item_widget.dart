import 'package:flutter/material.dart';
import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/presentation/widgets/room_booking_item_widget.dart';

class RoomBookingListItemWidget extends StatelessWidget {
  final List<RoomBookingEntity> bookings;
  final Function(RoomBookingEntity) onTap;
  final Function(RoomBookingEntity)? onEdit;
  final Function(RoomBookingEntity)? onDelete;
  final Function(RoomBookingEntity)? onApprove;
  final Function(RoomBookingEntity)? onReject;

  const RoomBookingListItemWidget({
    super.key,
    required this.bookings,
    required this.onTap,
    this.onEdit,
    this.onDelete,
    this.onApprove,
    this.onReject,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: bookings.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final booking = bookings[index];
        return RoomBookingItemWidget(
          booking: booking,
          onTap: () => onTap(booking),
          onEdit: onEdit != null ? () => onEdit!(booking) : null,
          onDelete: onDelete != null ? () => onDelete!(booking) : null,
          onApprove: onApprove != null ? () => onApprove!(booking) : null,
          onReject: onReject != null ? () => onReject!(booking) : null,
        );
      },
    );
  }
}
