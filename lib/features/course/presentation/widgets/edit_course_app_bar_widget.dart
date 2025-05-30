// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/course/presentation/controllers/course_controller.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/app_bar/custom_app_bar_widget.dart';

class EditCourseAppBarWidget extends StatelessWidget {
  const EditCourseAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();
    final title = i18n.tr('features.course.text.updateCourse');
    return CustomUserAppBarWidget(
      titleAppBar: title,
      onTapBackButton: () {
        courseController.currentStep.value = 0;
        courseController.clearSaveCourse();
      },
      actionButton: Obx(() {
        return IconButton(
          onPressed: () {
            if (courseController.isSaveCourseRequestFormValid.value) {
              courseController.executeUpdateCourse(
                courseId: courseController.courseId.value,
              );
            }
          },
          icon: Icon(
            Icons.save_sharp,
            size: 32,
            color:
                courseController.isSaveCourseRequestFormValid.value
                    ? context.primary
                    : context.inversePrimary,
          ),
        );
      }),
    );
  }
}
