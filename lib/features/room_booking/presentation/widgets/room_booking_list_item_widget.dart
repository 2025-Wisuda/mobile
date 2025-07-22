import 'package:flutter/material.dart';
import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/presentation/widgets/room_booking_item_widget.dart';

class RoomBookingListItemWidget extends StatelessWidget {
  final List<RoomBookingEntity> bookings;

  const RoomBookingListItemWidget({
    super.key,
    required this.bookings,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      primary: true,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: bookings.length,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final booking = bookings[index];
        return RoomBookingItemWidget(
          booking: booking,
        );
      },
    );
  }
}
