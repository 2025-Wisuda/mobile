// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;

// Project imports:
import 'package:mobile/core/constants/constant.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CourseDetailWidget extends StatelessWidget {
  final CourseEntity course;

  const CourseDetailWidget({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        _header(context, course: course),
        CourseSessionListItemWidget(courseSessions: course.sessions ?? []),
      ],
    ).px(8);
  }

  Widget _header(BuildContext context, {required CourseEntity course}) {
    final title = course.titleStr;
    final description = course.descriptionStr;
    final startDate = course.startDateFormatted;
    final endDate = course.endDateFormatted;
    final totalTeachingAssistants = course.totalTeachingAssistantsStr;
    final teachingAssistant = i18n.tr(
      'features.course.text.totalTeachingAssistants',
    );
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusConstant.kDefaultBorderRadius,
        side: BorderSide(color: context.primary),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Text(title, style: context.bodyLargeW(500)),
          if (description.isNotEmpty)
            Text(
              description,
              style: context.bodyMediumW(500),
              textAlign: TextAlign.justify,
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            spacing: 8,
            children: [
              customImageIconWidget(imagePath: IconConstant.dateRangeSolidIcon),
              Text('$startDate - $endDate', style: context.bodyMediumW(500)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            spacing: 8,
            children: [
              customImageIconWidget(imagePath: IconConstant.usersSolidIcon),
              Text(
                '$totalTeachingAssistants $teachingAssistant',
                style: context.bodyMediumW(500),
              ),
            ],
          ),
        ],
      ).p(16),
    );
  }
}
