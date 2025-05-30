// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;

// Project imports:
import 'package:mobile/core/constants/constant.dart';
import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/lab_schedule_detail_bottom_sheet_widget.dart';
import 'package:mobile/shared/shared.dart';

class LabScheduleItemWidget extends StatelessWidget {
  final LabScheduleEntity schedule;

  const LabScheduleItemWidget({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    final description =
        schedule.activityDescriptionStr.isNotEmpty
            ? Text(
              schedule.activityDescriptionStr,
              style: context.bodySmallW(400),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
            : null;
    final type = schedule.activityTypeDisplayStr;
    final startTime =
        schedule.startTimeStr.isNotEmpty
            ? schedule.startTimeStr
            : i18n.tr('features.schedule.lab.form.label.startTime');

    Color leadingColor = context.primaryContainer;
    try {
      final now = DateTime.now();
      final nowDateStr =
          "${now.year.toString().padLeft(4, '0')}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}";
      final nowTimeStr =
          "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}";

      final scheduleDateStr = schedule.scheduleDateStr.split('T').first;
      final startTimeStr = schedule.startTimeStr;
      final endTimeStr = schedule.endTimeStr;

      if (nowDateStr == scheduleDateStr) {
        if (nowTimeStr.compareTo(endTimeStr) > 0) {
          leadingColor = context.shadow;
        } else if (nowTimeStr.compareTo(startTimeStr) < 0) {
          leadingColor = context.primaryContainer;
        } else {
          leadingColor = context.tertiaryContainer;
        }
      } else if (nowDateStr.compareTo(scheduleDateStr) > 0) {
        leadingColor = context.shadow;
      } else {
        leadingColor = context.primaryContainer;
      }
    } catch (_) {
      leadingColor = context.primaryContainer;
    }

    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
        side: BorderSide(color: context.shadow),
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
        ),
        onTap: () {
          labScheduleDetailBottomSheetWidget(context, schedule.idStr);
        },
        leading: Container(
          width: 66,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: leadingColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            startTime,
            style: context.bodyMediumW(500),
            textAlign: TextAlign.center,
          ),
        ),
        title: Text(
          type,
          style: context.bodyMediumW(500),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: description,
        trailing: Icon(Icons.chevron_right, size: 32),
      ),
    );
  }
}
