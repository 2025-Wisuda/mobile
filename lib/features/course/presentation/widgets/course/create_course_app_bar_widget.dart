import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CreateCourseAppBarWidget extends StatelessWidget {
  final CourseFormController c;
  const CreateCourseAppBarWidget({super.key, required this.c});

  @override
  Widget build(BuildContext context) {
    return CustomAppBarWithBorder(
      title: 'course'.message('createNewCourse'),
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
            onPressed: isFormValid
                ? () {
                    c.submitForm();
                  }
                : null,
            icon: Icon(
              Icons.save_rounded,
              size: 32,
              color: isFormValid
                  ? context.primary
                  : context.primary.withValues(alpha: 0.5),
            ),
          );
        }),
        SizedBox(width: 8),
      ],
    );
  }
}
