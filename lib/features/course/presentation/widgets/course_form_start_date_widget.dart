// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/course/presentation/controllers/course_controller.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CourseFormStartDateWidget extends StatelessWidget {
  const CourseFormStartDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();
    final label = tr('features.course.form.label.startDate');
    final hint = tr('features.course.form.hint.startDate');

    return Obx(
      () => GestureDetector(
        onTap: () => courseController.pickStartDate(context),
        child: AbsorbPointer(
          child: CustomTextFormFieldWidget(
            controller: courseController.startDateController.value,
            focusNode: courseController.startDateFocusNode.value,
            labelText: label,
            hintText: hint,
            onChanged: (value) => courseController.validateStartDate(value),
            keyboardType: TextInputType.datetime,
          ),
        ),
      ),
    );
  }
}
