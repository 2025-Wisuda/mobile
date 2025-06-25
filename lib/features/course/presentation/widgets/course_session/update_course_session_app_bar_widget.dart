import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class UpdateCourseSessionAppBarWidget extends StatelessWidget {
  final CourseSessionFormController c;
  final String courseSessionId;
  const UpdateCourseSessionAppBarWidget({
    super.key,
    required this.c,
    required this.courseSessionId,
  });

  @override
  Widget build(BuildContext context) {
    final title = 'course'.message('updateCourseSession');
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
          final isFormValid = c.reactiveFormValid.value;
          return IconButton(
            onPressed: () {
              if (isFormValid) {
                c.submitForm();
              }
            },
            icon: Icon(
              Icons.save_sharp,
              size: 32,
              color: isFormValid ? context.primary : context.inversePrimary,
            ),
          );
        }),
        SizedBox(width: 8),
      ],
    );
  }
}
