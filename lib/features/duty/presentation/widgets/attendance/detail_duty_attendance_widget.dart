import 'package:flutter/material.dart';

import 'package:mobile/core/constants/constant.dart';
import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailDutyAttendanceWidget extends StatelessWidget {
  final DutyAttendanceEntity dutyAttendance;

  const DetailDutyAttendanceWidget({super.key, required this.dutyAttendance});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        _buildAssistantInfo(context),
        const Divider(height: 32),
        _buildScheduleDetails(context),
      ],
    );
  }

  Widget _buildScheduleDetails(BuildContext context) {
    final clockInTime = dutyAttendance.clockInTimeFormatted;
    final clockOutTime = dutyAttendance.clockOutTimeFormatted;
    final isManualClockIn = dutyAttendance.manualClockInOverride;
    final isManualClockOut = dutyAttendance.manualClockOutOverride;
    final iconSuccess = Icon(
      Icons.check_circle,
      size: 16,
      color: context.tertiary,
    );
    final iconError = Icon(
      Icons.cancel,
      size: 16,
      color: context.error,
    );

    final clockInIcon = isManualClockIn == true ? iconError : iconSuccess;
    final clockOutIcon = isManualClockOut == true ? iconError : iconSuccess;

    final confidencePercentage = dutyAttendance.confidencePercentage;

    final cleanConfidence = confidencePercentage.replaceAll('%', '');
    final showConfidencePercentage =
        (double.tryParse(cleanConfidence) ?? 0) > 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        _buildDetailRow(context,
            icon: Icon(
              Icons.alarm,
              size: 16,
            ),
            value: '${'dutySchedule'.label('clockInTime')} : $clockInTime',
            trailingIcon: clockInTime.isNotEmpty ? clockInIcon : null),
        _buildDetailRow(context,
            icon: Icon(
              Icons.alarm,
              size: 16,
            ),
            value: '${'dutySchedule'.label('clockOutTime')} : $clockOutTime',
            trailingIcon: clockOutTime.isNotEmpty ? clockOutIcon : null),
        _buildDetailRow(
          context,
          icon: Icon(
            Icons.percent,
            size: 16,
          ),
          value:
              '${'dutySchedule'.label('confidence')} : ${showConfidencePercentage ? '$confidencePercentage%' : ''}',
        ),
      ],
    );
  }

  Widget _buildDetailRow(
    BuildContext context, {
    Widget? icon,
    required String value,
    String? iconPath,
    Widget? trailingIcon,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        icon ??
            customImageIconWidget(
              imagePath: iconPath ?? IconConstant.calendarOutlineIcon,
              width: 16,
              height: 16,
            ),
        Flexible(child: Text(value, style: context.bodySmallW(500))),
        trailingIcon ?? SizedBox.shrink(),
      ],
    );
  }

  Widget _buildAssistantInfo(BuildContext context) {
    final assistantName = dutyAttendance.assistantDisplayName;
    final studentNumber = dutyAttendance.assistantDisplayStudentNumber;
    final status = dutyAttendance.status;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${'dutySchedule'.label('assistantName')} : $assistantName',
          style: context.bodyMediumW(500),
        ),
        Text(
          '${'dutySchedule'.label('studentNumber')} : $studentNumber',
          style: context.bodyMediumW(500),
        ),
        if (status != null)
          Text(
            '${'dutySchedule'.label('assistantAttendance')} : $status',
            style: context
                .bodyMediumW(500)
                .copyWith(color: context.onSurfaceVariant),
          ),
      ],
    );
  }
}
