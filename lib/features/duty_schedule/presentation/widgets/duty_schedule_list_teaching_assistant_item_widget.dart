// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';
import 'package:mobile/features/duty_schedule/presentation/widgets/widget.dart';

class DutyScheduleListTeachingAssistantItemWidget extends StatelessWidget {
  final List<DutyScheduleEntity> schedules;

  const DutyScheduleListTeachingAssistantItemWidget({
    super.key,
    required this.schedules,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: schedules.length,
      itemBuilder: (context, index) {
        return DutyScheduleTeachingAssistantItemWidget(
          schedule: schedules[index],
        );
      },
    );
  }
}
