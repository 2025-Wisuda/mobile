// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/shared/routes/app_route.dart';
import 'package:mobile/shared/widgets/widget.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart'
    show CourseController;

class ListCourseAppBarWidget extends StatelessWidget {
  const ListCourseAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();

    Future.microtask(() {
      courseController.fetchUserGroup();
    });
    return CustomUserAppBarWidget(
      titleAppBar: i18n.tr('features.menu.course'),
      actionButton: Obx(() {
        final userGroup = courseController.userGroup.value;
        final isTeachingAssistant =
            userGroup.isNotEmpty && userGroup == 'asisten laboratorium';
        debugPrint('isTeachingAssistant: $isTeachingAssistant');
        return isTeachingAssistant
            ? IconButton(
              onPressed: () {
                courseController.initForm();

                Get.toNamed(AppRoute.createCourse);
              },
              icon: Icon(Icons.add_circle_sharp, size: 32),
            )
            : const SizedBox.shrink();
      }),
    );
  }
}
