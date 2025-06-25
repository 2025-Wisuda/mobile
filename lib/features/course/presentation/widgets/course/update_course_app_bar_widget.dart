import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class UpdateCourseAppBarWidget extends StatelessWidget {
  final CourseFormController c;
  final String courseId;
  const UpdateCourseAppBarWidget({
    super.key,
    required this.c,
    required this.courseId,
  });

  @override
  Widget build(BuildContext context) {
    final title = 'course'.message('updateCourse');
    return CustomAppBarWithBorder(
      title: title,
      onBackPressed: () {
        Get.back();
        Future.microtask(() {
          c.clearForm();
          c.resetState();
        });
      },
      actions: [
        Obx(() {
          return IconButton(
            onPressed: () {
              if (c.isFormValid) {
                c.submitForm();
              }
            },
            icon: Icon(
              Icons.save_sharp,
              size: 32,
              color: c.isFormValid ? context.primary : context.inversePrimary,
            ),
          );
        }),
        SizedBox(width: 8),
      ],
    );
  }
}
