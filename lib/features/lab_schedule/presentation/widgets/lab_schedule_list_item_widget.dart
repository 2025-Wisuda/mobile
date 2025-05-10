import 'package:flutter/material.dart';
import 'package:mobile/features/lab_schedule/lab_schedule.dart';

class LabScheduleListItemWidget extends StatelessWidget {
  final List<LabScheduleEntity> schedules;

  const LabScheduleListItemWidget({super.key, required this.schedules});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: schedules.length,
      separatorBuilder: (_, __) => const Divider(height: 16),
      itemBuilder: (context, index) {
        return LabScheduleItemWidget(schedule: schedules[index]);
      },
    );
  }
}
