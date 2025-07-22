import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CreateCourseScreen extends StatelessWidget {
  const CreateCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CourseFormController>();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: _buildAppBar(context, controller),
      ),
      body: CreateCourseWrapperWidget(
        controller: controller,
      ),
    );
  }

  Widget _buildAppBar(BuildContext context, CourseFormController controller) {
    return CustomAppBarWithBorder(
      title: 'course'.message('createNewCourse'),
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
