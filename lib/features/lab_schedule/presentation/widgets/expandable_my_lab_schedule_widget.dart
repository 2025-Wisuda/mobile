import 'package:flutter/material.dart';

import 'package:mobile/features/lab_schedule/domain/entities/entity.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/widget.dart';
import 'package:mobile/shared/extensions/extension.dart';

class ExpandableMyLabScheduleWidget extends StatefulWidget {
  final List<LabScheduleEntity> schedules;

  const ExpandableMyLabScheduleWidget({super.key, required this.schedules});

  @override
  State<ExpandableMyLabScheduleWidget> createState() =>
      _ExpandableMyLabScheduleWidgetState();
}

class _ExpandableMyLabScheduleWidgetState
    extends State<ExpandableMyLabScheduleWidget> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    final showSchedules = expanded
        ? widget.schedules
        : (widget.schedules.isNotEmpty ? [widget.schedules.first] : []);

    final String seeMore = 'home'.message('labSchedule.seeMore');
    final String seeLess = 'home'.message('labSchedule.seeLess');

    return Column(
      children: [
        ...showSchedules.map((schedule) => LabScheduleItemWidget(
              schedule: schedule,
              isShowDate: false,
              isShowDuration: false,
            )),
        if (widget.schedules.length > 1)
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () => setState(() => expanded = !expanded),
              style: TextButton.styleFrom(
                padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(
                expanded ? seeLess : '$seeMore (${widget.schedules.length})',
                style: context.bodySmallW(500),
              ),
            ),
          ),
      ],
    );
  }
}
