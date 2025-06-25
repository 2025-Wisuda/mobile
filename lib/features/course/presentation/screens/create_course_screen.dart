import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';

class CreateCourseScreen extends StatelessWidget {
  const CreateCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final courseFormController = Get.find<CourseFormController>();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: CreateCourseAppBarWidget(c: courseFormController),
      ),
      body: CreateCourseWrapperWidget(
        c: courseFormController,
      ),
    );
  }
}
