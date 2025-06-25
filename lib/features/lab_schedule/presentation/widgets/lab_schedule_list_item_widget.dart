import 'package:flutter/material.dart';

import 'package:mobile/features/lab_schedule/domain/entities/lab_schedule_entity.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/lab_schedule_item_widget.dart';

class LabScheduleListItemWidget extends StatelessWidget {
  final bool isShowDate;
  final bool isShowDuration;
  final List<LabScheduleEntity> schedules;

  const LabScheduleListItemWidget({
    super.key,
    required this.schedules,
    this.isShowDate = false,
    this.isShowDuration = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: schedules.length,
      separatorBuilder: (context, index) => const Divider(
        height: 8,
      ),
      itemBuilder: (context, index) {
        return LabScheduleItemWidget(
          schedule: schedules[index],
          isShowDate: isShowDate,
          isShowDuration: isShowDuration,
        );
      },
    );
  }
}
