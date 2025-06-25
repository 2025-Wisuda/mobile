import 'package:flutter/material.dart';

import 'package:mobile/features/guest_visit/domain/entities/entity.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

class GuestVisitItemWidget extends StatelessWidget {
  final GuestVisitEntity visit;
  final VoidCallback? onTap;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  const GuestVisitItemWidget({
    super.key,
    required this.visit,
    this.onTap,
    this.onEdit,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCardItemWidget(
      mainContent:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        _buildHeader(context),
        const SizedBox(height: 12),
        _buildVisitInfo(context),
        const SizedBox(height: 12),
        _buildActionButtons(context),
      ]),
      onTap: onTap,
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(children: [
      Expanded(
          child: Text(
              visit.nameDisplay ?? 'guestVisit'.message('unknownVisitor'),
              style: context.bodyLargeW(600))),
      _buildStatusChip(context),
    ]);
  }

  Widget _buildStatusChip(BuildContext context) {
    final canEdit = visit.canEdit ?? false;
    final color =
        canEdit ? context.tertiary : context.onSurface.withValues(alpha: 0.6);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Text(
        canEdit ? 'common'.message('editable') : 'common'.message('readOnly'),
        style: context.bodySmallW(500).copyWith(color: color),
      ),
    );
  }

  Widget _buildVisitInfo(BuildContext context) {
    return Column(children: [
      _buildInfoRow(context, 'guestVisit'.label('date'),
          DateHelper.formatDayMonthYear(date: visit.date)),
      const SizedBox(height: 4),
      _buildInfoRow(
          context,
          'guestVisit'.label('time'),
          'common'.messageWith('timeRange', {
            'startTime': visit.startTime ?? 'common'.message('notAvailable'),
            'endTime': visit.endTime ?? 'common'.message('notAvailable'),
          })),
      const SizedBox(height: 4),
      _buildInfoRow(context, 'guestVisit'.label('purpose'),
          visit.purpose ?? 'common'.message('notAvailable')),
      if (visit.identityDisplay?.isNotEmpty == true) ...[
        const SizedBox(height: 4),
        _buildInfoRow(
            context, 'guestVisit'.label('identity'), visit.identityDisplay!),
      ],
    ]);
  }

  Widget _buildInfoRow(BuildContext context, String label, String value) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
          width: 60,
          child: Text(label,
              style: context
                  .bodySmallW(500)
                  .copyWith(color: context.onSurface.withValues(alpha: 0.7)))),
      Text(' : ', style: context.bodySmallW(500)),
      Expanded(child: Text(value, style: context.bodySmallW(400))),
    ]);
  }

  Widget _buildActionButtons(BuildContext context) {
    final canEdit = visit.canEdit ?? false;
    if (!canEdit) return const SizedBox.shrink();

    return Row(children: [
      Expanded(
        child: OutlinedButton.icon(
          onPressed: onEdit,
          icon: Icon(Icons.edit, size: 16),
          label: Text('common'.message('edit')),
          style: OutlinedButton.styleFrom(
            foregroundColor: context.primary,
            side: BorderSide(color: context.primary),
          ),
        ),
      ),
      const SizedBox(width: 8),
      Expanded(
        child: OutlinedButton.icon(
          onPressed: onDelete,
          icon: Icon(Icons.delete, size: 16),
          label: Text('common'.message('delete')),
          style: OutlinedButton.styleFrom(
            foregroundColor: context.error,
            side: BorderSide(color: context.error),
          ),
        ),
      ),
    ]);
  }
}
