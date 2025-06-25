import 'package:flutter/material.dart';

import 'package:mobile/core/constants/constant.dart';
import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailLabScheduleWidget extends StatelessWidget {
  final LabScheduleEntity schedule;

  const DetailLabScheduleWidget({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        _buildScheduleDetails(context),
        const Divider(height: 32),
        _buildFooterInfo(context),
      ],
    );
  }

  Widget _buildScheduleDetails(BuildContext context) {
    final startToEndTime = schedule.startToEndTimeFormatted;
    final type = schedule.typeStr;
    final description = schedule.detailStr;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        _buildDetailRow(context,
            icon: Icon(Icons.alarm), value: startToEndTime),
        _buildDetailRow(context,
            icon: Icon(Icons.event), value: schedule.dateFullDate),
        _buildDetailRow(context,
            icon: Icon(Icons.label_important_outline), value: type),
        Text(description, style: context.bodySmallW(500)),
      ],
    );
  }

  Widget _buildDetailRow(
    BuildContext context, {
    Widget? icon,
    required String value,
    String? iconPath,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        icon ??
            customImageIconWidget(
              imagePath: iconPath ?? IconConstant.calendarOutlineIcon,
              width: 24,
              height: 24,
            ),
        Expanded(child: Text(value, style: context.bodyMediumW(500))),
      ],
    );
  }

  Widget _buildFooterInfo(BuildContext context) {
    final createdBy =
        '${'labSchedule'.label('createdBy')}: ${schedule.createdByStr}';
    final updatedAt =
        '${'labSchedule'.label('updatedAt')}: ${schedule.updatedAtFullDate}';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(createdBy, style: context.bodySmallW(500)),
        if (schedule.updatedAt != null)
          Text(
            updatedAt,
            style: context
                .bodySmallW(500)
                .copyWith(color: context.onSurfaceVariant),
          ),
      ],
    );
  }
}
