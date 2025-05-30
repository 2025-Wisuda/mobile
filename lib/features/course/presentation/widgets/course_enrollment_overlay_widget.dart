// Flutter imports:

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
// Flutter imports:
import 'package:flutter/material.dart';
// Project imports:
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/helpers/helper.dart';

class EnrollmentOverlay extends StatelessWidget {
  final String courseId;

  const EnrollmentOverlay({super.key, required this.courseId});

  @override
  Widget build(BuildContext context) {
    final title = i18n.tr('features.course.text.enrollRequired');
    final message = i18n.tr('features.course.text.yourMustBeEnrolled');

    return Center(
      child: AlertDialog(
        backgroundColor: context.primaryContainer,
        title: Text(title, style: context.bodyLargeW(500)),
        content: Column(
          spacing: 16,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(message, style: context.bodyMediumW(500)),
            CourseFormEnrollWidget(showLabelText: false),
          ],
        ),
        actions: [CourseEnrollButtonWidget(courseId: courseId)],
      ),
    ).pb(64);
  }
}
