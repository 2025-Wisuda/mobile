import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/features/duty/presentation/controllers/controller.dart';
import 'package:mobile/features/duty/presentation/widgets/widget.dart';
import 'package:mobile/shared/enums/enum.dart';
import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/state/state.dart';

class ListDutyScheduleWrapperWidget extends StatelessWidget {
  final ListDutyScheduleController controller;
  final int currentIndex;
  final List<String> days;

  const ListDutyScheduleWrapperWidget({
    super.key,
    required this.controller,
    required this.currentIndex,
    required this.days,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final state = controller.state;
      return customSkeletonizerHandler(
        context: context,
        state: state,
        feature: 'dutySchedule',
        customErrorMessage: controller.stateDescription,
        customIcon: state == FetchStateEnum.empty ? Icons.schedule : null,
        customSubtitle: state == FetchStateEnum.empty
            ? 'dutySchedule'.message('tryDifferentDay')
            : null,
        onSuccess: () => _buildLoadedWidget(),
      );
    });
  }

  Widget _buildLoadedWidget() {
    if (currentIndex < 0 || currentIndex >= days.length) {
      return const SizedBox.shrink();
    }
    final allSchedules = controller.dutyScheduleList
        .expand((item) => item.laboratoryAssistant ?? <DutyScheduleEntity>[])
        .toList();
    return DutyScheduleListItemWidget(
      schedules: allSchedules,
    );
  }
}
