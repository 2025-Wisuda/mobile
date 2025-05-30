// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/course/presentation/controllers/course_controller.dart';
import 'package:mobile/shared/helpers/extensions/theme_color_extension_helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CourseFormEnrollWidget extends StatelessWidget {
  final bool showLabelText;
  final Color? fillColor;
  final bool requiredField;
  const CourseFormEnrollWidget({
    super.key,
    this.showLabelText = true,
    this.fillColor,
    this.requiredField = true,
  });

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();
    final label = i18n.tr('features.course.form.label.enrollKey');
    final hint = i18n.tr('features.course.form.hint.enrollKey');

    return Obx(
      () => CustomTextFormFieldWidget(
        requiredField: requiredField,
        controller: courseController.enrollKeyController.value,
        focusNode: courseController.enrollKeyFocusNode.value,
        onChanged: (value) => courseController.validateEnrollKey(value),
        labelText: showLabelText ? label : null,
        hintText: hint,
        keyboardType: TextInputType.text,
        fillColor: fillColor ?? context.surface,
      ),
    );
  }
}
