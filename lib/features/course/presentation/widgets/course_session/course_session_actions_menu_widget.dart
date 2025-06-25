import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/course_session/delete_course_session_wrapper_widget.dart';
import 'package:mobile/shared/widgets/button/custom_menu_actions_widget.dart';

class CourseSessionActionsMenuWidget extends StatelessWidget {
  const CourseSessionActionsMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final courseSessionWrapperController =
        Get.find<CourseSessionWrapperController>();

    return Obx(() {
      if (!courseSessionWrapperController.canShowActionsMenu) {
        return const SizedBox.shrink();
      }

      return CustomMenuActionsWidget(
        type: MenuActionType.courseSession,
        entityId: courseSessionWrapperController.courseSessionId,
        title: courseSessionWrapperController.courseSessionTitle,
        isTeachingAssistant: courseSessionWrapperController.isTeachingAssistant,
        isOwner: courseSessionWrapperController.isCourseSessionOwner,
        onUpdate: (courseSessionWrapperController.isTeachingAssistant ||
                courseSessionWrapperController.isCourseSessionOwner)
            ? () => _handleUpdateCourseSession(courseSessionWrapperController)
            : null,
        onDelete: courseSessionWrapperController.isCourseSessionOwner
            ? () => _handleDeleteCourseSession(
                context, courseSessionWrapperController)
            : null,
      );
    });
  }

  void _handleUpdateCourseSession(CourseSessionWrapperController controller) {
    if (controller.canUpdateCourseSession()) {
      controller.prepareUpdateCourseSession();
      Get.toNamed(AppRoute.updateCourseSession, parameters: {
        'courseId': controller.courseId,
        'courseSessionId': controller.courseSessionId,
      });
    }
  }

  void _handleDeleteCourseSession(
      BuildContext context, CourseSessionWrapperController controller) {
    if (controller.courseSessionId.isNotEmpty) {
      final deleteWrapper = DeleteCourseSessionWrapperWidget(
        courseId: controller.courseId,
        courseSessionId: controller.courseSessionId,
      );
      deleteWrapper.handleDelete(context);
    }
  }
}
