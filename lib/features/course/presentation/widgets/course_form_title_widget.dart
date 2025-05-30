// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/course/presentation/controllers/course_controller.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CourseFormTitleWidget extends StatelessWidget {
  const CourseFormTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();
    final label = i18n.tr('features.course.form.label.title');
    final hint = i18n.tr('features.course.form.hint.title');
    return Obx(
      () => CustomTextFormFieldWidget(
        controller: courseController.titleController.value,
        focusNode: courseController.titleFocusNode.value,
        labelText: label,
        hintText: hint,
        keyboardType: TextInputType.text,
        onChanged: (value) => courseController.validateTitle(value),
      ),
    );
  }
}
