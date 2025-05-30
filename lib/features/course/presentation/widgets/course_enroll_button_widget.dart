// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/core/enums/enum.dart';
import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CourseEnrollButtonWidget extends StatelessWidget {
  final String courseId;
  const CourseEnrollButtonWidget({super.key, required this.courseId});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();

    return Obx(
      () => CustomButtonWidget(
        backgroundColor: WidgetStateProperty.all<Color>(
          courseController.isFormEnrollValid.value
              ? context.primary
              : context.inversePrimary,
        ),
        onPressed:
            courseController.isFormEnrollValid.value
                ? () => courseController.executeEnrollCourse(courseId)
                : null,
        isFormValid: courseController.isFormEnrollValid.value,
        height: 52,
        child:
            courseController.enrollCourseState.value == SubmitStateEnum.loading
                ? customLoadingWidget
                : Text(
                  i18n.tr('features.course.button.enroll'),
                  style: context
                      .bodyMediumW(600)
                      .copyWith(
                        color:
                            courseController.isFormEnrollValid.value
                                ? context.surfaceContainer
                                : context.surface,
                      ),
                ),
      ),
    );
  }
}
