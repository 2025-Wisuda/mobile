// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/features/lab_schedule/domain/entities/lab_schedule_entity.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/lab_schedule_item_widget.dart';

class LabScheduleListItemWidget extends StatelessWidget {
  final List<LabScheduleEntity> schedules;

  const LabScheduleListItemWidget({super.key, required this.schedules});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: schedules.length,
      separatorBuilder: (_, __) => const SizedBox(height: 2),
      itemBuilder: (context, index) {
        return LabScheduleItemWidget(schedule: schedules[index]);
      },
    );
  }
}
