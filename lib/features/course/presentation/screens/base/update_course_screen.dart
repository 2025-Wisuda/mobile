import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class UpdateCourseScreen extends StatelessWidget {
  final String courseId;
  const UpdateCourseScreen({super.key, required this.courseId});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CourseFormController>();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: _buildAppBar(context, controller),
      ),
      body: UpdateCourseWrapperWidget(
        controller: controller,
        courseId: courseId,
      ),
    );
  }

  Widget _buildAppBar(BuildContext context, CourseFormController controller) {
    final title = 'course'.message('updateCourse');
    return CustomAppBarWithBorder(
      title: title,
      onBackPressed: () {
        Get.back();
        Future.microtask(() {
          controller.clearForm();
          controller.resetState();
        });
      },
      actions: [
        Obx(() {
          return IconButton(
            onPressed: () {
              if (controller.isFormValid) {
                controller.submitForm();
              }
            },
            icon: Icon(
              Icons.save_sharp,
              size: 32,
              color: controller.isFormValid
                  ? context.primary
                  : context.inversePrimary,
            ),
          );
        }),
        const SizedBox(width: 8),
      ],
    );
  }
}
