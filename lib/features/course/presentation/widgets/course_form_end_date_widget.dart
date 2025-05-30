// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/course/presentation/controllers/course_controller.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CourseFormEndDateWidget extends StatelessWidget {
  final bool? isEnabled;
  const CourseFormEndDateWidget({super.key, this.isEnabled});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();
    final label = tr('features.course.form.label.endDate');
    final hint = tr('features.course.form.hint.endDate');

    return Obx(
      () => GestureDetector(
        onTap: () => courseController.pickEndDate(context),
        child: AbsorbPointer(
          child: CustomTextFormFieldWidget(
            enabled:
                isEnabled ?? courseController.selectedStartDate.value != null,
            controller: courseController.endDateController.value,
            focusNode: courseController.endDateFocusNode.value,
            labelText: label,
            hintText: hint,
            onChanged: (value) => courseController.validateEndDate(value),
            keyboardType: TextInputType.datetime,
          ),
        ),
      ),
    );
  }
}
