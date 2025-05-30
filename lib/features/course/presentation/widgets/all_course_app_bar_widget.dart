// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:mobile/core/enums/states/fetch_state_enum.dart';
import 'package:mobile/features/course/data/models/course_filter_params_model.dart';
import 'package:mobile/features/course/presentation/controllers/course_controller.dart';
import 'package:mobile/features/course/presentation/widgets/search_course_form_widget.dart';
import 'package:mobile/shared/helpers/helper.dart';
import 'package:mobile/shared/widgets/app_bar/custom_app_bar_widget.dart';

class AllCourseAppBarWidget extends StatelessWidget {
  const AllCourseAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = context.sWidth;

    final courseController = Get.find<CourseController>();

    return CustomUserAppBarWidget(
      onTapBackButton: () {
        courseController.clearSearchCourse();
        courseController.fetchListCourseState.value = FetchStateEnum.initial;
        Future.microtask(() {
          courseController.fetchUserId();
          final userId = courseController.userId.value;
          if (userId.isNotEmpty) {
            courseController.fetchListCourse(
              filterParams: CourseFilterParamsModel(
                page: 1,
                pageSize: 10,
                userId: userId,
              ),
              stateTarget: courseController.filterCourseState,
            );
          }
        });
      },
      actionButton: Obx(
        () => Row(
          spacing: 8,
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: width * 0.9 - 120),

              child: SearchCourseFormWidget(),
            ),
            IconButton(
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
              style: ElevatedButton.styleFrom(
                backgroundColor: context.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
