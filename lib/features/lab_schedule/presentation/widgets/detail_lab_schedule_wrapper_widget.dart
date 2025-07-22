import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart' as i18n;
import 'package:get/get.dart';

import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/presentation/controllers/controller.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DetailLabScheduleWrapperWidget extends StatelessWidget {
  final DetailLabScheduleController controller;
  final String labScheduleId;

  const DetailLabScheduleWrapperWidget({
    super.key,
    required this.labScheduleId,
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
      final schedule = controller.entity.value;
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
              'features.labSchedule.fetchLabScheduleDetail.empty',
            ),
          );
        case FetchStateEnum.success:
          return DetailLabScheduleSection(
            schedule: schedule ?? LabScheduleEntity(),
          );
        default:
          return SizedBox.shrink();
      }
    });
  }
}
