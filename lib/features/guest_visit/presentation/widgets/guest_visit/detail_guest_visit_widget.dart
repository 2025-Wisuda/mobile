import 'package:flutter/material.dart';

import 'package:mobile/features/guest_visit/domain/entities/entity.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';

class DetailGuestVisitWidget extends StatelessWidget {
  final GuestVisitEntity visit;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  const DetailGuestVisitWidget({
    super.key,
    required this.visit,
    this.onEdit,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        _buildHandle(context),
        const SizedBox(height: 16),
        _buildHeader(context),
        const SizedBox(height: 16),
        _buildVisitDetails(context),
        const SizedBox(height: 16),
        _buildActionButtons(context),
        SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
      ]),
    );
  }

  Widget _buildHandle(BuildContext context) {
    return Container(
      width: 40,
      height: 4,
      decoration: BoxDecoration(
        color: context.onSurface.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(children: [
      CircleAvatar(
        radius: 24,
        backgroundColor: context.primary.withValues(alpha: 0.1),
        child: Icon(Icons.person, color: context.primary, size: 24),
      ),
      const SizedBox(width: 12),
      Expanded(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(visit.nameDisplay ?? 'Unknown Visitor',
              style: context.bodyLargeW(600)),
          if (visit.visitor != null)
            Text('ID: ${visit.visitor?.id ?? ''}',
                style: context
                    .bodySmallW(400)
                    .copyWith(color: context.onSurface.withValues(alpha: 0.7))),
        ]),
      ),
    ]);
  }

  Widget _buildVisitDetails(BuildContext context) {
    return Column(children: [
      _buildDetailRow(
          context,
          'Date',
          visit.date != null
              ? DateHelper.formatDayMonthYear(date: visit.date!)
              : 'N/A'),
      const SizedBox(height: 8),
      _buildDetailRow(context, 'Time',
          '${visit.startTime ?? 'N/A'} - ${visit.endTime ?? 'N/A'}'),
      const SizedBox(height: 8),
      _buildDetailRow(context, 'Purpose', visit.purpose ?? 'N/A'),
      if (visit.identityDisplay != null &&
          visit.identityDisplay!.isNotEmpty) ...[
        const SizedBox(height: 8),
        _buildDetailRow(context, 'Identity', visit.identityDisplay!),
      ],
      if (visit.paraf != null && visit.paraf!.isNotEmpty) ...[
        const SizedBox(height: 8),
        _buildDetailRow(context, 'Paraf', visit.paraf!),
      ],
    ]);
  }

  Widget _buildDetailRow(BuildContext context, String label, String value) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
          width: 80,
          child: Text(label,
              style: context
                  .bodyMediumW(500)
                  .copyWith(color: context.onSurface.withValues(alpha: 0.7)))),
      Text(' : ', style: context.bodyMediumW(500)),
      Expanded(child: Text(value, style: context.bodyMediumW(400))),
    ]);
  }

  Widget _buildActionButtons(BuildContext context) {
    final canEdit = visit.canEdit ?? false;
    if (!canEdit) return const SizedBox.shrink();

    return Row(children: [
      Expanded(
        child: ElevatedButton.icon(
          onPressed: onEdit,
          icon: Icon(Icons.edit, size: 16),
          label: Text('Edit'),
          style: ElevatedButton.styleFrom(
            backgroundColor: context.primary,
            foregroundColor: context.onPrimary,
          ),
        ),
      ),
      const SizedBox(width: 12),
      Expanded(
        child: OutlinedButton.icon(
          onPressed: onDelete,
          icon: Icon(Icons.delete, size: 16),
          label: Text('Delete'),
          style: OutlinedButton.styleFrom(
            foregroundColor: context.error,
            side: BorderSide(color: context.error),
          ),
        ),
      ),
    ]);
  }
}
