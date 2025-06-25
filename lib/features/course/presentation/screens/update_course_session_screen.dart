import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';

class UpdateCourseSessionScreen extends StatelessWidget {
  final String courseId;
  final String courseSessionId;
  const UpdateCourseSessionScreen({
    super.key,
    required this.courseId,
    required this.courseSessionId,
  });

  @override
  Widget build(BuildContext context) {
    final courseSessionFormController = Get.find<CourseSessionFormController>();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: UpdateCourseSessionAppBarWidget(
          c: courseSessionFormController,
          courseSessionId: courseSessionId,
        ),
      ),
      body: UpdateCourseSessionWrapperWidget(
        c: courseSessionFormController,
        courseId: courseId,
        courseSessionId: courseSessionId,
      ),
    );
  }
}
