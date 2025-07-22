import 'package:flutter/material.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

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
        child: _buildAppBar(context),
      ),
      body: EnrollCourseWrapperWidget(courseId: courseId),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return CustomAppBarWithBorder(
      title: courseEntity.title ?? 'course'.message('enrollCourse'),
    );
  }
}
