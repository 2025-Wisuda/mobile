import 'package:flutter/material.dart';

import 'package:mobile/features/duty_schedule/domain/entities/entity.dart';
import 'package:mobile/features/duty_schedule/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/theme_color_extension.dart';

class DutyScheduleListItemWidget extends StatelessWidget {
  final bool isShowDivider;
  final List<DutyScheduleEntity> schedules;
  const DutyScheduleListItemWidget({
    super.key,
    required this.schedules,
    this.isShowDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int index = 0; index < schedules.length; index++) ...[
          DutyScheduleItemWidget(schedule: schedules[index]),
          if (index < schedules.length - 1 && isShowDivider)
            Divider(
              height: 8,
              color: context.secondary.withValues(alpha: 0.5),
            ),
        ],
      ],
    );
  }
}
