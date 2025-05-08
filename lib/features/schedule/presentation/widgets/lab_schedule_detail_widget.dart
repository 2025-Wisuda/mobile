import 'package:easy_localization/easy_localization.dart'
    show StringTranslateExtension, tr;
import 'package:flutter/material.dart';
import 'package:mobile/core/core.dart';
import 'package:mobile/features/schedule/schedule.dart';
import 'package:mobile/shared/shared.dart';

class LabScheduleDetailWidget extends StatelessWidget {
  final LabScheduleEntity schedule;

  const LabScheduleDetailWidget({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _iconText(
          context,
          icon: Icon(Icons.alarm, color: context.color.onSurface),
          value: '${schedule.startTimeWibStr} - ${schedule.endTimeWibStr}',
        ),
        SizedBox(height: 8),
        _iconText(
          context,
          icon: Icon(Icons.event, color: context.color.onSurface),
          value: DateHelper.getFormattedFullDate(date: schedule.scheduleDate),
        ),
        SizedBox(height: 8),
        _iconText(
          context,
          icon: Icon(
            Icons.label_important_outline,
            color: context.color.onSurface,
          ),
          value: schedule.activityTypeDisplayStr,
        ),
        if (schedule.activityDescription?.isNotEmpty == true)
          Padding(
            padding: const EdgeInsets.only(top: 4, left: 40),
            child: Text(
              schedule.activityDescription!,
              style: context.text.bodySmall,
            ),
          ),
        const Divider(height: 24),
        _infoFooter(context),
      ],
    );
  }

  Widget _iconText(
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
        Expanded(child: Text(value, style: context.text.bodyMedium)),
      ],
    );
  }

  Widget _infoFooter(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${'features.schedule.lab.form.label.createdBy'.tr()} ${schedule.createdByStr}',
          style: context.text.bodySmall,
        ),
        if (schedule.updatedAt != null)
          Text(
            '${'features.schedule.lab.form.label.updatedAt'.tr()} ${DateHelper.formatCompactWithTime(schedule.updatedAt)}',
            style: context.text.bodySmall?.copyWith(
              color: context.color.outline,
            ),
          ),
      ],
    );
  }
}
