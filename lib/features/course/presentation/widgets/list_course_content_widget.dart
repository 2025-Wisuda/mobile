// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';

// Project imports:
import 'package:mobile/core/enums/states/state.dart';
import 'package:mobile/features/course/course.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/routes/route.dart';
import 'package:mobile/shared/widgets/widget.dart';

Widget listCourseContentWidget({
  required BuildContext context,
  required FetchStateEnum state,
  required CourseController courseController,
  required List<CourseEntity> courses,
}) {
  final isGrid = courseController.isGridView.value;
  final gridWidget = CourseGridListWidget(courses: courses);
  final listWidget = CourseListItemWidget(courses: courses);
  final errorMessage = courseController.errorMessage.value;
  final emptyMessage = i18n.tr('features.course.text.youDidntEnrollCourse');
  final enroll = i18n.tr('features.course.text.letsEnrollNewCourse');
  final height = context.sHeight;
  final content = isGrid ? gridWidget : listWidget;
  final loadingWidget =
      courses.isEmpty ? Skeletonizer(child: content) : content;
  final errorWidget = errorEmptyTextWidget(context, message: errorMessage);
  final loadedWidget = Column(
    spacing: 8,
    children: [_header(context, courseController: courseController), content],
  );
  final emptyWidget = SizedBox(
    height: height,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        errorEmptyTextWidget(context, message: emptyMessage),
        TextButton(
          onPressed: () {
            Get.toNamed(AppRoute.allCourse);
            courseController.fetchListCourse(
              filterParams: CourseFilterParamsModel(page: 1, pageSize: 10),
              stateTarget: courseController.fetchListCourseState,
            );
          },
          child: Text(
            enroll,
            style: context.bodyMediumW(600).copyWith(color: context.primary),
          ),
        ),
      ],
    ).pb(height * 0.2),
  );

  return state.toWidget(
    loadingWidget: loadingWidget,
    loadedWidget: loadedWidget,
    emptyWidget: emptyWidget,
    errorWidget: errorWidget,
    initialWidget: loadingWidget,
  );
}

Widget _header(
  BuildContext context, {
  required CourseController courseController,
}) {
  final seeAll = i18n.tr('features.course.button.seeAll');

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    spacing: 8,
    children: [
      Obx(
        () => IconButton(
          color: context.surface,
          onPressed: () {
            courseController.isGridView.value =
                !courseController.isGridView.value;
          },
          icon: Icon(
            courseController.isGridView.value
                ? Icons.view_list
                : Icons.grid_view,
          ),
          style: ElevatedButton.styleFrom(backgroundColor: context.onSurface),
        ),
      ),
      TextButton(
        onPressed: () {
          Get.toNamed(AppRoute.allCourse);
          courseController.fetchListCourse(
            filterParams: CourseFilterParamsModel(page: 1, pageSize: 10),
            stateTarget: courseController.fetchListCourseState,
          );
        },
        child: Text(
          seeAll,
          style: context.bodyMediumW(600).copyWith(color: context.primary),
        ),
      ),
    ],
  );
}
