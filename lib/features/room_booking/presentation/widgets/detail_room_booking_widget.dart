import 'package:flutter/material.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/presentation/helpers/helper.dart';
import 'package:mobile/features/room_booking/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';

class DetailRoomBookingWidget extends StatelessWidget {
  final RoomBookingEntity booking;
  final String? roomBookingId;

  const DetailRoomBookingWidget({
    super.key,
    required this.booking,
    this.roomBookingId,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailRoomBookingBasicInfoSection(booking: booking),
          const SizedBox(height: 8),
          DetailRoomBookingScheduleSection(booking: booking),
          if (_isBookingTypeSeminar()) ...[
            const SizedBox(height: 8),
            DetailRoomBookingSeminarSection(booking: booking),
          ],
          const SizedBox(height: 8),
          DetailRoomBookingApprovalSection(booking: booking),
          ApprovalRoomBookingHelper.buildStateHandler(context),
        ],
      ),
    );
  }

  bool _isBookingTypeSeminar() {
    final bookingType = RoomBookingTypeEnum.fromValue(booking.bookingType);
    return bookingType == RoomBookingTypeEnum.seminar;
  }
}
