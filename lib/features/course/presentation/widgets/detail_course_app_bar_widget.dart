// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/core/constants/icon_constant.dart';
import 'package:mobile/features/course/presentation/controllers/course_controller.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/routes/app_route.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailCourseAppBarWidget extends StatelessWidget {
  const DetailCourseAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();
    final title = i18n.tr('features.course.text.detailCourse');

    Future.microtask(() {
      courseController.fetchUserGroup();
    });

    return CustomUserAppBarWidget(
      titlePadding: EdgeInsets.symmetric(horizontal: 64),
      titleAppBar: title,
      onTapBackButton: () {
        courseController.resetState();
        Get.offNamed(AppRoute.course);
        courseController.executeFetchListCourseAlreadyEnroll();
      },
      actionButton: Obx(() {
        final userGroup = courseController.userGroup.value;
        final isTeachingAssistant =
            userGroup.isNotEmpty && userGroup == 'asisten laboratorium';
        debugPrint('isTeachingAssistant: $isTeachingAssistant');
        return isTeachingAssistant
            ? IconButton(
              onPressed: () {
                courseController.initForm(isEdit: true);
                courseController.executeFillFormForUpdate();
                Get.toNamed(AppRoute.editCourse);
              },
              icon: customImageIconWidget(
                imagePath: IconConstant.pencilAltSolidIcon,
                width: 32,
                height: 32,
                color: context.primary,
              ),
            )
            : const SizedBox.shrink();
      }),
    );
  }
}
