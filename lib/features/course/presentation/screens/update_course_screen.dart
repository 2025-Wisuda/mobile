import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';

class UpdateCourseScreen extends StatelessWidget {
  final String courseId;
  const UpdateCourseScreen({super.key, required this.courseId});

  @override
  Widget build(BuildContext context) {
    final courseFormController = Get.find<CourseFormController>();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: UpdateCourseAppBarWidget(
          c: courseFormController,
          courseId: courseId,
        ),
      ),
      body: UpdateCourseWrapperWidget(
        c: courseFormController,
        courseId: courseId,
      ),
    );
  }
}
