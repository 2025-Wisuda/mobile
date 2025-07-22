import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/features/duty/presentation/controllers/controller.dart';
import 'package:mobile/features/duty/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailDutyAttendanceWrapperWidget extends StatelessWidget {
  final DetailDutyAttendanceController controller;
  const DetailDutyAttendanceWrapperWidget({
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
      final dutyAttendance = controller.entity.value;
      final state = controller.state;
      final errorMessage = controller.stateDescription;
      switch (state) {
        case FetchStateEnum.loading:
          return Center(child: CustomPrimaryLoadingWidget());
        case FetchStateEnum.failure:
          return customErrorEmptyTextWidget(
            context,
            message: errorMessage,
          );
        case FetchStateEnum.empty:
          return customErrorEmptyTextWidget(
            context,
            message: i18n.tr(
              'features.dutySchedule.fetchDutyAttendanceDetail.empty',
            ),
          );
        case FetchStateEnum.success:
          return DetailDutyAttendanceWidget(
            dutyAttendance: dutyAttendance ?? DutyAttendanceEntity(),
          );

        default:
          return SizedBox.shrink();
      }
    });
  }
}
