import 'package:flutter/material.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/presentation/helpers/course_navigation_helper.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CourseGridItemWidget extends StatelessWidget {
  final CourseEntity course;

  const CourseGridItemWidget({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return CustomCardItemWidget(
      layout: CardLayout.column,
      leadingSection: _buildImageSection(context),
      mainContent: _buildContentSection(context),
      backgroundColor: context.surfaceContainerLow,
      showBorder: true,
      spacing: 0,
      expandMainContent: true,
      padding: const EdgeInsets.all(0),
      onTap: () => CourseNavigationHelper.handleCourseNavigation(
        context,
        course,
      ),
    );
  }

  Widget _buildImageSection(BuildContext context) {
    final courseImage = course.imageStr;
    final totalParticipants = course.totalParticipants;

    return SizedBox(
      height: 120,
      width: double.infinity,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: CustomHeroImageWidget(
              tagId: 'course-grid-${course.id}-${course.hashCode}',
              imageUrl: courseImage,
              width: double.infinity,
              height: 120,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  context.scrim.withValues(alpha: 0.3),
                ],
              ),
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: CardSectionHelpers.statusBadge(
              context,
              icon: Icons.people_outline,
              label: totalParticipants.toString(),
              backgroundColor: context.outline,
              textColor: context.onSurface,
              size: StatusBadgeSize.medium,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContentSection(BuildContext context) {
    final courseTitle = course.titleUpperStr;
    final totalSessions = course.totalSessions ?? 0;
    final startDate = course.startDate;
    final endDate = course.endDate;

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              courseTitle,
              style: context.bodyMediumW(500),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(height: 8),
          _buildBottomInfoWithArrow(context, totalSessions, startDate, endDate),
        ],
      ),
    );
  }

  Widget _buildBottomInfoWithArrow(BuildContext context, int totalSessions,
      DateTime? startDate, DateTime? endDate) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            spacing: 2,
            children: [
              CardSectionHelpers.metadataRow(
                context,
                icon: Icons.event_note_outlined,
                text: '$totalSessions ${'course'.message('totalSessions')}',
                size: MetadataSize.medium,
              ),
              if (startDate != null || endDate != null)
                CardSectionHelpers.metadataRow(
                  context,
                  icon: Icons.schedule_outlined,
                  text: DateHelper.formatDateRange(startDate, endDate),
                  size: MetadataSize.medium,
                ),
            ],
          ),
        ),
        CardSectionHelpers.trailingArrow(context, size: 14),
      ],
    );
  }
}
