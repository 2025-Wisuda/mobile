import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailCourseWidget extends StatelessWidget {
  final CourseEntity? course;

  const DetailCourseWidget({
    super.key,
    this.course,
  });

  @override
  Widget build(BuildContext context) {
    final title = course?.title ?? '-';
    final description = course?.description ?? '';
    final participants =
        '${course?.totalParticipantsStr ?? '-'} ${tr('features.course.text.totalParticipants')}';
    final dateRange = _buildDateRange(course);
    final imageUrl = course?.image;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        if (imageUrl != null && imageUrl.isNotEmpty)
          CustomHeroImageWidget(
            tagId: 'courseImage-${course?.id ?? UniqueKey()}',
            imageUrl: imageUrl,
            width: double.infinity,
            height: 180,
            radius: 8,
          ),
        Text(title, style: context.bodyLargeW(500)),
        if (description.isNotEmpty) CustomExpandableTextWidget(description),
        _buildMetadataItem(
          context,
          icon: Icons.date_range,
          text: dateRange,
        ),
        _buildMetadataItem(
          context,
          icon: Icons.people,
          text: participants,
        ),
        if (course?.recentSessions != null &&
            course?.recentSessions?.isNotEmpty == true) ...[
          SizedBox(height: 4),
          CustomDashedLineWidget(
            color: context.onSurface.withValues(alpha: 0.15),
          ),
          SizedBox(height: 4),
        ],
        CourseSessionListItemWidget(
          courseSessions: course?.recentSessions ?? [],
          course: course ?? CourseEntity(),
        ),
      ],
    );
  }

  Widget _buildMetadataItem(
    BuildContext context, {
    required IconData icon,
    required String text,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, size: 18, color: context.onSurfaceVariant),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: context.bodySmall().copyWith(
                  color: context.onSurfaceVariant,
                ),
          ),
        ),
      ],
    );
  }

  String _buildDateRange(CourseEntity? course) {
    final start = course?.startDateFormatted;
    final end = course?.endDateFormatted;
    if (start != null && end != null) {
      return '$start - $end';
    } else if (start != null) {
      return start;
    } else if (end != null) {
      return end;
    }
    return '-';
  }
}
