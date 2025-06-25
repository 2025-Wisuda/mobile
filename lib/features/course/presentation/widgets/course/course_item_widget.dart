import 'package:flutter/material.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/presentation/helpers/course_navigation_helper.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CourseItemWidget extends StatelessWidget {
  final CourseEntity course;

  const CourseItemWidget({
    super.key,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCardItemWidget(
      leadingSection: _buildImageSection(context),
      mainContent: _buildMainContent(context),
      trailingSection: CardSectionHelpers.trailingArrow(context),
      backgroundColor: context.surfaceContainerLow,
      leadingAlignment: CrossAxisAlignment.start,
      showBorder: false,
      spacing: 12,
      padding: const EdgeInsets.all(8),
      onTap: () => CourseNavigationHelper.handleCourseNavigation(
        context,
        course,
      ),
    );
  }

  Widget _buildImageSection(BuildContext context) {
    final courseImage = course.imageStr;

    return CustomHeroImageWidget(
      tagId: 'course-${course.id}-${course.hashCode}',
      imageUrl: courseImage,
      width: 64,
      height: 64,
      radius: 8,
    );
  }

  Widget _buildMainContent(BuildContext context) {
    final courseTitle = course.titleUpperStr;
    final totalParticipants = course.totalParticipantsStr;
    final totalSessions = course.totalSessions ?? 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 2,
      children: [
        Text(
          courseTitle,
          style: context.bodyMediumW(500),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        _buildMetadataRow(
            context, totalParticipants.toString(), totalSessions.toString()),
        // _buildDateInfo(context),
      ],
    );
  }

  Widget _buildMetadataRow(
    BuildContext context,
    String totalParticipants,
    String totalSessions,
  ) {
    return Row(
      children: [
        Flexible(
          child: CardSectionHelpers.metadataRow(
            context,
            icon: Icons.people_outline,
            text: '$totalParticipants ${'course'.message('totalParticipants')}',
            size: MetadataSize.medium,
          ),
        ),
        const SizedBox(width: 12),
        Flexible(
          child: CardSectionHelpers.metadataRow(
            context,
            icon: Icons.event_note_outlined,
            text: '$totalSessions ${'course'.message('totalSessions')}',
            size: MetadataSize.medium,
          ),
        ),
      ],
    );
  }

  // Widget _buildDateInfo(BuildContext context) {
  //   final startDate = course.startDate;
  //   final endDate = course.endDate;

  //   if (startDate != null || endDate != null) {
  //     return CardSectionHelpers.metadataRow(
  //       context,
  //       icon: Icons.schedule_outlined,
  //       text: DateHelper.formatDateRange(startDate, endDate),
  //       size: MetadataSize.medium,
  //     );
  //   }

  //   return const SizedBox.shrink();
  // }
}
