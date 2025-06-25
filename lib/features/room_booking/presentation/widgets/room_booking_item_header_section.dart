import 'package:flutter/material.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';

class RoomBookingItemHeaderSection extends StatelessWidget {
  final RoomBookingEntity booking;

  const RoomBookingItemHeaderSection({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
