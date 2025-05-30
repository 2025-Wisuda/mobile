// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/course/presentation/controllers/course_controller.dart';
import 'package:mobile/features/user/presentation/widgets/widget.dart';

class CourseFormTeachingAssistantsWidget extends StatelessWidget {
  const CourseFormTeachingAssistantsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();
    final hint = i18n.tr('features.course.form.hint.teachingAssistants');
    return UserFormSelectionWidget(
      controller: courseController.teachingAssistantsController,
      focusNode: courseController.teachingAssistantsFocusNode,
      selectedIds: courseController.teachingAssistantsId,
      hint: hint,
    );
  }
}
