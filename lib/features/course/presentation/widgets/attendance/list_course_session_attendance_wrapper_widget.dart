import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/course/presentation/controllers/controller.dart';
import 'package:mobile/features/course/presentation/widgets/attendance/course_session_attendance_item_widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ListCourseSessionAttendanceWrapperWidget extends StatelessWidget {
  final ListCourseSessionAttendanceController controller;
  final void Function(Map<String, dynamic>? result)? onMarkAttendance;
  const ListCourseSessionAttendanceWrapperWidget({
    super.key,
    required this.controller,
    this.onMarkAttendance,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Obx(
        () => customSkeletonizerHandler(
            context: context,
            state: controller.state,
            feature: 'course',
            customErrorMessage: controller.stateDescription,
            customTitle: 'course'.message('attendanceRecordsEmpty'),
            onSuccess: () => _buildAttendanceList(context)),
      ),
    );
  }

  Widget _buildAttendanceList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Column(
        children: [
          Obx(() {
            if (!controller.hasFiltersApplied) return const SizedBox.shrink();

            return FilterIndicatorSection(
              text: controller.filtersDescription,
              onClear: () => controller.clearFilters(),
            );
          }),
          Obx(() {
            final attendanceList = controller.attendanceList;
            final isLoadingMore = controller.isLoadingMore.value;
            final courseId = controller.courseId.value;
            final sessionId = controller.sessionId.value;

            return Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: attendanceList.length,
                  itemBuilder: (context, index) {
                    final attendance = attendanceList[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: CourseSessionAttendanceItemWidget(
                        showStudent: true,
                        showAction: true,
                        attendance: attendance,
                        courseId: courseId,
                        sessionId: sessionId,
                        onMarkAttendance: onMarkAttendance,
                      ),
                    );
                  },
                ),
                if (isLoadingMore)
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: CustomPrimaryLoadingWidget(),
                    ),
                  ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
