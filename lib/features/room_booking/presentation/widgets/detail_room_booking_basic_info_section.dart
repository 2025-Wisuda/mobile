import 'package:flutter/material.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailRoomBookingBasicInfoSection extends StatelessWidget {
  final RoomBookingEntity booking;

  const DetailRoomBookingBasicInfoSection({
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
          _buildBasicInfoContent(context),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.info_outline,
          size: 20,
          color: context.primary,
        ),
        const SizedBox(width: 8),
        Text(
          'roomBooking'.message('basicInformation'),
          style: context.bodyLargeW(600).copyWith(color: context.primary),
        ),
      ],
    );
  }

  Widget _buildBasicInfoContent(BuildContext context) {
    return Column(
      children: [
        if (booking.purpose != null && booking.purpose!.isNotEmpty) ...[
          _buildInfoRow(
            context,
            'roomBooking'.label('purpose'),
            booking.purpose ?? 'roomBooking'.message('notAvailable'),
          ),
          const SizedBox(height: 12),
        ],
        if (booking.bookerName != null && booking.bookerName!.isNotEmpty) ...[
          _buildInfoRow(
            context,
            'roomBooking'.label('booker'),
            booking.bookerName ?? 'roomBooking'.message('notAvailable'),
          ),
          const SizedBox(height: 12),
        ],
        if (booking.bookerIdentifier != null &&
            booking.bookerIdentifier!.isNotEmpty) ...[
          _buildInfoRow(
            context,
            'roomBooking'.label('bookerIdentifier'),
            booking.bookerIdentifier ?? 'roomBooking'.message('notAvailable'),
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
