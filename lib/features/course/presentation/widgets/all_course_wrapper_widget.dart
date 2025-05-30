// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/course/course.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';

class AllCourseWrapperWidget extends StatelessWidget {
  const AllCourseWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();
    return LayoutBuilder(
      builder: (context, constraints) {
        return Obx(() {
          final state = courseController.fetchListCourseState.value;
          final courses = courseController.listCourseEntity.value?.data ?? [];
          final isLoadingMore = courseController.isLoadingMore.value;

          final content = allCourseContentWidget(
            context: context,
            state: state,
            courseController: courseController,
            courses: courses,
          );

          return courseScrollableLayoutWidget(
            context: context,
            constraints: constraints,
            content: content,
            courseController: courseController,
            isLoadingMore: isLoadingMore,
            state: state,
          );
        });
      },
    ).pt(8);
  }
}
