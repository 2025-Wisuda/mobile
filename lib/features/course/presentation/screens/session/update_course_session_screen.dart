import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

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
    final controller = Get.find<CourseSessionFormController>();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: _buildAppBar(context, controller),
      ),
      body: UpdateCourseSessionWrapperWidget(
        controller: controller,
        courseId: courseId,
        courseSessionId: courseSessionId,
      ),
    );
  }

  Widget _buildAppBar(
      BuildContext context, CourseSessionFormController controller) {
    final title = 'course'.message('updateCourseSession');
    return CustomAppBarWithBorder(
      title: title,
      onBackPressed: () {
        Get.back();
      },
      actions: [
        Obx(() {
          final isFormValid = controller.reactiveFormValid.value;
          return IconButton(
            onPressed: () {
              if (isFormValid) {
                controller.submitForm();
              }
            },
            icon: Icon(
              Icons.save_sharp,
              size: 32,
              color: isFormValid ? context.primary : context.inversePrimary,
            ),
          );
        }),
        const SizedBox(width: 8),
      ],
    );
  }
}
