// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;

// Project imports:
import 'package:mobile/core/core.dart';
import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

class LabScheduleDetailWidget extends StatelessWidget {
  final LabScheduleEntity schedule;

  const LabScheduleDetailWidget({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        _content(context, schedule: schedule),
        const Divider(height: 32),
        _footer(context),
      ],
    );
  }

  Widget _content(BuildContext context, {required LabScheduleEntity schedule}) {
    final startToEndTime =
        '${schedule.startTimeWibStr} - ${schedule.endTimeWibStr}';
    final type = schedule.activityTypeDisplayStr;
    final description = schedule.activityDescriptionStr;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        _icon(context, icon: Icon(Icons.alarm), value: startToEndTime),
        _icon(
          context,
          icon: Icon(Icons.event),
          value: schedule.scheduleDateFullDate,
        ),
        _icon(context, icon: Icon(Icons.label_important_outline), value: type),
        Text(description, style: context.bodySmallW(500)).pl(40),
      ],
    );
  }

  Widget _icon(
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

  Widget _footer(BuildContext context) {
    final createdBy =
        '${i18n.tr('features.schedule.lab.form.label.createdBy')} ${schedule.createdByStr}';
    final updatedAt =
        '${i18n.tr('features.schedule.lab.form.label.updatedAt')} ${schedule.createdAtWithTime}';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(createdBy, style: context.bodySmallW(500)),
        if (schedule.updatedAt != null)
          Text(
            updatedAt,
            style: context.bodyMediumW(500).copyWith(color: context.outline),
          ),
      ],
    );
  }
}
