import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/course/delete_course_wrapper_widget.dart';
import 'package:mobile/shared/widgets/button/custom_menu_actions_widget.dart';

class CourseActionsMenuWidget extends StatelessWidget {
  const CourseActionsMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final courseWrapperController = Get.find<CourseWrapperController>();

    return Obx(() {
      if (!courseWrapperController.canShowActionsMenu) {
        return const SizedBox.shrink();
      }

      return CustomMenuActionsWidget(
        type: MenuActionType.course,
        entityId: courseWrapperController.courseId,
        title: courseWrapperController.courseTitle,
        isTeachingAssistant: courseWrapperController.isTeachingAssistant,
        isOwner: courseWrapperController.isCourseOwner,
        onUpdate: courseWrapperController.isTeachingAssistant
            ? () => _handleUpdateCourse(courseWrapperController)
            : null,
        onCreate: courseWrapperController.isTeachingAssistant
            ? () => _handleCreateCourse(courseWrapperController)
            : null,
        onDelete: courseWrapperController.isCourseOwner
            ? () => _handleDeleteCourse(context, courseWrapperController)
            : null,
      );
    });
  }

  void _handleUpdateCourse(CourseWrapperController c) {
    if (c.canUpdateCourse()) {
      c.prepareUpdateCourse();
      Get.toNamed(AppRoute.updateCourse, parameters: {'courseId': c.courseId});
    }
  }

  void _handleCreateCourse(CourseWrapperController c) {
    Get.toNamed(AppRoute.createCourseSession,
        parameters: {'courseId': c.courseId});
  }

  void _handleDeleteCourse(BuildContext context, CourseWrapperController c) {
    if (c.courseId.isNotEmpty) {
      final deleteWrapper = DeleteCourseWrapperWidget(
        courseId: c.courseId,
        courseTitle: c.courseTitle,
      );
      deleteWrapper.handleDelete(context);
    }
  }
}
