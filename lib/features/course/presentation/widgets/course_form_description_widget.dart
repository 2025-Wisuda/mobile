// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/course/presentation/controllers/course_controller.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CourseFormDescriptionWidget extends StatelessWidget {
  const CourseFormDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();
    final label = i18n.tr('features.course.form.label.description');
    final hint = i18n.tr('features.course.form.hint.description');
    return Obx(
      () => CustomMultilineTextFormFieldWidget(
        controller: courseController.descriptionController.value,
        focusNode: courseController.descriptionFocusNode.value,
        labelText: label,
        hintText: hint,
        keyboardType: TextInputType.text,
        maxLines: 4,
        maxLength: 500,
        requiredField: false,
      ),
    );
  }
}
