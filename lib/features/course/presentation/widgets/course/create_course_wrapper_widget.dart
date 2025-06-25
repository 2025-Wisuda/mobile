import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/course/course_stepper_widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';

class CreateCourseWrapperWidget extends StatelessWidget {
  final CourseFormController c;
  const CreateCourseWrapperWidget({super.key, required this.c});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CourseStepperWidget(c: c, mode: CourseFormMode.create),
          _buildStateHandler(context, c),
        ],
      ),
    );
  }

  Widget _buildStateHandler(BuildContext context, CourseFormController c) {
    return Obx(() {
      final state = c.state;
      final errorMessage = c.errorMessage ?? '';

      switch (state) {
        case SubmitStateEnum.success:
          Future.microtask(() {
            if (context.mounted) _handleSuccessState(context);
          });
        case SubmitStateEnum.failure:
          Future.microtask(() {
            if (context.mounted) _handleFailureState(context, errorMessage, c);
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
    c.clearForm();
    c.resetState();
    c.resetStepper();
  }

  void _handleFailureState(
      BuildContext context, String errorMessage, CourseFormController c) {
    context.showCustomSnackbar(
      message: errorMessage,
      type: SnackbarType.error,
    );
    c.resetState();
    c.resetStepper();
    c.clearForm();
  }
}
