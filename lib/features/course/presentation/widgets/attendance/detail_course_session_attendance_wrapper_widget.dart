import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

import 'package:mobile/features/course/course.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailCourseSessionAttendanceWrapperWidget extends StatelessWidget {
  final DetailCourseSessionAttendanceController controller;

  const DetailCourseSessionAttendanceWrapperWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Obx(() {
      final state = controller.state;
      final attendance = controller.entity.value;
      final errorMessage = controller.stateDescription;

      switch (state) {
        case FetchStateEnum.loading:
          return Center(child: CustomPrimaryLoadingWidget());
        case FetchStateEnum.failure:
          return customErrorEmptyTextWidget(context, message: errorMessage);
        case FetchStateEnum.empty:
          return customErrorEmptyTextWidget(context,
              message: i18n.tr(
                  'features.courseSession.fetchCourseSessionAttendanceDetail.empty'));
        case FetchStateEnum.success:
          return DetailCourseSessionAttendanceWidget(
              attendance: attendance ?? CourseSessionAttendanceEntity());
        default:
          return SizedBox.shrink();
      }
    });
  }
}
