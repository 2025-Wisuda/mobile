// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/core/enums/states/fetch_state_enum.dart';
import 'package:mobile/features/course/domain/entities/entity.dart';
import 'package:mobile/features/course/presentation/controllers/course_controller.dart';
import 'package:mobile/features/course/presentation/widgets/course_detail_widget.dart';
import 'package:mobile/features/course/presentation/widgets/course_enrollment_overlay_widget.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailCourseWrapperWidget extends StatelessWidget {
  final String courseId;

  const DetailCourseWrapperWidget({super.key, required this.courseId});

  @override
  Widget build(BuildContext context) {
    final courseController = Get.find<CourseController>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      courseController.fetchCourseDetail(courseId: courseId);
    });
    return Obx(() {
      final state = courseController.fetchCourseDetailState.value;
      final course = courseController.courseEntity.value;
      final errorMessage = courseController.errorMessage.value;
      final emptyMessage = i18n.tr('features.course.fetchCourseDetail.empty');
      final userId = courseController.userId.value;
      final teachingAssistantId =
          course?.teachingAssistants?.map((e) => e.id).toList() ?? [];
      final students = course?.students?.map((e) => e.id).toList() ?? [];
      final emptyWidget = errorEmptyTextWidget(context, message: emptyMessage);
      final errorWidget = errorEmptyTextWidget(context, message: errorMessage);
      final loadingWidget = Center(child: customLoadingWidget);
      if (state == FetchStateEnum.loaded) {
        final isUserAuthorized =
            teachingAssistantId.contains(userId) || students.contains(userId);
        final loadedWidget =
            isUserAuthorized
                ? CourseDetailWidget(course: course ?? CourseEntity())
                : EnrollmentOverlay(courseId: courseId);

        return loadedWidget;
      }

      return state.toWidget(
        loadingWidget: loadingWidget,
        loadedWidget: const SizedBox(),
        emptyWidget: emptyWidget,
        errorWidget: errorWidget,
      );
    }).pt(8);
  }
}
