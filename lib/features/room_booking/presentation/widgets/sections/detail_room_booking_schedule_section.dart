import 'package:flutter/material.dart';
import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/features/room_booking/presentation/_helpers/_internal_time_formatting_helper.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailRoomBookingScheduleSection extends StatelessWidget {
  final RoomBookingEntity booking;

  const DetailRoomBookingScheduleSection({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCardItemWidget(
      backgroundColor: context.surface,
      padding: const EdgeInsets.all(8),
      mainContent: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionHeader(context),
          const SizedBox(height: 12),
          _buildScheduleContent(context),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.schedule,
          size: 20,
          color: context.primary,
        ),
        const SizedBox(width: 8),
        Text(
          'roomBooking'.message('scheduleInfo'),
          style: context.bodyLargeW(600).copyWith(color: context.primary),
        ),
      ],
    );
  }

  Widget _buildScheduleContent(BuildContext context) {
    return Column(
      children: [
        _buildInfoRow(
          context,
          'roomBooking'.label('date'),
          DateHelper.formatDayMonthYear(date: booking.date),
        ),
        const SizedBox(height: 12),
        _buildInfoRow(
          context,
          'roomBooking'.label('startTime'),
          InternalTimeFormattingHelper.formatTime(booking.startTime),
        ),
        const SizedBox(height: 12),
        _buildInfoRow(
          context,
          'roomBooking'.label('endTime'),
          InternalTimeFormattingHelper.formatTime(booking.endTime),
        ),
        if (booking.approvalNotes != null) ...[
          _buildInfoRow(
            context,
            'roomBooking'.label('approvalNotes'),
            booking.approvalNotes ?? '',
          ),
        ],
      ],
    );
  }

  Widget _buildInfoRow(BuildContext context, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 120,
          child: Text(
            label,
            style: context.bodyMediumW(500).copyWith(
                  color: context.onSurface.withValues(alpha: 0.7),
                ),
          ),
        ),
        Text(' : ', style: context.bodyMediumW(500)),
        Expanded(
          child: Text(
            value,
            style: context.bodyMediumW(400),
          ),
        ),
      ],
    );
  }
}
