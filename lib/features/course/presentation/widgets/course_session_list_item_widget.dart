// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/features/course/domain/entities/course_session_entity.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';

class CourseSessionListItemWidget extends StatelessWidget {
  final List<CourseSessionEntity> courseSessions;

  const CourseSessionListItemWidget({super.key, required this.courseSessions});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: courseSessions.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        return CourseSessionItemWidget(courseSession: courseSessions[index]);
      },
    );
  }
}
