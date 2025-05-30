// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:skeletonizer/skeletonizer.dart';

// Project imports:
import 'package:mobile/core/enums/states/fetch_state_enum.dart';
import 'package:mobile/features/course/course.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';
import 'package:mobile/shared/widgets/text/error_empty_text_widget.dart';

Widget allCourseContentWidget({
  required BuildContext context,
  required FetchStateEnum state,
  required CourseController courseController,
  required List<CourseEntity> courses,
}) {
  final isGrid = courseController.isGridView.value;
  final gridWidget = CourseGridListWidget(courses: courses);
  final listWidget = CourseListItemWidget(courses: courses);
  final errorMessage = courseController.errorMessage.value;
  final emptyMessage = i18n.tr('features.course.searchCourse.empty');
  final loadedWidget = isGrid ? gridWidget : listWidget;
  final loadingWidget =
      courses.isEmpty ? Skeletonizer(child: loadedWidget) : loadedWidget;
  final emptyWidget = Center(
    child: errorEmptyTextWidget(context, message: emptyMessage),
  );
  final errorWidget = Center(
    child: errorEmptyTextWidget(context, message: errorMessage),
  );

  return state.toWidget(
    loadingWidget: loadingWidget,
    loadedWidget: loadedWidget,
    emptyWidget: emptyWidget,
    errorWidget: errorWidget,
    initialWidget: loadingWidget,
  );
}
