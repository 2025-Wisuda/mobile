import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CreateCourseSessionScreen extends StatelessWidget {
  final String courseId;
  const CreateCourseSessionScreen({super.key, required this.courseId});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CourseSessionFormController>();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: _buildAppBar(context, controller),
      ),
      body: CreateCourseSessionWrapperWidget(
        controller: controller,
        courseId: courseId,
      ),
    );
  }

  Widget _buildAppBar(
      BuildContext context, CourseSessionFormController controller) {
    return CustomAppBarWithBorder(
      title: 'course'.message('createNewCourseSession'),
      onBackPressed: () {
        Get.back();
        Future.microtask(() {
          controller.clearForm();
          controller.resetState();
        });
      },
      actions: [
        Obx(() {
          final isFormValid = controller.reactiveFormValid.value;
          return IconButton(
            onPressed: isFormValid
                ? () {
                    controller.submitForm();
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
        const SizedBox(width: 8),
      ],
    );
  }
}
