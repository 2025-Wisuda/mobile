import 'package:flutter/material.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/shared/enums/room_booking_type_enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

class RoomBookingItemContentSection extends StatelessWidget {
  final RoomBookingEntity booking;

  const RoomBookingItemContentSection({super.key, required this.booking});

  @override
  Widget build(BuildContext context) {
    final bookingTypeEnum = RoomBookingTypeEnum.fromValue(booking.bookingType);
    final isSeminar = bookingTypeEnum == RoomBookingTypeEnum.seminar;

    final title =
        isSeminar ? booking.seminarType ?? '' : booking.bookingType ?? '';

    final subtitle =
        isSeminar ? booking.researchTitle ?? '' : booking.purpose ?? '';

    final dateText = booking.date != null
        ? DateHelper.formatDayMonthYear(date: booking.date!)
        : 'roomBooking'.message('noDate');

    final startTime = DateHelper.formatTime(booking.startTime);
    final endTime = DateHelper.formatTime(booking.endTime);
    final timeRange = (startTime.isNotEmpty && endTime.isNotEmpty)
        ? '$startTime - $endTime'
        : '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 4,
          children: [
            Text(
              title,
              style: context.bodyMediumW(500),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            if (subtitle.isNotEmpty)
              Text(
                subtitle,
                style: context.bodySmallW(400).copyWith(
                      color: context.onSurfaceVariant,
                    ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: CardSectionHelpers.metadataRow(
                context,
                icon: Icons.calendar_today_outlined,
                text: dateText,
                size: MetadataSize.medium,
              ),
            ),
            const SizedBox(width: 16),
            Flexible(
              child: CardSectionHelpers.metadataRow(
                context,
                icon: Icons.access_time_outlined,
                text: timeRange,
                size: MetadataSize.medium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
