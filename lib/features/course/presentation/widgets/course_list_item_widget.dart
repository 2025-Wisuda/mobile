// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/features/course/domain/entities/course_entity.dart';
import 'package:mobile/features/course/presentation/widgets/course_item_widget.dart';

class CourseListItemWidget extends StatelessWidget {
  final List<CourseEntity> courses;

  const CourseListItemWidget({super.key, required this.courses});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: courses.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        return CourseItemWidget(course: courses[index]);
      },
    );
  }
}
