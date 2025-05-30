// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/core/enums/states/fetch_state_enum.dart';
import 'package:mobile/features/course/data/models/model.dart';
import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/widget.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';

Widget courseScrollableLayoutWidget({
  required BuildContext context,
  required BoxConstraints constraints,
  required Widget content,
  required CourseController courseController,
  required bool isLoadingMore,
  required FetchStateEnum state,
  bool isShowActionButton = true,
}) {
  return NotificationListener<ScrollNotification>(
    onNotification: (scrollInfo) {
      if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent &&
          !isLoadingMore &&
          state != FetchStateEnum.loading) {
        courseController.fetchListCourse(
          filterParams: CourseFilterParamsModel(
            page: courseController.currentPage.value,
            pageSize: 10,
          ),
          isLoadMore: true,
          stateTarget: courseController.fetchListCourseState,
        );
      }
      return false;
    },
    child: Scrollbar(
      thumbVisibility: false,
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (isShowActionButton)
                  courseActionButtonWrapperWidget(context),
                if (isShowActionButton) const SizedBox(height: 16),
                content,
                if (isLoadingMore)
                  Center(child: CircularProgressIndicator().py(16)),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
