import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/bindings/binding.dart';
import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/presentation/controllers/controller.dart';
import 'package:mobile/features/room_booking/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

class RoomBookingItemWidget extends StatelessWidget {
  final RoomBookingEntity booking;

  const RoomBookingItemWidget({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
    final isPastBooking = booking.date != null
        ? DateHelper.isPastDateTime(booking.date!, booking.endTime)
        : false;

    return CustomCardItemWidget(
      onTap: () {
        RoomBookingDetailBinding().dependencies();
        final c = Get.find<DetailRoomBookingController>();
        c.clearEntity();
        c.fetchDetail(booking.idStr);
        detailRoomBookingBottomSheetWidget(context, booking.idStr, c);
      },
      backgroundColor: context.surfaceContainerLow,
      showBorder: isPastBooking,
      borderColor:
          isPastBooking ? context.outline.withValues(alpha: 0.3) : null,
      spacing: 8,
      padding: const EdgeInsets.all(8),
      mainContent: Opacity(
        opacity: isPastBooking ? 0.7 : 1.0,
        child: _buildMainContent(context),
      ),
    );
  }

  Widget _buildMainContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        RoomBookingItemContentSection(booking: booking),
        RoomBookingItemBookerSection(booking: booking),
      ],
    );
  }
}
