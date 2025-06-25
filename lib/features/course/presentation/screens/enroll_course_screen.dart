import 'package:flutter/material.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';

class EnrollCourseScreen extends StatelessWidget {
  final String courseId;
  final CourseEntity courseEntity;

  const EnrollCourseScreen({
    super.key,
    required this.courseId,
    required this.courseEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: EnrollCourseAppBarWidget(courseEntity: courseEntity),
      ),
      body: EnrollCourseWrapperWidget(courseId: courseId),
    );
  }
}
