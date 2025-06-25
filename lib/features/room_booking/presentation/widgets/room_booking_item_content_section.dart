import 'package:flutter/material.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/shared/enums/room_booking_type_enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

class RoomBookingItemContentSection extends StatelessWidget {
  final RoomBookingEntity booking;

  const RoomBookingItemContentSection({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        _buildTitleSubtitle(context),
        _buildMetadata(context),
      ],
    );
  }

  Widget _buildTitleSubtitle(BuildContext context) {
    final titleSubtitle = _getTitleAndSubtitle();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4,
      children: [
        Text(
          titleSubtitle.title,
          style: context.bodyMediumW(500),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        if (titleSubtitle.subtitle?.isNotEmpty == true)
          Text(
            titleSubtitle.subtitle!,
            style: context.bodySmallW(400).copyWith(
                  color: context.onSurfaceVariant,
                ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
      ],
    );
  }

  Widget _buildMetadata(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: CardSectionHelpers.metadataRow(
            context,
            icon: Icons.calendar_today_outlined,
            text: _getFormattedDate(),
            size: MetadataSize.medium,
          ),
        ),
        const SizedBox(width: 16),
        Flexible(
          child: CardSectionHelpers.metadataRow(
            context,
            icon: Icons.access_time_outlined,
            text: _getFormattedTimeRange(),
            size: MetadataSize.medium,
          ),
        ),
      ],
    );
  }

  _TitleSubtitle _getTitleAndSubtitle() {
    final bookingTypeEnum = RoomBookingTypeEnum.fromValue(booking.bookingType);

    if (bookingTypeEnum == RoomBookingTypeEnum.seminar) {
      final seminarType = booking.seminarType?.isNotEmpty == true
          ? booking.seminarType!
          : 'roomBooking'.message('seminarType');

      final researchTitle = booking.researchTitle?.isNotEmpty == true
          ? booking.researchTitle
          : null;

      return _TitleSubtitle(
        title: seminarType,
        subtitle: researchTitle,
      );
    }

    final bookingType = booking.bookingType?.isNotEmpty == true
        ? booking.bookingType!
        : 'roomBooking'.message('notAvailable');

    final purpose =
        booking.purpose?.isNotEmpty == true ? booking.purpose : null;

    return _TitleSubtitle(
      title: bookingType,
      subtitle: purpose,
    );
  }

  String _getFormattedDate() {
    if (booking.date == null) {
      return 'roomBooking'.message('noDate');
    }
    return DateHelper.formatDayMonthYear(date: booking.date!);
  }

  String _getFormattedTimeRange() {
    final startTime = DateHelper.formatTime(booking.startTime);
    final endTime = DateHelper.formatTime(booking.endTime);

    if (startTime.isEmpty && endTime.isEmpty) {
      return 'roomBooking'.message('notAvailable');
    } else if (startTime.isEmpty) {
      return '- $endTime';
    } else if (endTime.isEmpty) {
      return '$startTime -';
    } else {
      return '$startTime - $endTime';
    }
  }
}

class _TitleSubtitle {
  final String title;
  final String? subtitle;

  const _TitleSubtitle({
    required this.title,
    this.subtitle,
  });
}
