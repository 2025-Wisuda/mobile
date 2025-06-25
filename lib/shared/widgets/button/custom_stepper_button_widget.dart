import 'package:flutter/material.dart';

import 'package:mobile/features/course/presentation/widgets/course/course_stepper_widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CustomStepperButtonWidget extends StatelessWidget {
  final bool isValid;
  final bool isLastStep;
  final VoidCallback? onTap;
  final VoidCallback? continueCallback;
  final CourseFormMode mode;

  const CustomStepperButtonWidget({
    super.key,
    required this.isValid,
    required this.isLastStep,
    this.onTap,
    this.continueCallback,
    this.mode = CourseFormMode.create,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSubmitButtonWidget(
      borderRadius: 100,
      onPressed: isValid
          ? () {
              if (isLastStep) {
                onTap?.call();
              } else {
                continueCallback?.call();
              }
            }
          : null,
      isFormValid: isValid,
      height: 52,
      textButton: mode == CourseFormMode.create
          ? (isLastStep ? 'general'.label('create') : 'general'.label('next'))
          : isLastStep
              ? 'general'.label('save')
              : 'general'.label('next'),
    );
  }
}
