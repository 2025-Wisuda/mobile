import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CourseSessionCreateButtonWidget extends StatelessWidget {
  final bool isValid;
  final bool isLastStep;
  final VoidCallback? onTap;
  final VoidCallback? continueCallback;

  const CourseSessionCreateButtonWidget({
    super.key,
    required this.isValid,
    required this.isLastStep,
    this.onTap,
    this.continueCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final courseSessionFormController =
          Get.find<CourseSessionFormController>();
      final isSubmitting = courseSessionFormController.isSubmitting;

      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (courseSessionFormController.currentStep.value > 0)
            CustomSubmitButtonWidget(
              buttonType: CustomButtonType.outlined,
              onPressed: isSubmitting
                  ? null
                  : courseSessionFormController.previousStep,
              textButton: 'common'.message('back'),
              width: 100,
              isFormValid: !isSubmitting,
            )
          else
            const SizedBox(width: 100),
          if (isLastStep)
            CustomSubmitButtonWidget(
              onPressed: isSubmitting || !isValid ? null : onTap,
              textButton: isSubmitting
                  ? 'common'.message('saving')
                  : 'course'.message('createNewCourseSession'),
              width: 200,
              isFormValid: isValid && !isSubmitting,
              state: isSubmitting
                  ? SubmitStateEnum.submitting
                  : SubmitStateEnum.initial,
            )
          else
            CustomSubmitButtonWidget(
              onPressed: !isValid ? null : continueCallback,
              textButton: 'common'.message('continue'),
              width: 200,
              isFormValid: isValid,
            ),
        ],
      );
    });
  }
}

class CourseSessionUpdateButtonWidget extends StatelessWidget {
  final bool isValid;
  final bool isLastStep;
  final VoidCallback? onTap;
  final VoidCallback? continueCallback;

  const CourseSessionUpdateButtonWidget({
    super.key,
    required this.isValid,
    required this.isLastStep,
    this.onTap,
    this.continueCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final courseSessionFormController =
          Get.find<CourseSessionFormController>();
      final isSubmitting = courseSessionFormController.isSubmitting;

      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (courseSessionFormController.currentStep.value > 0)
            CustomSubmitButtonWidget(
              buttonType: CustomButtonType.outlined,
              onPressed: isSubmitting
                  ? null
                  : courseSessionFormController.previousStep,
              textButton: 'common'.message('back'),
              width: 100,
              isFormValid: !isSubmitting,
            )
          else
            const SizedBox(width: 100),
          if (isLastStep)
            CustomSubmitButtonWidget(
              onPressed: isSubmitting || !isValid ? null : onTap,
              textButton: isSubmitting
                  ? 'common'.message('saving')
                  : 'course'.message('updateCourseSession'),
              width: 200,
              isFormValid: isValid && !isSubmitting,
              state: isSubmitting
                  ? SubmitStateEnum.submitting
                  : SubmitStateEnum.initial,
            )
          else
            CustomSubmitButtonWidget(
              onPressed: !isValid ? null : continueCallback,
              textButton: 'common'.message('continue'),
              width: 200,
              isFormValid: isValid,
            ),
        ],
      );
    });
  }
}
