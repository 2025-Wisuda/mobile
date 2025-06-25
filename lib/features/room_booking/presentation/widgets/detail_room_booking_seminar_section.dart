import 'package:flutter/material.dart';

import 'package:mobile/features/room_booking/domain/entities/entity.dart';
import 'package:mobile/shared/extensions/extension.dart';

class DetailRoomBookingSeminarSection extends StatefulWidget {
  final RoomBookingEntity booking;

  const DetailRoomBookingSeminarSection({
    super.key,
    required this.booking,
  });

  @override
  State<DetailRoomBookingSeminarSection> createState() =>
      _DetailRoomBookingSeminarSectionState();
}

class _DetailRoomBookingSeminarSectionState
    extends State<DetailRoomBookingSeminarSection> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildExpandableHeader(context),
        _buildExpandableContent(context),
      ],
    );
  }

  Widget _buildExpandableHeader(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => setState(() => _isExpanded = !_isExpanded),
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: _isExpanded
                ? context.primary.withValues(alpha: 0.1)
                : context.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: _isExpanded
                  ? context.primary.withValues(alpha: 0.3)
                  : context.onSurface.withValues(alpha: 0.2),
              width: 1.5,
            ),
          ),
          child: Row(
            children: [
              Icon(
                Icons.school_outlined,
                size: 22,
                color: _isExpanded
                    ? context.primary
                    : context.onSurface.withValues(alpha: 0.8),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  _isExpanded
                      ? 'roomBooking'.message('hideSeminarDetails')
                      : 'roomBooking'.message('showSeminarDetails'),
                  style: context.bodyLargeW(500).copyWith(
                        color:
                            _isExpanded ? context.primary : context.onSurface,
                      ),
                ),
              ),
              Icon(
                _isExpanded ? Icons.expand_less : Icons.expand_more,
                color: _isExpanded
                    ? context.primary
                    : context.onSurface.withValues(alpha: 0.7),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExpandableContent(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: const SizedBox.shrink(),
      secondChild: Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: context.surface.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: context.onSurface.withValues(alpha: 0.1),
          ),
        ),
        child: _buildSeminarDetails(context),
      ),
      crossFadeState:
          _isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 250),
    );
  }

  Widget _buildSeminarDetails(BuildContext context) {
    return Column(
      children: [
        _DetailSeminarContent(booking: widget.booking),
      ],
    );
  }
}

class _DetailSeminarContent extends StatelessWidget {
  final RoomBookingEntity booking;

  const _DetailSeminarContent({required this.booking});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (booking.seminarType != null) ...[
          _buildInfoRow(context, 'roomBooking'.label('seminarType'),
              booking.seminarType ?? 'roomBooking'.message('notAvailable')),
          const SizedBox(height: 8),
        ],
        if (booking.researchTitle != null) ...[
          _buildInfoRow(context, 'roomBooking'.label('researchTitle'),
              booking.researchTitle ?? 'roomBooking'.message('notAvailable')),
          const SizedBox(height: 8),
        ],
        if (booking.supervisorMain != null) ...[
          _buildInfoRow(context, 'roomBooking'.label('supervisorMain'),
              booking.supervisorMain ?? 'roomBooking'.message('notAvailable')),
          const SizedBox(height: 8),
        ],
        if (booking.supervisorSecondary != null) ...[
          _buildInfoRow(
              context,
              'roomBooking'.label('supervisorSecondary'),
              booking.supervisorSecondary ??
                  'roomBooking'.message('notAvailable')),
          const SizedBox(height: 8),
        ],
        if (booking.examiner != null) ...[
          _buildInfoRow(context, 'roomBooking'.label('examiner'),
              booking.examiner ?? 'roomBooking'.message('notAvailable')),
        ],
      ],
    );
  }

  Widget _buildInfoRow(BuildContext context, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 150,
          child: Text(label,
              style: context
                  .bodyMediumW(500)
                  .copyWith(color: context.onSurface.withValues(alpha: 0.7))),
        ),
        Text(' : ', style: context.bodyMediumW(500)),
        Expanded(child: Text(value, style: context.bodyMediumW(400))),
      ],
    );
  }
}
