import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/core/routes/route.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/shared/widgets/widget.dart';

class CourseNavigationHelper {
  static void handleCourseNavigation(
    BuildContext context,
    CourseEntity course,
  ) {
    final courseId = course.id ?? '0';

    if (course.isParticipant == true) {
      _navigateToDetailCourse(courseId);
      return;
    }

    if (course.hasEnrollment == false) {
      _navigateToDetailCourse(courseId);
      return;
    }

    if (course.hasEnrollment == true && course.isEnrollmentOpen == true) {
      Get.toNamed(
        AppRoute.enrollCourse,
        parameters: {'courseId': courseId},
        arguments: {'courseEntity': course},
      );
      return;
    }

    _showEnrollmentClosedDialog(context, course);
  }

  static void _navigateToDetailCourse(String courseId) {
    Get.toNamed(
      AppRoute.detailCourse,
      parameters: {'courseId': courseId},
    );
  }

  static void _showEnrollmentClosedDialog(
    BuildContext context,
    CourseEntity course,
  ) {
    showCustomConfirmDialog(
      context: context,
      title: 'Enrollment Closed',
      message:
          'Enrollment for "${course.title}" is currently closed.\n Please contact your instructor for more information.',
      confirmText: '',
      onConfirm: () {},
      type: DialogType.info,
      icon: Icons.construction_outlined,
      showCloseButton: true,
      showActions: false,
    );
  }
}
