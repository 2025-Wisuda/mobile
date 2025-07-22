import 'package:flutter/material.dart';

import 'package:mobile/features/duty/domain/entities/entity.dart';
import 'package:mobile/features/duty/domain/_enums/enum.dart';
import 'package:mobile/features/user/presentation/widgets/widget.dart';
import 'package:mobile/shared/widgets/widget.dart';

class DutyScheduleItemWidget extends StatelessWidget {
  final DutyScheduleEntity schedule;

  const DutyScheduleItemWidget({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return UserCardItemWidget(
      name: schedule.nameStr,
      subtitle: null,
      imageUrl: schedule.avatar,
      trailing: schedule.status != null
          ? _buildStatusBadge(context, schedule.status!)
          : null,
      showBorder: true,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
      margin: EdgeInsets.zero,
    );
  }

  Widget _buildStatusBadge(BuildContext context, String status) {
    final statusEnum = DutyAttendanceStatusEnum.fromString(status) ??
        DutyAttendanceStatusEnum.scheduled;

    return CardSectionHelpers.statusBadge(
      context,
      label: statusEnum.getStatusText(isPast: false),
      backgroundColor: statusEnum.getStatusColor(context, isPast: false),
      textColor: statusEnum.getStatusTextColor(context, isPast: false),
      size: StatusBadgeSize.medium,
    );
  }
}
