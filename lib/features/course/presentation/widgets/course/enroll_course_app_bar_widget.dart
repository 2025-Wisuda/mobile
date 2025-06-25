import 'package:flutter/material.dart';

import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/app_bar/custom_app_bar_widget.dart';
import 'package:mobile/shared/widgets/widget.dart';

class EnrollCourseAppBarWidget extends StatelessWidget {
  final CourseEntity courseEntity;
  const EnrollCourseAppBarWidget({super.key, required this.courseEntity});

  @override
  Widget build(BuildContext context) {
    return CustomAppBarWithBorder(
      title: courseEntity.title ?? 'course'.message('enrollCourse'),
    );
  }
}
