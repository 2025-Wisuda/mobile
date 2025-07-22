import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/base/course_stepper_widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';

class CreateCourseWrapperWidget extends StatelessWidget {
  final CourseFormController controller;
  const CreateCourseWrapperWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CourseStepperWidget(
              controller: controller, mode: CourseFormMode.create),
          _buildStateHandler(context),
        ],
      ),
    );
  }

  Widget _buildStateHandler(BuildContext context) {
    return Obx(() {
      final state = controller.state;
      final errorMessage = controller.errorMessage ?? '';

      switch (state) {
        case SubmitStateEnum.success:
          Future.microtask(() {
            if (context.mounted) _handleSuccessState(context);
          });
        case SubmitStateEnum.failure:
          Future.microtask(() {
            if (context.mounted) _handleFailureState(context, errorMessage);
          });
        default:
      }

      return const SizedBox.shrink();
    });
  }

  void _handleSuccessState(BuildContext context) {
    Get.back();
    context.showCustomSnackbar(
      message: 'course'.success('createCourse'),
      type: SnackbarType.success,
    );
    controller.clearForm();
    controller.resetState();
    controller.resetStepper();
  }

  void _handleFailureState(
    BuildContext context,
    String errorMessage,
  ) {
    context.showCustomSnackbar(
      message: errorMessage,
      type: SnackbarType.error,
    );
    controller.resetState();
    controller.resetStepper();
    controller.clearForm();
  }
}
