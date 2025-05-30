// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/features/course/domain/entities/course_entity.dart';
import 'package:mobile/features/course/presentation/widgets/course_grid_item_widget.dart';

class CourseGridListWidget extends StatelessWidget {
  final List<CourseEntity> courses;

  const CourseGridListWidget({super.key, required this.courses});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1,
      ),
      itemCount: courses.length,
      itemBuilder: (context, index) {
        return CourseGridItemWidget(course: courses[index]);
      },
    );
  }
}
