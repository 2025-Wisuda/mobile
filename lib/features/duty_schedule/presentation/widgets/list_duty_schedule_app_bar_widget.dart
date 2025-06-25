import 'package:flutter/material.dart';

import 'package:mobile/shared/extensions/extension.dart';
import 'package:mobile/shared/widgets/widget.dart';

class ListDutyScheduleAppBarWidget extends StatelessWidget {
  const ListDutyScheduleAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBarWithBorder(title: 'dutySchedule'.menu());
  }
}
