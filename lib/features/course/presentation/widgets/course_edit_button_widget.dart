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

class CourseEditButtonWidget extends StatelessWidget {
  final VoidCallback? continueCallback;
  const CourseEditButtonWidget({super.key, this.continueCallback});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();
    return Obx(() {
      final isLast = courseController.isLastStep();
      final isValid = courseController.isSaveCourseRequestFormValid.value;
      final next = i18n.tr('general.button.next');
      final create = i18n.tr('general.button.save');

      return CustomButtonWidget(
        backgroundColor: WidgetStateProperty.all<Color>(
          isValid ? context.primary : context.inversePrimary,
        ),
        onPressed:
            isValid
                ? () {
                  if (isLast) {
                    courseController.executeUpdateCourse(
                      courseId: courseController.courseId.value,
                    );
                  } else {
                    continueCallback?.call();
                  }
                }
                : null,
        isFormValid: isValid,
        height: 52,
        child:
            courseController.updateCourseState.value == SubmitStateEnum.loading
                ? customLoadingWidget
                : Text(
                  isLast ? create : next,
                  style: context
                      .bodyMediumW(600)
                      .copyWith(
                        color:
                            isValid
                                ? context.surfaceContainer
                                : context.surface,
                      ),
                ),
      );
    });
  }
}
