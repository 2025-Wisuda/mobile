import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/duty/presentation/controllers/controller.dart';
import 'package:mobile/features/duty/presentation/widgets/attendance/attendance_records_item_widget.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class MyAttendanceRecordsWrapperWidget extends StatelessWidget {
  final MyAttendanceRecordsController controller;
  const MyAttendanceRecordsWrapperWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Obx(() {
        return customSkeletonizerHandler(
          context: context,
          state: controller.state,
          feature: 'dutySchedule',
          customErrorMessage: controller.stateDescription,
          customTitle: 'dutySchedule'.message('myDutyAttendanceEmpty'),
          onSuccess: () => _buildAttendanceList(context),
        );
      }),
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
                      child: AttendanceRecordsItemWidget(
                        showAssistant: true,
                        attendance: attendance,
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
