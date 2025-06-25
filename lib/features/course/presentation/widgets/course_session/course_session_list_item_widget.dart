import 'package:flutter/material.dart';

import 'package:mobile/features/feature.dart';

class CourseSessionListItemWidget extends StatelessWidget {
  final List<CourseSessionEntity> courseSessions;
  final CourseEntity course;

  const CourseSessionListItemWidget({
    super.key,
    required this.courseSessions,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: courseSessions.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        return CourseSessionItemWidget(
          session: courseSessions[index],
          course: course,
        );
      },
    );
  }
}
