import 'package:flutter/material.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/shared/extensions/extension.dart';

class DetailCourseSessionAttendanceWidget extends StatelessWidget {
  final CourseSessionAttendanceEntity attendance;

  const DetailCourseSessionAttendanceWidget({
    super.key,
    required this.attendance,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        _buildStudentInfo(context),
        const Divider(height: 32),
        _buildAttendanceDetails(context),
      ],
    );
  }

  Widget _buildAttendanceDetails(BuildContext context) {
    final markedAt = attendance.markedAtFormatted;
    final markedBy = attendance.markedBy;
    final isManualOverride = attendance.manualAttendanceOverride;
    final confidencePercentage = attendance.faceRecognitionConfidence;

    final cleanConfidence =
        confidencePercentage?.toString().replaceAll('%', '');
    final showConfidencePercentage =
        (double.tryParse(cleanConfidence ?? '0') ?? 0) > 0;

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

    final markedIcon = isManualOverride == true ? iconError : iconSuccess;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        if (markedAt.isNotEmpty)
          _buildDetailRow(
            context,
            icon: Icon(Icons.schedule, size: 16),
            value: '${'course'.label('markedAt')} : $markedAt',
            trailingIcon: markedIcon,
          ),
        if (markedBy != null)
          _buildDetailRow(
            context,
            icon: Icon(Icons.person, size: 16),
            value: '${'course'.label('markedBy')} : $markedBy',
          ),
        if (showConfidencePercentage)
          _buildDetailRow(
            context,
            icon: Icon(Icons.percent, size: 16),
            value: '${'course'.label('confidence')} : $confidencePercentage%',
          ),
      ],
    );
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

  Widget _buildStudentInfo(BuildContext context) {
    final studentName = attendance.student?.name ?? '';
    final studentNumber = attendance.student?.studentNumber ?? '';
    final status = attendance.status;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${'course'.label('studentName')} : $studentName',
          style: context.bodyMediumW(500),
        ),
        Text(
          '${'course'.label('studentNumber')} : $studentNumber',
          style: context.bodyMediumW(500),
        ),
        if (status != null)
          Text(
            '${'course'.label('attendanceStatus')} : $status',
            style: context.bodyMediumW(500).copyWith(
                  color: context.onSurfaceVariant,
                ),
          ),
      ],
    );
  }
}
