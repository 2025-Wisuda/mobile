import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CourseSessionItemWidget extends StatelessWidget {
  final CourseSessionEntity session;
  final CourseEntity course;

  const CourseSessionItemWidget({
    super.key,
    required this.session,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCardItemWidget(
      mainContent: _buildMain(context),
      backgroundColor: context.surfaceContainerLow,
      showBorder: false,
      trailingSection: CardSectionHelpers.trailingArrow(context),
      padding: const EdgeInsets.all(16),
      onTap: () => Get.toNamed(
        AppRoute.detailCourseSession,
        parameters: {
          'courseId': course.id ?? '',
          'courseSessionId': session.id ?? ''
        },
      ),
    );
  }

  Widget _buildMain(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        CardSectionHelpers.titleSubtitle(
          context,
          title: session.title ?? '-',
          subtitle: session.description?.isNotEmpty == true
              ? session.description
              : null,
          titleMaxLines: 2,
          subtitleMaxLines: 2,
          titleStyle: context.bodyMediumW(500),
          subtitleStyle: context.bodyMediumW(400).copyWith(
                color: context.onSurfaceVariant,
              ),
        ),
        CardSectionHelpers.metadataRow(
          context,
          icon: Icons.schedule_outlined,
          text: session.dateFullDate,
          size: MetadataSize.medium,
        ),
      ],
    );
  }
}
