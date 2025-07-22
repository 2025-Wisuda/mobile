import 'package:flutter/material.dart';
import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/guest_visit/domain/entities/entity.dart';
import 'package:mobile/features/guest_visit/presentation/_helpers/_internal_delete_guest_visit_helper.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';

class DetailGuestVisitWidget extends StatelessWidget {
  final GuestVisitEntity visit;

  const DetailGuestVisitWidget({
    super.key,
    required this.visit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        _buildVisitorInfo(context),
        const Divider(height: 32),
        _buildVisitDetails(context),
        // _buildActionButtons(context),
      ],
    );
  }

  Widget _buildVisitorInfo(BuildContext context) {
    return Row(children: [
      CircleAvatar(
        radius: 24,
        backgroundColor: context.primary.withValues(alpha: 0.1),
        child: Icon(Icons.person, color: context.primary, size: 24),
      ),
      const SizedBox(width: 12),
      Expanded(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            visit.nameDisplay ?? '',
            style: context.bodyMediumW(500),
          ),
          Text(
            visit.identityDisplay ?? '',
            style: context.bodyMediumW(500),
          ),
        ]),
      ),
    ]);
  }

  Widget _buildVisitDetails(BuildContext context) {
    final date = DateHelper.formatDayMonthYear(
        date: DateTime.tryParse(visit.date ?? ''));
    final startTime = DateHelper.formatTime(visit.startTime!);
    final endTime = DateHelper.formatTime(visit.endTime!);

    final time = '$startTime - $endTime';

    return Column(children: [
      _buildDetailRow(context,
          icon: Icon(Icons.calendar_month, size: 16),
          value: '${'guestVisit'.label('date')} : $date'),
      const SizedBox(height: 8),
      _buildDetailRow(context,
          icon: Icon(Icons.access_time, size: 16),
          value: '${'guestVisit'.label('time')} : $time'),
      const SizedBox(height: 8),
      _buildDetailRow(context,
          icon: Icon(Icons.description, size: 16),
          value: '${'guestVisit'.label('purpose')} : ${visit.purpose ?? ''}'),
      if (visit.paraf != null && visit.paraf!.isNotEmpty) ...[
        const SizedBox(height: 8),
        _buildDetailRow(context,
            icon: Icon(Icons.description, size: 16),
            value: '${'guestVisit'.label('paraf')} : ${visit.paraf ?? ''}'),
      ],
    ]);
  }

  Widget _buildDetailRow(
    BuildContext context, {
    Widget? icon,
    required String value,
    Widget? trailingIcon,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        icon ?? const SizedBox.shrink(),
        Expanded(
          child: Text(
            value,
            style: context.bodySmallW(500),
          ),
        ),
        trailingIcon ?? const SizedBox.shrink(),
      ],
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    final canEdit = visit.canEdit ?? false;
    if (!canEdit) return const SizedBox.shrink();

    return Row(children: [
      Expanded(
        child: ElevatedButton.icon(
          onPressed: () async {
            final result = await Navigator.of(context).pushNamed(
                AppRoute.updateGuestVisit,
                arguments: {'guestVisit': visit});
            if (result != null &&
                result is Map &&
                result['shouldRefresh'] == true) {
              if (context.mounted) {
                Navigator.of(context).pop(result);
              }
            }
          },
          icon: Icon(Icons.edit, size: 16),
          label: Text('guestVisit'.message('updateGuestVisit')),
          style: ElevatedButton.styleFrom(
            backgroundColor: context.primary,
            foregroundColor: context.onPrimary,
          ),
        ),
      ),
      const SizedBox(width: 12),
      Expanded(
        child: OutlinedButton.icon(
          onPressed: () {
            DeleteGuestVisitHelper.showDeleteConfirmation(context, visit,
                onSuccess: () {
              Navigator.of(context).pop({'shouldRefresh': true});
            });
          },
          icon: Icon(Icons.delete, size: 16),
          label: Text('guestVisit'.message('deleteGuestVisit')),
          style: OutlinedButton.styleFrom(
            foregroundColor: context.error,
            side: BorderSide(color: context.error),
          ),
        ),
      ),
    ]);
  }
}
