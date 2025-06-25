import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ListLabScheduleAppBarWidget extends StatelessWidget {
  final bool isMySchedule;
  final VoidCallback onToggle;
  const ListLabScheduleAppBarWidget({
    super.key,
    required this.isMySchedule,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSliverAppBarWithBorder(
      centerTitle: false,
      toolbarHeight: 76,
      pinned: true,
      showBackButton: false,
      title: 'labSchedule'.menu(),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          child: CustomTertiaryToggleWidget(
            firstOption: 'common'.message('me'),
            secondOption: 'common'.message('all'),
            isFirstSelected: isMySchedule,
            onToggle: onToggle,
          ),
        ),
      ],
    );
  }
}
