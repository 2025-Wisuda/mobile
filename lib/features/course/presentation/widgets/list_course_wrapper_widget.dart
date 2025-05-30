// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/features/course/course.dart';
import 'package:mobile/shared/helpers/helper.dart';

class ListCourseWrapperWidget extends StatelessWidget {
  const ListCourseWrapperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();
    Future.microtask(() {
      final userId = courseController.userId.value;
      if (userId.isNotEmpty) {
        courseController.executeFetchListCourseAlreadyEnroll();
      }
    });

    return LayoutBuilder(
      builder: (context, constraints) {
        return Obx(() {
          final state = courseController.filterCourseState.value;
          final courses = courseController.listCourseEntity.value?.data ?? [];
          final isLoadingMore = courseController.isLoadingMore.value;

          final content = listCourseContentWidget(
            context: context,
            state: state,
            courseController: courseController,
            courses: courses,
          );

          return ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: courseScrollableLayoutWidget(
              context: context,
              constraints: constraints,
              content: content,
              courseController: courseController,
              isLoadingMore: isLoadingMore,
              state: state,
              isShowActionButton: false,
            ),
          );
        });
      },
    ).pt(8);
  }
}
