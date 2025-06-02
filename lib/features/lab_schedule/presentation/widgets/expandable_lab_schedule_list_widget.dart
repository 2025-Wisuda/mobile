// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mobile/features/lab_schedule/domain/entities/lab_schedule_entity.dart';
import 'package:mobile/features/lab_schedule/presentation/widgets/lab_schedule_item_widget.dart';
import 'package:mobile/shared/helpers/extensions/extension.dart';

class ExpandableLabScheduleListWidget extends StatefulWidget {
  final List<LabScheduleEntity> schedules;

  const ExpandableLabScheduleListWidget({super.key, required this.schedules});

  @override
  State<ExpandableLabScheduleListWidget> createState() =>
      _ExpandableLabScheduleListWidgetState();
}

class _ExpandableLabScheduleListWidgetState
    extends State<ExpandableLabScheduleListWidget> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    final showSchedules =
        expanded
            ? widget.schedules
            : (widget.schedules.isNotEmpty ? [widget.schedules.first] : []);
    return Column(
      children: [
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: showSchedules.length,
          separatorBuilder: (_, __) => const SizedBox(height: 2),
          itemBuilder: (context, index) {
            return LabScheduleItemWidget(schedule: showSchedules[index]);
          },
        ),
        if (widget.schedules.length > 1)
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () => setState(() => expanded = !expanded),
              child: Text(
                expanded
                    ? 'Tampilkan lebih sedikit'
                    : 'Tampilkan semua (${widget.schedules.length})',
                style: context.bodyMediumW(600),
              ),
            ),
          ),
      ],
    );
  }
}
