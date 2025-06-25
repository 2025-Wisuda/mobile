import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';

class CreateCourseSessionScreen extends StatelessWidget {
  final String courseId;
  const CreateCourseSessionScreen({super.key, required this.courseId});

  @override
  Widget build(BuildContext context) {
    final courseSessionFormController = Get.find<CourseSessionFormController>();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: CreateCourseSessionAppBarWidget(c: courseSessionFormController),
      ),
      body: CreateCourseSessionWrapperWidget(
        c: courseSessionFormController,
        courseId: courseId,
      ),
    );
  }
}
